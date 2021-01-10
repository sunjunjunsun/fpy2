package cn.itcast.controller;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.service.FpyService;

@Controller
public class FpyController {

	
   @Autowired
   private FpyService fpyService;
	
	
	@RequestMapping(value = "/fpy",method = RequestMethod.POST)
	@ResponseBody
	public Object demo1(String startTime,
			            String endTime,
			            String p12rc,
			            String q12rc,
			            String r12rc,
			            String h12rc,
			            String i12rc,
			            String i22rc,
			            String k12rc,
			            String k22rc,
			            String l12rc,
			            String l22rc,
			            String m12rc
			                   ) {
		Map<String, Object> map = new HashMap<String, Object>();
		DecimalFormat df = new DecimalFormat("0.00");
		/*System.err.println(startTime);
		System.err.println(endTime);
		System.err.println("p12rc"+p12rc);
		System.err.println("q12rc"+q12rc);
		System.err.println("r12rc"+r12rc);
		System.err.println("h12rc"+h12rc);
		System.err.println("i12rc"+i12rc);
		System.err.println("i22rc"+i22rc);
		System.err.println("k12rc"+k12rc);
		System.err.println("k22rc"+k22rc);
		System.err.println("l12rc"+l12rc);
		System.err.println("l22rc"+l22rc);
		System.err.println("m12rc"+m12rc);*/
		String machinep12 = "V810-8086S2";
		String machineq12 = "V810-3325S2EX";
		String machiner12 = "V810-8088S2";
		String machineh12 = "V810-3328S2EX";
		String machinei12 = "V810-3327S2EX";
		String machinei22 = "V810-3323S2EX";
		String machinek12 = "V810-8085S2";
		String machinek22 = "V810-8070S2";
		String machinel12 = "V810-8064S2";
		String machinel22 = "V810-8057S2";
		String machinem12 = "V810-8096S2";
		int p12total = fpyService.findTotalByTesterName(machinep12,p12rc,startTime,endTime);
		int q12total = fpyService.findTotalByTesterName(machineq12,q12rc,startTime,endTime);
		int r12total = fpyService.findTotalByTesterName(machiner12,r12rc,startTime,endTime);
		int h12total = fpyService.findTotalByTesterName(machineh12,h12rc,startTime,endTime);
		int i12total = fpyService.findTotalByTesterName(machinei12,i12rc,startTime,endTime);
		int i22total = fpyService.findTotalByTesterName(machinei22,i22rc,startTime,endTime);
		int k12total = fpyService.findTotalByTesterName(machinek12,k12rc,startTime,endTime);
		int k22total = fpyService.findTotalByTesterName(machinek22,k22rc,startTime,endTime);
		int l12total = fpyService.findTotalByTesterName(machinel12,l12rc,startTime,endTime);
		int l22total = fpyService.findTotalByTesterName(machinel22,l22rc,startTime,endTime);
		int m12total = fpyService.findTotalByTesterName(machinem12,m12rc,startTime,endTime);
		/*****************************/
		int p12pass = fpyService.findTotalByTesterNameAndFailOrPass(machinep12,p12rc,startTime,endTime);
		int p12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinep12,p12rc,startTime,endTime);
		float p12 = ((float) p12pass / p12total) * 100;
		String p12fpy = df.format(p12);
		HashMap<String, Object> mapp12= new HashMap<String, Object>();
		mapp12.put("p12total",p12total);
		mapp12.put("p12pass",p12pass);
		mapp12.put("p12fail",p12fail);
		mapp12.put("p12fpy",p12fpy);
		map.put("p12fpy",mapp12);
		
		int q12pass = fpyService.findTotalByTesterNameAndFailOrPass(machineq12,q12rc,startTime,endTime);
		int q12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machineq12,q12rc,startTime,endTime);
		float q12 = ((float) q12pass / q12total) * 100;
		String q12fpy = df.format(q12);
		HashMap<String, Object> mapq12= new HashMap<String, Object>();
		mapq12.put("q12total",q12total);
		mapq12.put("q12pass",q12pass);
		mapq12.put("q12fail",q12fail);
		mapq12.put("q12fpy",q12fpy);
		map.put("q12fpy",mapq12);
		
		int r12pass = fpyService.findTotalByTesterNameAndFailOrPass(machiner12,r12rc,startTime,endTime);
		int r12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machiner12,r12rc,startTime,endTime);
		float r12 = ((float) r12pass / r12total) * 100;
		String r12fpy = df.format(r12);
		HashMap<String, Object> mapr12= new HashMap<String, Object>();
		mapr12.put("r12total",r12total);
		mapr12.put("r12pass",r12pass);
		mapr12.put("r12fail",r12fail);
		mapr12.put("r12fpy",r12fpy);
		map.put("r12fpy",mapr12);
		
		int h12pass = fpyService.findTotalByTesterNameAndFailOrPass(machineh12,h12rc,startTime,endTime);
		int h12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machineh12,h12rc,startTime,endTime);
		float h12 = ((float) h12pass / h12total) * 100;
		String h12fpy = df.format(h12);
		HashMap<String, Object> maph12= new HashMap<String, Object>();
		maph12.put("h12total",h12total);
		maph12.put("h12pass",h12pass);
		maph12.put("h12fail",h12fail);
		maph12.put("h12fpy",h12fpy);
		map.put("h12fpy",maph12);
		
		int i12pass = fpyService.findTotalByTesterNameAndFailOrPass(machinei12,i12rc,startTime,endTime);
		int i12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinei12,i12rc,startTime,endTime);
		float i12 = ((float) i12pass / i12total) * 100;
		String i12fpy = df.format(i12);
		HashMap<String, Object> mapi12= new HashMap<String, Object>();
		mapi12.put("i12total",i12total);
		mapi12.put("i12pass",i12pass);
		mapi12.put("i12fail",i12fail);
		mapi12.put("i12fpy",i12fpy);
		map.put("i12fpy",mapi12);
		
		int i22pass = fpyService.findTotalByTesterNameAndFailOrPass(machinei22,i22rc,startTime,endTime);
		int i22fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinei22,i22rc,startTime,endTime);
		float i22 = ((float) i22pass / i22total) * 100;
		String i22fpy = df.format(i22);
		HashMap<String, Object> mapi22= new HashMap<String, Object>();
		mapi22.put("i22total",i22total);
		mapi22.put("i22pass",i22pass);
		mapi22.put("i22fail",i22fail);
		mapi22.put("i22fpy",i22fpy);
		map.put("i22fpy",mapi22);
		
		int k12pass = fpyService.findTotalByTesterNameAndFailOrPass(machinek12,k12rc,startTime,endTime);
		int k12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinek12,k12rc,startTime,endTime);
		float k12 = ((float) k12pass / k12total) * 100;
		String k12fpy = df.format(k12);
		HashMap<String, Object> mapk12= new HashMap<String, Object>();
		mapk12.put("k12total",k12total);
		mapk12.put("k12pass",k12pass);
		mapk12.put("k12fail",k12fail);
		mapk12.put("k12fpy",k12fpy);
		map.put("k12fpy",mapk12);
		
		int k22pass = fpyService.findTotalByTesterNameAndFailOrPass(machinek22,k22rc,startTime,endTime);
		int k22fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinek22,k22rc,startTime,endTime);
		float k22 = ((float) k22pass / k22total) * 100;
		String k22fpy = df.format(k22);
		HashMap<String, Object> mapk22= new HashMap<String, Object>();
		mapk22.put("k22total",k22total);
		mapk22.put("k22pass",k22pass);
		mapk22.put("k22fail",k22fail);
		mapk22.put("k22fpy",k22fpy);
		map.put("k22fpy",mapk22);
		
		int l12pass = fpyService.findTotalByTesterNameAndFailOrPass(machinel12,l12rc,startTime,endTime);
		int l12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinel12,l12rc,startTime,endTime);
		float l12 = ((float) l12pass / l12total) * 100;
		String l12fpy = df.format(l12);
		HashMap<String, Object> mapl12= new HashMap<String, Object>();
		mapl12.put("l12total",l12total);
		mapl12.put("l12pass",l12pass);
		mapl12.put("l12fail",l12fail);
		mapl12.put("l12fpy",l12fpy);
		map.put("l12fpy",mapl12);
		
		int l22pass = fpyService.findTotalByTesterNameAndFailOrPass(machinel22,l22rc,startTime,endTime);
		int l22fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinel22,l22rc,startTime,endTime);
		float l22 = ((float) l22pass / l22total) * 100;
		String l22fpy = df.format(l22);
		HashMap<String, Object> mapl22= new HashMap<String, Object>();
		mapl22.put("l22total",l22total);
		mapl22.put("l22pass",l22pass);
		mapl22.put("l22fail",l22fail);
		mapl22.put("l22fpy",l22fpy);
		map.put("l22fpy",mapl22);
		
		int m12pass = fpyService.findTotalByTesterNameAndFailOrPass(machinem12,m12rc,startTime,endTime);
		int m12fail = fpyService.findTotalByTesterNameAndFailOrPassRealFail(machinem12,m12rc,startTime,endTime);
		float m12 = ((float) m12pass / m12total) * 100;
		String m12fpy = df.format(m12);
		HashMap<String, Object> mapm12= new HashMap<String, Object>();
		mapm12.put("m12total",m12total);
		mapm12.put("m12pass",m12pass);
		mapm12.put("m12fail",m12fail);
		mapm12.put("m12fpy",m12fpy);
		map.put("m12fpy",mapm12);
		
		/*System.out.println(p1total);
		System.out.println(q1total);
		System.out.println(r1total);
		System.out.println(h12total);
		System.out.println(i12total);
		System.out.println(i22total);
		System.out.println(k12total);
		System.out.println(k22total);
		System.out.println(l12total);
		System.out.println(l22total);
		System.out.println(m12total);*/
		
		
		return map;
	}
	
}
