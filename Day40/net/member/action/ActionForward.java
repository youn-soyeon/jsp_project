package net.member.action;

public class ActionForward {
	private boolean isRedirect=false;	
	private String path = null;
	//url
	private String url=null;
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean b) {
		this.isRedirect = b;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String urlstring) {
		this.url = urlstring;
	}
	
	
}
