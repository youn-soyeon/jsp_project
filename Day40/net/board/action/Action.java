package net.board.action;

import javax.servlet.http.*;

//Action�̶�� �̸��� �������̽�
//�������̽� - �ϳ��� ǥ���̳� �԰��� ������
// execute��� �޼��� ����. �� �޼���� ���� ���� ����θ� ������.
public interface Action {
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
