package com.category.vo;

import com.board.dao.BoardDAO;

public class CatogoryPaging {
	int page;// ����������
	int pageSize = 10;     // 1�������� 5���� �� �Ѹ���
	StringBuffer pagingHTML;

	
	public CatogoryPaging() {
		
	}
/*
	public void makePagingHTML(int total, int pg){
		pagingHTML=new StringBuffer();
		this.pg = pg;
		int totalA = total;//�ѱۼ�			
		int totalP=(totalA+pageSize-1)/pageSize;//����������
		int startPage=
				((int)((pg-1)/pageBlock))*pageBlock+1;		
		int endPage=startPage+pageBlock-1;
		if(endPage>totalP){
			endPage=totalP;
		}		
		
		//---------------------
		if(startPage>pageBlock){			
			pagingHTML.append("[<a href='qna.bd?pg="
		+(startPage-pageBlock)+"'>"+"����</a>]");
		}		
		
		for(int i=startPage;i<=endPage;i++){
			if(pg==i){
				pagingHTML.append("[<a href='qna.bd?pg="
			+i+"'><font color=red>"+i+"</font></a>]");
			
			}else{
				pagingHTML.append("[<a href='qna.bd?pg="
			+i+"'>"+i+"</a>]");
			}
		}
				
		if(endPage<totalP){
			pagingHTML.append("[<a href='qna.bd?pg="
		+(startPage+pageBlock)+"'>"+"����</a>]");
		}
	}
*/
	
}









