package test;

public class Employee {
	
	private int id;
	private int employeeNumber;
	private String firstName;
	private String lastName;
	private String title;
	public int getId(){
		return id;
	}
	public int getEmployeeNumber(){
		return employeeNumber;
	}
	public String getFirstName(){
		return firstName;
	}
	public String getLastName(){
		return lastName;
	}
	public String getTitle(){
		return title;
	}
	public void setId(int id){
		this.id = id;
	}
	public void setEmployeeNumber(int employeeNumber){
		this.employeeNumber = employeeNumber;
	}
	public void setFirstName(String firstName){
		this.firstName = firstName;
	}
	public void setLastName(String lastName){
		this.lastName = lastName;
	}
	public void setTitle(String title){
		this.title = title;
	}
	
	
}
