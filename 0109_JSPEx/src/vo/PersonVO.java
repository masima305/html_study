package vo;

public class PersonVO {

	private String name;//이름
	private int age;
	private String tel;
	
	public PersonVO(String name, int age, String tel) {
		// TODO Auto-generated constructor stub
	
		this.name = name;
		this.age = age;
		this.tel = tel;
		
		
	
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getTel() {
		return tel;
	}
	
}
