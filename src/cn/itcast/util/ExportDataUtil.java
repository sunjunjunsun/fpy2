package cn.itcast.util;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.sun.org.apache.bcel.internal.generic.NEW;

import cn.itcast.domain.BoardData;
import cn.itcast.domain.BoardToExecl;
import jxl.Workbook;
import jxl.write.Label;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

public class ExportDataUtil {

	public static boolean exportData(String failTest, List<BoardData> list) {
		// TODO Auto-generated method stub
		boolean b = false;

		try {
           	String realPath = "\\\\172.26.12.16\\aoi\\5DX\\excel\\1";
			//String realPath = "C:\\excel\\" + new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			File file = new File(realPath);
			if (!file.exists()) {
				file.mkdirs();
			}

			String machine = "";
			if (failTest.equals("V810-8086S2")) {
				machine = "P12";
			}
			if (failTest.equals("V810-3325S2EX")) {
				machine = "Q12";
			}

			if (failTest.equals("V810-3328S2EX")) {
				machine = "H12";
			}
			if (failTest.equals("V810-3327S2EX")) {
				machine = "I12";
			}
			if (failTest.equals("V810-3323S2EX")) {
				machine = "I22";
			}
			if (failTest.equals("V810-8085S2")) {
				machine = "K12";
			}
			if (failTest.equals("V810-8070S2")) {
				machine = "K22";
			}
			if (failTest.equals("V810-8064S2")) {
				machine = "L12";
			}
			if (failTest.equals("V810-8057S2")) {
				machine = "L22";
			}
			if (failTest.equals("V810-8096S2")) {
				machine = "J12";
			}

			long l = (long) Math.round(Math.floor(Math.random() * 1000000000));
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");

			if (!list.isEmpty()) {

				String name = machine + "线的不良汇总Excel".concat(machine).concat(sdf2.format(new Date())).concat(".xls");
				WritableWorkbook book = Workbook.createWorkbook(new File(realPath.concat("\\").concat(name)));
				String[] header = new String[] { "Sn", "Recipse", "Location", "Pin", "ErrorCode", "Algorithm",
						"SubType", "RepairedStatus", "MachineName", "TestTime" };
				WritableSheet sheet = book.createSheet(machine, 0);
				for (int i = 0; i < header.length; i++) {
					Label lable = new Label(i, 0, header[i]);
					sheet.addCell(lable);
				}

				for (int i = 0; i < list.size(); i++) {
					BoardData oe = list.get(i);
					Label oSn = new Label(0, i + 1, oe.getSerialNumber());
					Label oRecipse = new Label(1, i + 1, oe.getBoardType());
					Label oLocation = new Label(2, i + 1, oe.getLocation());
					Label oPin = new Label(3, i + 1, oe.getPin());
					Label oErrcode = new Label(4, i + 1, oe.getErrorCode());
					Label oAlgorithm = new Label(5, i + 1, oe.getAlgorithm());
					Label oSubType = new Label(6, i + 1, oe.getSubtype());
					Label oRepairStatus = new Label(7, i + 1, oe.getRepairStatus());
					Label oTesterName = new Label(8, i + 1, oe.getTesterName());
					Label oTesttime = new Label(9, i + 1, sdf.format(oe.getTestTime()));
					sheet.addCell(oSn);
					sheet.addCell(oRecipse);
					sheet.addCell(oLocation);
					sheet.addCell(oPin);
					sheet.addCell(oErrcode);
					sheet.addCell(oAlgorithm);
					sheet.addCell(oSubType);
					sheet.addCell(oRepairStatus);
					sheet.addCell(oTesterName);
					sheet.addCell(oTesttime);
					
				}
				
				book.write();
				book.close();
			}
			b = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return b;
	}

}
