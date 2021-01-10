package cn.itcast.dao;

import java.util.List;
import java.util.Map;

public interface FailListDao {

	List<String> findFailListByTesterName(Map<String, Object> map);

}
