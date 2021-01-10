package cn.itcast.util;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.weaver.ast.Var;

import com.sun.org.apache.bcel.internal.generic.NEW;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.List;



import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;


import cn.itcast.domain.BoardToExecl;

public class ExcelUtil {
	public static void writerJXL(List<BoardToExecl> list, String failTest,HttpServletRequest request) {
		    try {
				String realPath = "\\\\172.26.12.16\\aoi\\5DX\\excel";
				File file = new File(realPath);
				if(!file.exists()) {
					file.mkdirs();
				}
				
		    	String machine = "";
		    	if(failTest.equals("V810-8086S2")) {
		    		machine = "P12";
		    	}
		    	if(failTest.equals("V810-3325S2EX")) {
		    		machine = "Q12";
		    	}
		    	if(failTest.equals("V810-8088S2")) {
		    		machine = "R12";
		    	}
		    	if(failTest.equals("V810-3328S2EX")) {
		    		machine = "H12";
		    	}
		    	if(failTest.equals("V810-3327S2EX")) {
		    		machine = "I12";
		    	}
		    	if(failTest.equals("V810-3323S2EX")) {
		    		machine = "I22";
		    	}
		    	if(failTest.equals("V810-8085S2")) {
		    		machine = "K12";
		    	}
		    	if(failTest.equals("V810-8070S2")) {
		    		machine = "K22";
		    	}
		    	if(failTest.equals("V810-8064S2")) {
		    		machine = "L12";
		    	}
		    	if(failTest.equals("V810-8057S2")) {
		    		machine = "L22";
		    	}
		    	if(failTest.equals("V810-8096S2")) {
		    		machine = "M12";
		    	}
		    	
		       
		        long l = (long) Math.round(Math.floor(Math.random() * 1000000000));
		        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		        SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		       
		        
		        
		        String name = machine + "线的不良汇总Excel".concat(machine).concat(sdf2.format(new Date())).concat(".xls");
		        WritableWorkbook book = Workbook.createWorkbook( new  File(realPath.concat("\\").concat(name)));
		        String[] header = new String[]{"程式名","SN","位置","Pin","Algorithm","SubType","不良现象","测试时间"};
		        WritableSheet sheet  =  book.createSheet(machine,0);
		        for (int i = 0; i < header.length; i++) {
		        	Label lable = new Label(i,0,header[i]);
		        	sheet.addCell(lable);
				}
		        
		       
		        for (int i = 0; i < list.size(); i++) {
		        	BoardToExecl oe = list.get(i);
		        	Label oRecipse = new Label(0,i+1,oe.getRecipse());
		        	Label oSn = new Label(1,i+1,oe.getSn());
		        	Label oLocation = new Label(2,i+1,oe.getLocation());
		        	Label oPin = new Label(3,i+1,oe.getPin());
		        	
		        	Label oAlgorithm = new Label(4,i+1,oe.getAlgorithm());
		        	Label oSubType = new Label(5,i+1,oe.getSubType());
		        	
		        	Label oErrcode = new Label(6,i+1,oe.getErrcode());
		        	Label oTesttime = new Label(7,i+1,sdf.format(oe.getTesttime()));
		        	sheet.addCell(oRecipse);
		        	sheet.addCell(oSn);
		        	sheet.addCell(oLocation);
		        	sheet.addCell(oPin);
		        	
		        	sheet.addCell(oAlgorithm);
		        	sheet.addCell(oSubType);
		        	
		        	sheet.addCell(oErrcode);
		        	sheet.addCell(oTesttime);
		        	
				}
		        book.write();
		        book.close();
		    } catch (Exception e) {
		        e.printStackTrace();
		    }   
		}
		
		
		
		
		
		
	

}
