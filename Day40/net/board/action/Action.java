package net.board.action;

import javax.servlet.http.*;

//Action이라는 이름의 인터페이스
//인터페이스 - 하나의 표준이나 규격을 제공함
// execute라는 메서드 가짐. 이 메서드는 내용 없이 선언부만 가진다.
public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
