package cn.itcast.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sun.org.apache.bcel.internal.generic.I2F;

import cn.itcast.dao.BoardDao;
import cn.itcast.domain.Board;
import cn.itcast.domain.BoardToExecl;
import cn.itcast.domain.Status;
import cn.itcast.service.FailListService;
import cn.itcast.util.ExcelUtil;

@Controller
public class FailListController2 {

	@Autowired
	FailListService failListService;
	
	@Autowired
	BoardDao boardDao;
	
	@Resource
	HttpServletRequest request;
	
	@RequestMapping(value = "/failList1",method = RequestMethod.GET)
	public Object get(String failTest,String boardType,Model model,String startTime,String endTime) {
		System.out.println(startTime+"hehehe");
		System.out.println(endTime+"hahhahah");
		//System.out.println(failTest);
		
		List<String> list = failListService.findFailSnBytesterName(failTest,boardType,startTime,endTime);
		
		List<BoardToExecl> boardToExecl = new ArrayList<BoardToExecl>();
		
		for (String sn : list) {
			
			Board board = boardDao.getBoardBySn(sn);
			BoardToExecl bte = null;
			List<Status> statusList = board.getStatus();
			
			
		    for(Status s:statusList) {
		    	if(s.getRepairstatus().equals("Repaired")) {
		    			 bte = new BoardToExecl();
				    		 bte.setRecipse(board.getBoardtype());
								bte.setSn(sn);
								bte.setTesttime(board.getTesttime());
					    		bte.setLocation(s.getLocation());
			                    bte.setPin(s.getPin());
			                    bte.setErrcode(s.getErrcode());
			                    bte.setAlgorithm(s.getAlgorithm());
			                    bte.setSubType(s.getSubtype());
			                    boardToExecl.add(bte); 
		    	}else {
		    		
		    	}
		    	
		    }
		}
		Set<BoardToExecl> boardSet = new HashSet<>(boardToExecl);
		List<BoardToExecl> boardToExecl2 = new ArrayList<>(boardSet);
		ExcelUtil.writerJXL(boardToExecl2,failTest,request);
		model.addAttribute("failList", list);
		return "mv";
	}
	
	@RequestMapping(value = "/failListjson1",method = RequestMethod.GET)
	@ResponseBody
	public Object getd(String failTest,String boardType,Model model,String startTime,String endTime) {
		System.out.println(failTest);
		System.out.println(boardType);
		List<String> list = failListService.findFailSnBytesterName(failTest,boardType,startTime,endTime);
		model.addAttribute("failList", list);
		String jsonString = JSONArray.toJSONString(list);
		
		return jsonString;
	}
	
}
