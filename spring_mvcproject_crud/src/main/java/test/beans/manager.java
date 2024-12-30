package test.beans;

public class manager 
{

	private int mid;
	private String mname;
	private String memail;
	private String mpass;
	private String mcpass;
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMcpass() {
		return mcpass;
	}
	public void setMcpass(String mcpass) {
		this.mcpass = mcpass;
	}
	@Override
	public String toString() {
		return "manager [mid=" + mid + ", mname=" + mname + ", memail=" + memail + ", mpass=" + mpass + ", mcpass="
				+ mcpass + "]";
	}
	
	
	
	
}
