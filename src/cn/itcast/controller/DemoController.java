package cn.itcast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.dao.BoardDao;
import cn.itcast.domain.Board;

@Controller
public class DemoController {

	@Autowired
	private BoardDao boardDao;
	
	
	@RequestMapping(value = "/demo",method = RequestMethod.GET)
	@ResponseBody
	public Object demo1(String sn) {
		Board border = boardDao.getBoardBySn(sn);
		return border;
	}
}
