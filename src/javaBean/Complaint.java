package javaBean;

public class Complaint {
		private String ComplaintID;
		private String RepairID;
		private String Complaintpeople;
		private String identity;
		private String ComplaintIntInfor;
		private String StudentId;
		private String workerID;
		public Complaint() {}
		public Complaint(String ComplaintID,String RepairID,String StudentId,String workerID,
				String Complaintpeople,String identity,String ComplaintIntInfor) {
			this.ComplaintID = ComplaintID;
			this.RepairID = RepairID;
			this.StudentId = StudentId;
			this.workerID = workerID;
			this.Complaintpeople =Complaintpeople;
			this.identity = identity;
			this.ComplaintIntInfor = ComplaintIntInfor;
		}
		
		public String getComplaintID() {
			return ComplaintID;
		}
		
		public String getRepairID() {
			return RepairID;
		}
		
		public String getStudentId() {
			return StudentId;
		}	
		
		public String getworkerID() {
			return workerID;
		}
		
		public String getComplaintpeople() {
			return Complaintpeople;
		}
		
		public String getidentity() {
			return identity;
		}
		
		public String getComplaintIntInfor() {
			return ComplaintIntInfor;
		}
}
