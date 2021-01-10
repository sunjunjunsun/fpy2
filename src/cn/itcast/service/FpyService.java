package cn.itcast.service;

public interface FpyService {

	int findTotalByTesterName(String machine1,String recipse, String startTime, String endTime);

	int findTotalByTesterNameAndFailOrPass(String machineh12, String p12rc, String startTime, String endTime);

	int findTotalByTesterNameAndFailOrPassRealFail(String machinek22, String k22rc, String startTime, String endTime);

}
