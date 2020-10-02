package com.shop.kr;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.service.MemberService;
import com.shop.vo.MemberVO;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Inject
	MemberService service;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void getJoin() throws Exception {
		logger.info("회원가입 !~!~!~~!~~!@~!~@!~@!~@~!@~!@~!");
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String postJoin(MemberVO vo) throws Exception {
		
		logger.info("회원가입 post !@!@!@!@!@!@!@!@!@!@!@!");
		
		service.register(vo);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String postLogin(MemberVO vo, HttpServletRequest httr, RedirectAttributes rttr) throws Exception{
		
		logger.info("loginpost !@#@!#!3!@3@!#!@#!@#!@#@!");
		
		HttpSession session = httr.getSession();
		session.getAttribute("member");
		
		MemberVO login = service.login(vo);
		
		if (login != null) {
			session.setAttribute("member", login);
			return "redirect:/";
		}
		return "main";
	}
	
	@RequestMapping(value = "registerUpdate", method = RequestMethod.GET)
	public void getUpdateMember() throws Exception{
		logger.info("회원수정 화면 !@#!@#!@#!@#!@#!@#@!#!@");
	}
	
	@RequestMapping(value = "registerUpdate", method = RequestMethod.POST)
	public String postUpdateMember(MemberVO vo) throws Exception{
		logger.info("회원수정 중(post) #1@#@1@#1@#@");
		
		service.registerUpdate(vo);
		
		return "redirect:/";
		
	}
	
	@RequestMapping(value = "registerDelete", method = RequestMethod.POST)
	public String deleteMember(HttpSession session) throws Exception{
		logger.info("회원 탈퇴#@1@#@@@1@#3@##131@");
		
		service.registerDelete();
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	
}
