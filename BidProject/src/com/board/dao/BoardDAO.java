package com.board.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.board.dto.BoardDTO;


@Repository
public class BoardDAO {
		
	@Autowired
	private SqlSessionFactory factory;

	public List<BoardDTO> boardList() {


		return factory.openSession().selectList("boardNameSpace.boardlist");
	}
	
	
	
	/*private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	private static BoardDAO instance;
	
	public static BoardDAO getInstance(){
		if(instance==null){
			synchronized(BoardDAO.class){
				instance = new BoardDAO();
			}			
		}
		return instance;
	}
	
	public BoardDAO(){
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/ora");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public void boardInsert(BoardDTO boardDto){//원글
                       //seq,id,name,email,subject,content,ref,lev,step,pseq,reply,hit,logtime		
		String sql = "insert into board values(seq_board.nextval,?,?,?,?,?,seq_board.currval,0,0,0,0,0,sysdate)";
			
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, boardDto.getId());
			pstmt.setString(2, boardDto.getName());
			pstmt.setString(3, boardDto.getEmail());
			pstmt.setString(4, boardDto.getSubject());
			pstmt.setString(5, boardDto.getContent());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
		
	}
	
	public ArrayList<BoardDTO> getBoardList(int pg){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		String sql = "select seq,id,name,email,subject,content,"
				+ "ref,lev,step,pseq,reply,hit,to_char(logtime,'YYYY.MM.DD')as logtime from"
				+ "(select rownum rn, aa.* from"
				+ "(select * from board order by ref desc,step asc)aa"
				+ ") where rn>=? and rn<=?";
		
		int endNum = pg*5;
		int startNum = endNum-4;
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, endNum);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				BoardDTO boardDto = new BoardDTO();
				boardDto.setSeq(rs.getInt("seq"));
				boardDto.setId(rs.getString("id"));
				boardDto.setName(rs.getString("name"));
				boardDto.setEmail(rs.getString("email"));
				boardDto.setSubject(rs.getString("subject"));
				boardDto.setContent(rs.getString("content"));
				boardDto.setRef(rs.getInt("ref"));
				boardDto.setLev(rs.getInt("lev"));
				boardDto.setStep(rs.getInt("step"));
				boardDto.setPseq(rs.getInt("pseq"));
				boardDto.setReply(rs.getInt("reply"));
				boardDto.setHit(rs.getInt("hit"));
				boardDto.setLogtime(rs.getString("logtime"));
				
				list.add(boardDto);
			}		
			
		} catch (SQLException e) {
			e.printStackTrace();
			list = null;
		}finally{
			DBClose.close(conn, pstmt, rs);
		}
		
		return list;
	}

	public int getTotalArticle() {
		int totalA=0;
		String sql = "select count(*) from board";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			totalA = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);
		}
		
		return totalA;
	}

	public BoardDTO getBoard(int seq){
		BoardDTO boardDto = null;
		String sql = "select * from board where seq=?";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				boardDto = new BoardDTO();
				boardDto.setSeq(rs.getInt("seq"));
				boardDto.setId(rs.getString("id"));
				boardDto.setName(rs.getString("name"));
				boardDto.setEmail(rs.getString("email"));
				boardDto.setSubject(rs.getString("subject"));
				boardDto.setContent(rs.getString("content"));
				boardDto.setRef(rs.getInt("ref"));
				boardDto.setLev(rs.getInt("lev"));
				boardDto.setStep(rs.getInt("step"));
				boardDto.setPseq(rs.getInt("pseq"));
				boardDto.setReply(rs.getInt("reply"));
				boardDto.setHit(rs.getInt("hit"));
				boardDto.setLogtime(rs.getString("logtime"));
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);
		}
		
		return boardDto;
		
	}
	
	public void boardUpdate(int seq,String subject,String content){
		String sql = "update board set subject=?,content=? where seq=?";
		
		try {
			conn=ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, subject);
			pstmt.setString(2, content);
			pstmt.setInt(3, seq);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
	}
	
	public void boardReply(BoardDTO boardDto){
		BoardDTO pDto = this.getBoard(boardDto.getPseq());//원글
			
		try {
			conn=ds.getConnection();
			//step(글순서) update
			String step_sql = "update board set step=step+1 where ref=? and step>?";
			pstmt = conn.prepareStatement(step_sql);
			pstmt.setInt(1, pDto.getRef());
			pstmt.setInt(2, pDto.getStep());
			pstmt.executeUpdate();
			pstmt.close();
	
//seq,id,name,email,subject,content,ref,lev,step,pseq,reply,hit,logtime
			String sql = "insert into board values(seq_board.nextval,?,?,?,?,?,?,?,?,?,0,0,sysdate)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardDto.getId());
			pstmt.setString(2, boardDto.getName());
			pstmt.setString(3, boardDto.getEmail());
			pstmt.setString(4, boardDto.getSubject());
			pstmt.setString(5, boardDto.getContent());
			pstmt.setInt(6, pDto.getRef());
			pstmt.setInt(7, pDto.getLev()+1);
			pstmt.setInt(8, pDto.getStep()+1);
			pstmt.setInt(9, pDto.getSeq());//원글번호 - boardDto.getPseq()
			pstmt.executeUpdate();
			pstmt.close();
			
			//reply(답글수) update
			String reply_sql = "update board set reply=reply+1 where seq=?";
			pstmt = conn.prepareStatement(reply_sql);
			pstmt.setInt(1, pDto.getSeq());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
	}
	
	public void boardDelete(int seq){
		String reply_sql="update board set reply=reply-1 "
				+ "where seq=(select pseq from board where seq=?)";		
		String subject_sql="update board set subject='[원글이 삭제된 답글]'||subject where pseq=?";
		String sql="delete board where seq=?";
			
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(reply_sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			pstmt.close();
			
			pstmt=conn.prepareStatement(subject_sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			pstmt.close();
			
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
	}
	
	public void updateHit(int seq){
		String sql = "update board set hit=hit+1 where seq=?";
		
		try {
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt);
		}
	}*/


}














