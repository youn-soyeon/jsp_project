package Day36;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/Day36/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		String id=request.getParameter("id");
		String passwd=request.getParameter("passwd");
		if(id.equals("java")&&passwd.equals("java")){
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			
			// �ٸ��������� �Ѱ��ִ� ����
			RequestDispatcher dispatcher= request.getRequestDispatcher("loginSuccess.jsp");
			dispatcher.forward(request, response);
		} else {
			out.println("<script>");
			out.println("alert('���̵� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
