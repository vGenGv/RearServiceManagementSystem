package javaBean;

public class Worker {
	private String workerID;
	private String DepID;
	private String workerPswd;
	private String workerName;
	private String workerGender;
	private String workerTel;
	private String workerClass;
	private String photo;
	private String workerMajor;
	private String reward;
	private String email;
	public Worker() {}
	public Worker(String workerID,String DepID,String workerPswd,String workerName,String workerGender,
			String workerTel,String workerClass,String photo,String workerMajor,String reward,String email) {
		this.workerID = workerID;
		this.DepID = DepID;
		this.workerPswd = workerPswd;
		this.workerName = workerName;
		this.workerGender = workerGender;
		this.workerTel = workerTel;
		this.workerClass = workerClass;
		this.photo = photo;
		this.workerMajor = workerMajor;
		this.reward = reward;
		this.email = email;
	}
	
	public String getemail() {
		return email;
	}
	
	public String getworkerID() {
		return workerID;
	}
	
	public String getDepID() {
		return DepID;
	}
	
	public String getworkerPswd() {
		return workerPswd;
	}
	
	public String getworkerName() {
		return workerName;
	}
	
	public String getworkerGender() {
		return workerGender;
	}
	
	public String getworkerTel() {
		return workerTel;
	}
	
	public String getworkerClass() {
		return workerClass;
	}
	
	public String getphoto() {
		return photo;
	}
	
	public String getworkerMajor() {
		return workerMajor;
	}
	
	public String getreward() {
		return reward;
	}
}
