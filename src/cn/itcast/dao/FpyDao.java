package cn.itcast.dao;

import java.util.Map;

public interface FpyDao {
	int findTotalByTesterName(Map<String, Object> map);

	int findTotalByTesterNameAndFailOrPass(Map<String, Object> map);
}
