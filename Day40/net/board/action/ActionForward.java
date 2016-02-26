package net.board.action;

public class ActionForward {
	private boolean isRediret = false;
	private String path = null;

	//  제어권 넘기는 방법 - redirect, dispatch 두가지존재
	public boolean isRediret() {
		return isRediret;
	}

	public void setRediret(boolean b) {
		isRediret = b;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String string) {
		path = string;
	}
}
