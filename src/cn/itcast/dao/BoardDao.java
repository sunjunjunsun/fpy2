package cn.itcast.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.itcast.domain.Board;

public interface BoardDao {

	
	Board getBoardBySn(@Param("serialnumber")String serialnumber);

	
	
}
