package cn.itcast.dao;

import java.util.List;
import java.util.Map;

public interface HelloDao {
	 List<String> findBytesterName(Map<String, Object> map);
}
