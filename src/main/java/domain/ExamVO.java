package domain;

public class ExamVO {
	
	//필드
	private int num;
	private String qs;
	private String an;
	
	
	//디폴트 생성자
	public ExamVO() {
		super();
		
	}

	
	//초기화
	public ExamVO(int num, String qs, String an) {
		super();
		this.num = num;
		this.qs = qs;
		this.an = an;
	}

	
	//디버깅할때 사용
	@Override
	public String toString() {
		return "ExamVO [num=" + num + ", qs=" + qs + ", an=" + an + "]";
	}

	
	//get/set
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getQs() {
		return qs;
	}

	public void setQs(String qs) {
		this.qs = qs;
	}

	public String getAn() {
		return an;
	}

	public void setAn(String an) {
		this.an = an;
	}
	
	
	

}
