package action;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardFrontController
	extends javax.servlet.http.HttpServlet
	implements javax.servlet.Servlet {
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		ActionForward forward = null;
		Action action=null;
		
		if(command.equals("/BoardWrite.bo")){
			forward = new ActionForward();
			forward.setRediret(false);
			forward.setPath("./board/qna_board_write.jsp");
		} else if(command.equals("/BoardReplyAction.bo")){
			
		}
	}
}
