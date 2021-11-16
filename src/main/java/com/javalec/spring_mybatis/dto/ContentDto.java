package com.javalec.spring_mybatis.dto;


public class ContentDto {

	private int mId;
	private String mName;
	private String mPhone1;
	private String mPhone2;
	private String mPhone3;
	private String mAddress;
	private String mDate;
	

	public ContentDto() {
		// TODO Auto-generated constructor stub
	}


	public ContentDto(int mId, String mName, String mPhone1, String mPhone2, String mPhone3, String mAddress, String mDate) {
		super();
		this.mId = mId;
		this.mName = mName;
		this.mPhone1 = mPhone1;
		this.mPhone2 = mPhone2;
		this.mPhone3 = mPhone3;
		this.mAddress = mAddress;
		this.mDate = mDate;
	}


	public int getmId() {
		return mId;
	}


	public void setmId(int mId) {
		this.mId = mId;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public String getmPhone1() {
		return mPhone1;
	}


	public void setmPhone1(String mPhone1) {
		this.mPhone1 = mPhone1;
	}


	public String getmPhone2() {
		return mPhone2;
	}


	public void setmPhone2(String mPhone2) {
		this.mPhone2 = mPhone2;
	}


	public String getmPhone3() {
		return mPhone3;
	}


	public void setmPhone3(String mPhone3) {
		this.mPhone3 = mPhone3;
	}


	public String getmAddress() {
		return mAddress;
	}


	public void setmAddress(String mAddress) {
		this.mAddress = mAddress;
	}


	public String getmDate() {
		return mDate;
	}


	public void setmDate(String mDate) {
		this.mDate = mDate;
	}
	
	

}