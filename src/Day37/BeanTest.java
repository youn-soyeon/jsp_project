package Day37;

public class BeanTest {
	// setter, getter 메서드가 반드시 존재해야 한다.
	// 접근 지정자는 public이어야 한다
	// getter메서드는 파라미터가 없다
	// setter메서드는 파라미터가 반드시 1개이상 존재해야 한다(생성자)
	private String name = "honggildong";

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
