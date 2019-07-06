package test;

public class Account {
	
	private int accountId;
	private String userName;
	private String password;
	
	public int getAccountId(){
		return accountId;
	}
	public String getUserName(){
		return userName;
	}
	public String getPassword(){
		return password;
	}
	
	public void setAccountId(int accountId){
		this.accountId = accountId;
	}
	public void setUserName(String userName){
		this.userName = userName;
	}
	public void setPassword(String password){
		this.password = password;
	}	
	
}
