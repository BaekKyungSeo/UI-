package com.javalec.spring_mybatis.dao;

import java.util.ArrayList;

import com.javalec.spring_mybatis.dto.ContentDto;

public interface IDao {
	
	public ArrayList<ContentDto> listDao();
	public void writeDao(String mName, String mPhone1, String mPhone2, String mPhone3, String mAddress);
	public ContentDto viewDao(String strID);
	public void deleteDao(String mId);
	public void modifyDao(String mId, String mName, String mPhone1, String mPhone2, String mPhone3, String mAddress);
}
