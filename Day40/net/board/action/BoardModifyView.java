package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardBean;
import net.board.db.BoardDAO;


public class BoardModifyView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("euc-kr");

		BoardDAO boarddao = new BoardDAO();
		BoardBean boarddata = new BoardBean();

		int num = Integer.parseInt(request.getParameter("num"));
		boarddata = boarddao.getDetail(num);

		if (boarddata == null) {
			System.out.println("(����)�󼼺��� ����");
			return null;
		}

		System.out.println("(����)�󼼺��� ����");

		request.setAttribute("boarddata", boarddata);
		forward.setRediret(true);
		forward.setPath("./board/qna_board_modify.jsp");
		return forward;
	}

}
