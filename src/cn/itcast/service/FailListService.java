package cn.itcast.service;

import java.util.List;

public interface FailListService {

	List<String> findFailSnBytesterName(String failTest, String boardType, String startTime, String endTime);

}
