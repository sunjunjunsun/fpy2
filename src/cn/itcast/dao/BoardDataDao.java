package cn.itcast.dao;

import java.util.List;

import cn.itcast.domain.BoardData;

public interface BoardDataDao {

	List<BoardData> findByTesterNameAndTime(String startTime, String endTime, String machineP12);

	List<BoardData> findBySnAndTime(String startTime, String endTime, String snP12);

}
