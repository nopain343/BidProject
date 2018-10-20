package com.board.dao;

import com.board.dao.BoardDAO;

public class BoardPaging {
	int currentPage;// ����������
	int pageBlock;   // [����][1][2][3][����]
	int pageSize;     // 1�������� 5���� �� �Ѹ���
	StringBuffer pagingHTML;
	
	public BoardPaging(int currentPage, int pageBlock, int pageSize) {
		this.currentPage = currentPage;
		this.pageBlock = pageBlock;
		this.pageSize = pageSize;
	}
	
	public void makePagingHTML(){
		pagingHTML=new StringBuffer();
		
		BoardDAO boardDAO=BoardDAO.getInstance();
		int totalA=boardDAO.getTotalArticle();//�ѱۼ�			
		int totalP=(totalA+pageSize-1)/pageSize;//����������
	
		int startPage=
				((int)((currentPage-1)/pageBlock))*pageBlock+1;		
		
		int endPage=startPage+pageBlock-1;
				
		if(endPage>totalP){
			endPage=totalP;
		}		
		
		//---------------------
		if(startPage>pageBlock){			
			pagingHTML.append("[<a href='/bbs/board/boardList.jsp?pg="
		+(startPage-pageBlock)+"'>"+"����</a>]");
		}		
		
		for(int i=startPage;i<=endPage;i++){
			if(currentPage==i){
				pagingHTML.append("[<a href='/bbs/board/boardList.jsp?pg="
			+i+"'><font color=red>"+i+"</font></a>]");
			
			}else{
				pagingHTML.append("[<a href='/bbs/board/boardList.jsp?pg="
			+i+"'>"+i+"</a>]");
			}
		}
				
		if(endPage<totalP){
			pagingHTML.append("[<a href='/bbs/board/boardList.jsp?pg="
		+(startPage+pageBlock)+"'>"+"����</a>]");
		}
	}
	
	public String getPagingHTML() {
		return pagingHTML.toString();
	}	
}









