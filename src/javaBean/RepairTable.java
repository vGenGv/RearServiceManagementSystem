package javaBean;

public class RepairTable {
	private String RepairID;
	private String workerID;
	private String StudentId;
	private String RepairPhone;
	private String RepairDate;
	private String Addr;
	private String Type;
	private String BADInformation;
	private String BADimage;
	private String ProcessInform;
	private String Comment;
	
	public RepairTable() {}
	public RepairTable(String RepairID,String workerID,String StudentId,String RepairPhone,String RepairDate,
			String Addr,String Type,String BADInformation,String BADimage,String ProcessInform,String Comment) {
		this.RepairID = RepairID;
		this.workerID = workerID;
		this.StudentId = StudentId;
		this.RepairPhone = RepairPhone;
		this.RepairDate = RepairDate;
		this.Addr = Addr;
		this.Type = Type;
		this.BADInformation = BADInformation;
		this.BADimage = BADimage;
		this.ProcessInform = ProcessInform;
		this.Comment = Comment;
	}
	
	public String getRepairID() {
		return RepairID;
	}
	
	public String getworkerID() {
		return workerID;
	}
	
	public String getStudentId() {
		return StudentId;
	}
	
	public String getRepairPhone() {
		return RepairPhone;
	}
	
	public String getRepairDate() {
		return RepairDate;
	}
	
	public String getAddr() {
		return Addr;
	}
	
	public String getType() {
		return Type;
	}
	
	public String getBADInformation() {
		return BADInformation;
	}
	
	public String getBADimage() {
		return BADimage;
	}
	
	public String getProcessInform() {
		return ProcessInform;
	}
	
	public String getComment() {
		return Comment;
	}
}
