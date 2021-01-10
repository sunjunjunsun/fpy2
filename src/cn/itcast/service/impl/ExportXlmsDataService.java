package cn.itcast.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.xml.internal.messaging.saaj.soap.AttachmentPartImpl;

import cn.itcast.dao.BoardDataDao;
import cn.itcast.domain.BoardData;
import cn.itcast.service.FailListService;
import cn.itcast.util.ExportDataUtil;


@Service
public class ExportXlmsDataService implements cn.itcast.ser.ExportXlmsDataService {

	@Autowired
	private BoardDataDao boardDataDao; 
	
	@Autowired
	private FailListService failListService;
	
	@Override
	public boolean exportData(String startTime, String endTime) {

		boolean b1=false;
		String machineP12 = "V810-8086S2";
		String machineQ12 = "V810-3325S2EX";
		String machineH12 = "V810-3328S2EX";
		String machineI12 = "V810-3327S2EX";
		String machineI22 = "V810-3323S2EX";
		String machineJ12 = "V810-8096S2";
		String machineK12 = "V810-8085S2";
		String machineK22 = "V810-8070S2";
		String machineL12 = "V810-8064S2";
		String machineL22 = "V810-8057S2";
		
		
		
		
		List<String> snListP12 = failListService.findFailSnBytesterName(machineP12, "", startTime, endTime);
		List<String> snListQ12 = failListService.findFailSnBytesterName(machineQ12, "", startTime, endTime);
		List<String> snListH12 = failListService.findFailSnBytesterName(machineH12, "", startTime, endTime);
		List<String> snListI12 = failListService.findFailSnBytesterName(machineI12, "", startTime, endTime);
		List<String> snListI22 = failListService.findFailSnBytesterName(machineI22, "", startTime, endTime);
		List<String> snListJ12 = failListService.findFailSnBytesterName(machineJ12, "", startTime, endTime);
		List<String> snListK12 = failListService.findFailSnBytesterName(machineK12, "", startTime, endTime);
		List<String> snListK22 = failListService.findFailSnBytesterName(machineK22, "", startTime, endTime);
		List<String> snListL12 = failListService.findFailSnBytesterName(machineL12, "", startTime, endTime);
		List<String> snListL22 = failListService.findFailSnBytesterName(machineL22, "", startTime, endTime);
		
		
		List<BoardData> listAllP12 = new ArrayList<BoardData>();
		List<BoardData> listAllQ12 = new ArrayList<BoardData>();
		List<BoardData> listAllH12 = new ArrayList<BoardData>();
		List<BoardData> listAllI12 = new ArrayList<BoardData>();
		List<BoardData> listAllI22 = new ArrayList<BoardData>();
		List<BoardData> listAllJ12 = new ArrayList<BoardData>();
		List<BoardData> listAllK12 = new ArrayList<BoardData>();
		List<BoardData> listAllK22 = new ArrayList<BoardData>();
		List<BoardData> listAllL12 = new ArrayList<BoardData>();
		List<BoardData> listAllL22 = new ArrayList<BoardData>();

		listAllP12.clear();
		listAllQ12.clear();
		listAllH12.clear();
		listAllI12.clear();
		listAllJ12.clear();
		listAllI22.clear();
		listAllK12.clear();
		listAllK22.clear();
		listAllL22.clear();
		listAllL12.clear();
		
		
		
		for (String snP12 : snListP12) {
			listAllP12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snP12));
		}
	
		for (String snQ12 : snListQ12) {
			listAllQ12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snQ12));
		}
		for (String snH12 : snListH12) {
			listAllH12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snH12));
		}
		for (String snI12 : snListI12) {
			listAllI12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snI12));
		}
		for (String snI22 : snListI22) {
			listAllI22.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snI22));
		}
		for (String snJ12 : snListJ12) {
			listAllJ12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snJ12));
		}
		for (String snK12 : snListK12) {
			listAllK12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snK12));
		}
		for (String snK22 : snListK22) {
			listAllK22.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snK22));
		}
		for (String snL12 : snListL12) {
			listAllL12.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snL12));
		}
		for (String snL22 : snListL22) {
			listAllL22.addAll(boardDataDao.findBySnAndTime(startTime, endTime, snL22));
		}
		

		boolean bP12 = ExportDataUtil.exportData(machineP12,listAllP12);
		boolean bQ12 = ExportDataUtil.exportData(machineQ12,listAllQ12);
		boolean bH12 = ExportDataUtil.exportData(machineH12,listAllH12);
		boolean bI12 = ExportDataUtil.exportData(machineI12,listAllI12);
		boolean bI22 = ExportDataUtil.exportData(machineI22,listAllI22);
		boolean bJ12 = ExportDataUtil.exportData(machineJ12,listAllJ12);
		boolean bK12 = ExportDataUtil.exportData(machineK12,listAllK12);
		boolean bK22 = ExportDataUtil.exportData(machineK22,listAllK22);
		boolean bL12 = ExportDataUtil.exportData(machineL12,listAllL12);
		boolean bL22 = ExportDataUtil.exportData(machineL22,listAllL22);

		
		
		if(bP12 && bQ12 && bH12 && bI12 && bI22 && bJ12 && bK12 && bK22 && bL12 && bL22) 
		{
			b1=true;
			
		}
		
		
		return b1;
	}

}
