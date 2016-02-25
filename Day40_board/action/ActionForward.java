package action;

public class ActionForward {
	private boolean isRediret = false;
	private String path = null;

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
