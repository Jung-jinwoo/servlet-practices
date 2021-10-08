package com.douzone.emaillist.dao.test;

import java.util.List;

import com.douzone.emaillist.dao.EmaillistDao;
import com.douzone.emaillist.vo.EmaillistVo;

public class EmaillistDaoTest {
	public static void main(String[] args) {
		//insertTest();
		
		displayEmaillistInfo();
	}

	private static void displayEmaillistInfo() {
		System.out.println("***** 이메일 리스트 *****");
		
		List<EmaillistVo> list = new EmaillistDao().findAll();
		
		for(EmaillistVo vo : list) {
			System.out.printf("번호:%d, 이름:%s %s, 이메일: %s", vo.getNo(), vo.getFirstName(), vo.getLastName(), vo.getEmail());
		}
		
	}

	private static void insertTest() {
		
		EmaillistVo vo = new EmaillistVo();
		vo.setFirstName("고");
		vo.setLastName("길동");
		vo.setEmail("gildong@gmail.com");
		new EmaillistDao().insert(vo);
		
	}
}
