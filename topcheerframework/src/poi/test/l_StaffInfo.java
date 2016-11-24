package poi.test;

public class l_StaffInfo {
	private Integer id;
	private String age;
	private String sex;
	private String xueli;
	private String serviceAge;
	private String department;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getXueli() {
		return xueli;
	}
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	public String getServiceAge() {
		return serviceAge;
	}
	public void setServiceAge(String serviceAge) {
		this.serviceAge = serviceAge;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public l_StaffInfo(Integer id, String age, String sex, String xueli,
			String serviceAge, String department) {
		super();
		this.id = id;
		this.age = age;
		this.sex = sex;
		this.xueli = xueli;
		this.serviceAge = serviceAge;
		this.department = department;
	}
	public l_StaffInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
