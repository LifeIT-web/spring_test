package com.shop.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	SqlSession sql;
	
	String mapper = "memberMapper";
	
	@Override
	public void register(MemberVO vo) throws Exception {
		
		sql.insert(mapper + ".register", vo);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return sql.selectOne(mapper + ".login", vo);
	}

	@Override
	public void registerUpdate(MemberVO vo) throws Exception {
		sql.update(mapper + ".registerUpdate", vo);
	}

	@Override
	public void registerDelete() throws Exception {
		sql.delete(mapper + ".registerDelete");
	}

}
