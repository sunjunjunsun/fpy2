package cn.itcast.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.dao.HelloDao;
import cn.itcast.service.HelloService;

@Service
public class HelloServiceImpl implements HelloService {

	@Autowired
	private HelloDao helloDao;

	@Override
	public List<String> findtesterName(String string, String startTime, String endTime) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dStart", startTime);
		map.put("dEnd", endTime);
		map.put("testerName", string);
		return helloDao.findBytesterName(map);
	}

}
