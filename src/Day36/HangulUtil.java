package Day36;

//HangulServlet doGet()1번에서 사용
public class HangulUtil {
	public static String toKor(String eng){
		try{
			//eng.getBytes("8859_1") : 한글이 바르게 입력되도록 인코딩한다
			return new String(eng.getBytes("8859_1"),"euc-kr");
		} catch(Exception e){
			return null;
		}
	}
}
