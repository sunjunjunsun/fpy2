package cn.itcast.service.impl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.dao.FailListDao;
import cn.itcast.service.FailListService;

@Service
public class FailListServiceImpl implements FailListService{

	@Autowired
	FailListDao failListDao;
	
	

	@Override
	public List<String> findFailSnBytesterName(String failTest, String boardType, String startTime, String endTime) {
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("dStart", startTime);
		map.put("dEnd", endTime);
		map.put("testerName", failTest);
		map.put("boardType",boardType);
		
		 List<String>  list = failListDao.findFailListByTesterName(map);
		
		return list;
	}

}
