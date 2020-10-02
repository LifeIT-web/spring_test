package com.shop.dao;

import com.shop.vo.MemberVO;

public interface MemberDAO {

	public void register(MemberVO vo) throws Exception;
	
	public MemberVO login(MemberVO vo) throws Exception;
	
	public void registerUpdate(MemberVO vo) throws Exception; 
	
	public void registerDelete() throws Exception;
}
