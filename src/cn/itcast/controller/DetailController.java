package cn.itcast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.dao.BoardDao;
import cn.itcast.domain.Board;

@Controller
public class DetailController {

	@Autowired
	BoardDao boardDao;
	
	@ResponseBody
	@RequestMapping(value = "/detailList",method = RequestMethod.GET)
	public Board demo1(String sn) {
		System.out.println(sn);
		Board board= boardDao.getBoardBySn(sn);
		//System.out.println(board);
		return board;
	}
	
	
}
