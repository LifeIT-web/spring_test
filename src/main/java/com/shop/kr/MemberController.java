package com.shop.kr;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public void join() {
		logger.info("회원가입 !~!~!~~!~~!@~!~@!~@!~@~!@~!@~!");
	}
}
