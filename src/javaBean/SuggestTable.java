package javaBean;

public class SuggestTable {
	private String SuggestID;
	private String StudentID;
	private String SuggestMan;
	private String SuggestDate;
	private String SuggestInform;
	public SuggestTable() {}
	public SuggestTable(String SuggestID,String StudentID,String SuggestMan,String SuggestDate,String SuggestInform) {
		this.SuggestID = SuggestID;
		this.StudentID = StudentID;
		this.SuggestMan = SuggestMan;
		this.SuggestDate = SuggestDate;
		this.SuggestInform = SuggestInform;
	}
	public String getSuggestID() {
		return SuggestID;
	}
	public String getStudentID() {
		return StudentID;
	}
	public String getName() {
		return SuggestMan;
	}
	public String getDate() {
		return SuggestDate;
	}
	public String getSugget() {
		return SuggestInform;
	}
}
