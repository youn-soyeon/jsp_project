package Day36;

//HangulServlet doGet()1������ ���
public class HangulUtil {
	public static String toKor(String eng){
		try{
			//eng.getBytes("8859_1") : �ѱ��� �ٸ��� �Էµǵ��� ���ڵ��Ѵ�
			return new String(eng.getBytes("8859_1"),"euc-kr");
		} catch(Exception e){
			return null;
		}
	}
}
