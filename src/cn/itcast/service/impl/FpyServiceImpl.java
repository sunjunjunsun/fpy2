package cn.itcast.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.dao.FpyDao;
import cn.itcast.service.FpyService;

@Service
public class FpyServiceImpl implements FpyService{

	@Autowired
	private FpyDao fpyDao;
	
	@Override
	public int findTotalByTesterName(String machine1,String recipse, String startTime, String endTime) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dStart", startTime);
		map.put("dEnd", endTime);
		map.put("boardType",recipse);
		map.put("testerName", machine1);
		int a = fpyDao.findTotalByTesterName(map);
		return a;
	}

	@Override
	public int findTotalByTesterNameAndFailOrPass(String machineh12, String p12rc, String startTime, String endTime) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dStart", startTime);
		map.put("dEnd", endTime);
		map.put("boardType",p12rc);
		map.put("testerName", machineh12);
		map.put("testStatus","Passed");
		int b =fpyDao.findTotalByTesterNameAndFailOrPass(map);
		return b;
	}

	@Override
	public int findTotalByTesterNameAndFailOrPassRealFail(String machinek22, String k22rc, String startTime,
			String endTime) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dStart", startTime);
		map.put("dEnd", endTime);
		map.put("boardType",k22rc);
		map.put("testerName", machinek22);
		map.put("testStatus","Repaired");
		int c =fpyDao.findTotalByTesterNameAndFailOrPass(map);
		return c;
	}

	
	
}
