package com.shop.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.shop.dao.MemberDAO;
import com.shop.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Inject
	MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception {

		dao.register(vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void registerUpdate(MemberVO vo) throws Exception {
		dao.registerUpdate(vo);
	}

	@Override
	public void registerDelete(MemberVO vo) throws Exception {
		dao.registerDelete(vo);
	}

}
