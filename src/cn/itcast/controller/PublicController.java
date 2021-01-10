package cn.itcast.controller;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ser.ExportXlmsDataService;
import cn.itcast.service.HelloService;

@Controller
public class PublicController {

	@Resource
	private HttpServletRequest request;
	
	@Autowired
	private HelloService helloService;
	@Autowired
	private ExportXlmsDataService exportXlmsDataService;
	
	
	
	@RequestMapping(value = {"/exportXlmsData"},method = RequestMethod.POST)
	@ResponseBody
	public Object name1(Model model,String startTime,String endTime) {
		System.out.println(startTime+"***");
		System.out.println(endTime+"$$$");
		ModelAndView mv=new ModelAndView();
		boolean b1 = exportXlmsDataService.exportData(startTime,endTime);
		if(b1) {
			return "1";
		}else {
			return "0";
		}
		
	}
	
	
	@RequestMapping(value = {"/","/index"},method = RequestMethod.GET)
	public Object demo2(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test");
		return mv;
	}
	
	@RequestMapping(value = {"/sessionrecipes","/index"},method = RequestMethod.POST)
	@ResponseBody
	public Object demo1(Model model,String startTime,String endTime) {
		System.out.println(startTime+"====");
		System.out.println(endTime+"----");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("test");
		/****session *******/
		HttpSession session = request.getSession();
		List<String> list = helloService.findtesterName("V810-8088S2",startTime,endTime);
		List<String> listpone = helloService.findtesterName("V810-8086S2",startTime,endTime);
		HashSet<String> setpone =  new HashSet<String>();
		List<String> listqone = helloService.findtesterName("V810-3325S2EX",startTime,endTime);
		List<String> listhone = helloService.findtesterName("V810-3328S2EX", startTime, endTime);//h12
		List<String> listi12 = helloService.findtesterName("V810-3327S2EX", startTime, endTime);//i12
		List<String> listi22 = helloService.findtesterName("V810-3323S2EX", startTime, endTime);//i22
		List<String> listk12 = helloService.findtesterName("V810-8085S2", startTime, endTime);//K12
		List<String> listk22 = helloService.findtesterName("V810-8070S2", startTime, endTime);//K22
		List<String> listl12 = helloService.findtesterName("V810-8064S2", startTime, endTime);//l12
		List<String> listl22 = helloService.findtesterName("V810-8057S2", startTime, endTime);//l22
		List<String> listm12 = helloService.findtesterName("V810-8096S2", startTime, endTime);//M12
		HashSet<String> honeset =  new HashSet<String>();
		for (String strhone : listhone) {
			honeset.add(strhone);
		}
		session.setAttribute("honeset", honeset);

		HashSet<String> i12set = new HashSet<String>();
		for (String stri12 : listi12) {
			i12set.add(stri12);
		}
		session.setAttribute("i12set", i12set);
		
		HashSet<String> i22set = new HashSet<String>();
		for (String stri22 : listi22) {
			i22set.add(stri22);
		}
		session.setAttribute("i22set", i22set);
		
		
		HashSet<String> k12set = new HashSet<String>();
		for (String strk12 : listk12) {
			k12set.add(strk12);
		}
		session.setAttribute("k12set", k12set);
		
		HashSet<String> k22set = new HashSet<String>();
		for (String strk22 : listk22) {
			k22set.add(strk22);
		}
		session.setAttribute("k22set", k22set);
		
		
		HashSet<String> l12set = new HashSet<String>();
		for (String strl12 : listl12) {
			l12set.add(strl12);
		}
		session.setAttribute("l12set", l12set);
		
		
		
		HashSet<String> l22set = new HashSet<String>();
		for (String strl22 : listl22) {
			l22set.add(strl22);
		}
		session.setAttribute("l22set", l22set);
		
		
		
		HashSet<String> m12set = new HashSet<String>();
		for (String strm12 : listm12) {
			m12set.add(strm12);
		}
		session.setAttribute("m12set", m12set);
		
		
		
		HashSet<String> set =  new HashSet<String>();
		HashSet<String> setqone =  new HashSet<String>();
		for (String str : list) {
			set.add(str);
		}
		session.setAttribute("r12set", set);
		for (String str1 : listpone) {
			setpone.add(str1);
		}
		session.setAttribute("p12set", setpone);
		for (String str2 : listqone) {
			setqone.add(str2);
		}
		session.setAttribute("q12set", setqone);
		return "asdas";
	}
	
	
	
}
