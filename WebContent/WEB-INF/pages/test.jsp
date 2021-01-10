<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fpy</title>
<link href="css/me.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="JScripts/WdatePicker.js"></script>
<script type="text/javascript" src="js/me.js"></script>
<script type="text/javascript" src="js/myjq.js"></script>
<script type="text/javascript">
$(function(){
	 var startTimehms = $("#select1").find("option:selected").val();
	  var endTimehms = $("#select2").find("option:selected").val();
	  var startTime="";
	  var endTime="";
	  $("#select1").on("change",function(){
		  console.log($("#select1").find("option:selected").val());
		  startTimehms =$("#select1").find("option:selected").val(); 
	  });
	  $("#select2").on("change",function(){
		  console.log($("#select2").find("option:selected").val());
		  endTimehms=$("#select2").find("option:selected").val();
	  });
	  $("#test").click(function(){
		   startTime = $("#planDateStart1").val() +" " +  startTimehms;
		   endTime = $("#planDateStart2").val() +" " + endTimehms;
		   var formData = new FormData();
			formData.append('startTime',startTime);
			formData.append('endTime',endTime);
			$.ajax({
				url : "${pageContext.request.contextPath}/sessionrecipes",
				type : "POST",
				data : formData,
				async : false,
				cache : false,
				contentType : false,
				processData : false,
				success : function(data) {
						console.log(data)
				},
				error : function() {
				}
			});
	  });
	  /*****/
	  var flag = 0;
	  $("#exportData").click(function(){
		  if(flag==1){
            alert("软件性能限制,请勿频繁点击,请刷新页面，重新点击,或者等待30分钟");			  
			  return;
		  }
		  flag++;
		  startTime = $("#planDateStart1").val() +" " +  startTimehms;
		   endTime = $("#planDateStart2").val() +" " + endTimehms;
		   var formData = new FormData();
			formData.append('startTime',startTime);
			formData.append('endTime',endTime);
			$.ajax({
				url : "${pageContext.request.contextPath}/exportXlmsData",
				type : "POST",
				data : formData,
				async : false,
				cache : false,
				contentType : false,
				processData : false,
				success : function(data) {
						if(data=="1"){
							alert("数据导出成功，请查看");
						}else{
							alert("数据导出失败,请联系该软件的厂商");
						}
				},
				error : function() {
				}
			});
	  });
	  
	  /****/
	  $("#statss").click(function(){
		  startTime = $("#planDateStart1").val() +" " +  startTimehms;
		  endTime = $("#planDateStart2").val() +" " + endTimehms;
		  var formData = new FormData();
		  formData.append('startTime',startTime);
		  formData.append('endTime',endTime);
		  formData.append('p12rc',$("#p12recipse").val());
		  formData.append('q12rc',$("#q12recipse").val());
		  formData.append('r12rc',$("#r12recipse").val());
		  formData.append('h12rc',$("#h12recipse").val());
		  formData.append('i12rc',$("#i12recipse").val());
		  formData.append('i22rc',$("#i22recipse").val());
		  formData.append('k12rc',$("#k12recipse").val());
		  formData.append('k22rc',$("#k22recipse").val());
		  formData.append('l12rc',$("#l12recipse").val());
		  formData.append('l22rc',$("#l22recipse").val());
		  formData.append('m12rc',$("#m12recipse").val());
		  alert("数据库监控成功!倒计时10S开始")
		  setTimeout(function(){
			  $.ajax({
				  url:"${pageContext.request.contextPath}/fpy",
				  type:"POST",
				  data: formData,
				  async: false,
		          cache: false,
		          contentType: false,
		          processData: false,
				  success:function(data){
					 console.log(data)
					  
					 $("#p12total").html(data.p12fpy.p12total);
					 var p12board =$("#p12recipse").val();
					 $("#p12fail").html('<a target="_blank"  href="failList?failTest=V810-8086S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ p12board +' ">' + data.p12fpy.p12fail + '</a>' )
					 $("#p12pass").html(data.p12fpy.p12pass);
					 $("#p12fpy").html(data.p12fpy.p12fpy);
					 
					 $("#q12total").html(data.q12fpy.q12total);
					 var q12board =$("#q12recipse").val();
					 $("#q12fail").html('<a target="_blank"  href="failList?failTest=V810-3325S2EX&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ q12board +' ">' + data.q12fpy.q12fail + '</a>' )
					 $("#q12pass").html(data.q12fpy.q12pass);
					 $("#q12fpy").html(data.q12fpy.q12fpy);
					 
					 $("#r12total").html(data.r12fpy.r12total);
					 var r12board =$("#r12recipse").val();
					 $("#r12fail").html('<a target="_blank"  href="failList?failTest=V810-8088S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ r12board +' ">' + data.r12fpy.r12fail + '</a>' )
					 $("#r12pass").html(data.r12fpy.r12pass);
					 $("#r12fpy").html(data.r12fpy.r12fpy);
					 
					 $("#h12total").html(data.h12fpy.h12total);
					 var h12board =$("#h12recipse").val();
					 $("#h12fail").html('<a target="_blank"  href="failList?failTest=V810-3328S2EX&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ h12board +' ">' + data.h12fpy.h12fail + '</a>' )
					 $("#h12pass").html(data.h12fpy.h12pass);
					 $("#h12fpy").html(data.h12fpy.h12fpy);
					 
					 $("#i12total").html(data.i12fpy.i12total);
					 var i12board =$("#i12recipse").val();
					 $("#i12fail").html('<a target="_blank"  href="failList?failTest=V810-3327S2EX&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ i12board +' ">' + data.i12fpy.i12fail + '</a>' )
					 $("#i12pass").html(data.i12fpy.i12pass);
					 $("#i12fpy").html(data.i12fpy.i12fpy);
					 
					 $("#i22total").html(data.i22fpy.i22total);
					 var i22board =$("#i22recipse").val();
					 $("#i22fail").html('<a target="_blank"  href="failList?failTest=V810-3323S2EX&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ i22board +' ">' + data.i22fpy.i22fail + '</a>' )
					 $("#i22pass").html(data.i22fpy.i22pass);
					 $("#i22fpy").html(data.i22fpy.i22fpy);
					 
					 $("#k12total").html(data.k12fpy.k12total);
					 var k12board =$("#k12recipse").val();
					 $("#k12fail").html('<a target="_blank"  href="failList?failTest=V810-8085S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ k12board +' ">' + data.k12fpy.k12fail + '</a>' )
					 $("#k12pass").html(data.k12fpy.k12pass);
					 $("#k12fpy").html(data.k12fpy.k12fpy);
					 
					 $("#k22total").html(data.k22fpy.k22total);
					 var k22board =$("#k22recipse").val();
					 $("#k22fail").html('<a target="_blank"  href="failList?failTest=V810-8070S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ k22board +' ">' + data.k22fpy.k22fail + '</a>' )
					 $("#k22pass").html(data.k22fpy.k22pass);
					 $("#k22fpy").html(data.k22fpy.k22fpy);
					 
					 $("#l12total").html(data.l12fpy.l12total);
					 var l12board =$("#l12recipse").val();
					 $("#l12fail").html('<a target="_blank"  href="failList?failTest=V810-8064S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ l12board +' ">' + data.l12fpy.l12fail + '</a>' )
					 $("#l12pass").html(data.l12fpy.l12pass);
					 $("#l12fpy").html(data.l12fpy.l12fpy);
					 
					 $("#l22total").html(data.l22fpy.l22total);
					 var l22board =$("#l22recipse").val();
					 $("#l22fail").html('<a target="_blank"  href="failList?failTest=V810-8057S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ l22board +' ">' + data.l22fpy.l22fail + '</a>' )
					 $("#l22pass").html(data.l22fpy.l22pass);
					 $("#l22fpy").html(data.l22fpy.l22fpy);
					 
					 $("#m12total").html(data.m12fpy.m12total);
					 var m12board =$("#m12recipse").val();
					 $("#m12fail").html('<a target="_blank"  href="failList?failTest=V810-8096S2&startTime='+ startTime +'&endTime='+ endTime +'&boardType='+ m12board +' ">' + data.m12fpy.m12fail + '</a>' )
					 $("#m12pass").html(data.m12fpy.m12pass);
					 $("#m12fpy").html(data.m12fpy.m12fpy);
				  },
				  error: function(){
				  }
			  });
		  },10000);
	  });
	  RemainTime();
	  
});

var iTime = 11;
function RemainTime(){
	if (iTime >= 0){
		if(iTime==0){
			clearTimeout(Account);
			iTime = 11;
			setTimeout(RemainTime,1000);
			iTime=iTime-1;
			$("#timeSpan").html(iTime);
		}else{
			Account = setTimeout(RemainTime,1000);
			iTime=iTime-1;
			$("#timeSpan").html(iTime);
		}
	}
}	
</script>
<style type="text/css">
fieldset {
	border-top: 1px solid #C8D9E4;
	border-right: 1px solid #C8D9E4;
	border-bottom: 1px solid #C8D9E4;
	border-left: 1px solid #C8D9E4;
	margin-top: 10px;
	margin-left: 10px;
	margin-right: 10px;
	margin-bottom:20px;
	
}
legend {
	color: #014E82;
	font-weight: bold;
	padding: 5px;
	font-size: 12px;
}


.CContent {
    border: 1px solid #5F8FB0;
    background-color: #FFFFFF;
    margin-top: 0px;
}

#div2{
width: 100%;
				height: 56px;
background:url("img/nav04.gif") repeat-x;
margin-bottom:8px;

}

#desc{
  color:rgb(0, 89, 181);
  margin-left: 100px;
  font-size:30px;
  font-family: "隶书";
  line-height:56px;
  
  font-weight:bold;
  float:left;
}

.btnwatch{
      border-style: none;
    border-width: 0px;
    font-family: "宋体";
    font-size: 12px;
    color: #000000;
    text-align: center;
    background-image: url(img/button03.gif);
    width: 63px;
    height: 20px;
    font-weight: bold;

}

#tb1{
    display: table;
    font-size: 12px;
    border-collapse: collapse;
    border-spacing: 2px;
    text-align:center;
}

#tb1 .TDHead {
    border-bottom: 1px solid #5F8FB0;
    height: 16px;
    font-weight: bold;
    background-color: #C5D7E2;
}
.superLink{
   text-decoration: none;
   color:#000;

}
.CContent2{

   border: 1px solid #5F8FB0;
    background-color: #FFFFFF;
    margin-top: 0px;
    display:block;
    heigth:600px;
 
}
.btnwatch1{
  background: url("img/WebResource.png") repeat-x 0 -197px;
  border-style:none;
  color:blue;
  font-weight: bold;
  width:130px;
}
#timewrap3 {
color:green;
}
</style>
</head>
<body>
<!-- <input type="button" value="test" id="test" /><a  target="_blank"  href="ftp://172.26.17.49">ftp Link</a> -->
<div id="div1" class="CContent88">
     <div id="div2" class="navg">
          <div id="desc" >
              PU9 SMT AXI良率监控系统<span style="font-size:14px;">build @2020.06.12 ~ @2020.11.17 V1.1.1</span>
          </div>
          <div id="timedy"></div>
     </div>
</div>
<div id="" class="CContent">
	<fieldset>
		<legend>查询时间设置</legend>
		<div id="timewrap">
	               日期从: <img src="img/datePicker.gif" align="middle" alt="FromDate" /> 
		   <input name="planDateStartTime"  type="text" id="planDateStart1"  style="width: 100px;" onclick="WdatePicker()" class="Wdate" /> 
		   <select id="select1">
		       <option value="08:00:00">0800</option>
			   <option value="09:00:00">0900</option>
		       <option value="10:00:00">1000</option>
		       <option value="11:00:00">1100</option>
		       <option value="12:00:00">1200</option>
		       <option value="13:00:00">1300</option>
		       <option value="14:00:00">1400</option>
		       <option value="15:00:00">1500</option>
		       <option value="16:00:00">1600</option>
		       <option value="17:00:00">1700</option>
		       <option value="18:00:00">1800</option>
		       <option value="19:00:00">1900</option>
		       <option value="20:00:00">2000</option>
		       <option value="21:00:00">2100</option>
		       <option value="22:00:00">2200</option>
		       <option value="23:00:00">2300</option>
		       <option value="00:00:00">0000</option>
		       <option value="01:00:00">0100</option>
		       <option value="02:00:00">0200</option>
		       <option value="03:00:00">0300</option>
		       <option value="04:00:00">0400</option>
		       <option value="05:00:00">0500</option>
		       <option value="06:00:00">0600</option>
		       <option value="07:00:00">0700</option>
		   </select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		      日期到:<img src="img/datePicker.gif" align="middle" alt="FromDate" />
		   <input name="planDateEndTime" type="text" id="planDateStart2" style="width: 100px;" onclick="WdatePicker()" class="Wdate" /> 
	       <select id="select2">
			   <option value="08:00:00">0800</option>
			   <option value="09:00:00">0900</option>
		       <option value="10:00:00">1000</option>
		       <option value="11:00:00">1100</option>
		       <option value="12:00:00">1200</option>
		       <option value="13:00:00">1300</option>
		       <option value="14:00:00">1400</option>
		       <option value="15:00:00">1500</option>
		       <option value="16:00:00">1600</option>
		       <option value="17:00:00">1700</option>
		       <option value="18:00:00">1800</option>
		       <option value="19:00:00">1900</option>
		       <option value="20:00:00">2000</option>
		       <option value="21:00:00">2100</option>
		       <option value="22:00:00">2200</option>
		       <option value="23:00:00">2300</option>
		       <option value="00:00:00">0000</option>
		       <option value="01:00:00">0100</option>
		       <option value="02:00:00">0200</option>
		       <option value="03:00:00">0300</option>
		       <option value="04:00:00">0400</option>
		       <option value="05:00:00">0500</option>
		       <option value="06:00:00">0600</option>
		       <option value="07:00:00">0700</option>
		   </select>
		</div>
	</fieldset>
	<fieldset style="width:400px;">
		<legend>功能区域</legend>
		<div id="timewrap2">
	          <input type="button" value="开启监控" class="btnwatch"  id="statss"/>
	          <input type="button" value="停止监控" class="btnwatch" id="stopwatch" /> 
	          <input type="button" value="清空数据" class="btnwatch"  id="clearSNInfor" />
	          <input type="button" value="刷新频率" class="btnwatch"  id="" />  
	          <span id="timeSpan"  ></span>
		</div>
	</fieldset>
	<fieldset>
		<legend>Excel数据导出</legend>
		<div id="timewrap3">
	          <input type="button" value="一键导出" id="exportData" class="btnwatch" />
	         
		</div>
	</fieldset>
	</div>
	<div id="" class="CContent2" style="margin-top:10px;">
	 	<fieldset>
			<legend>2F&3F所有良率动态数据</legend>
			<div id="timewrap4">
		         <table  border="1" align="center" cellpadding="2" cellspacing="1" borderColor="gray" style="width:100%" id="tb1">
		             <tr>
		               <td class="TDHead" style="width:80px;">Date</td>
		               <td class="TDHead" style="width:60px;">Line</td>
		               <td class="TDHead" style="width:98px;">机器编号</td>
		               <td class="TDHead" style="width:60px;">Total</td>
						<td class="TDHead" style="width:60px;">Fail</td>
						<td class="TDHead" style="width:60px;">Pass</td>
						<td class="TDHead" style="width:80px;">Function</td>
						<td class="TDHead" style="width:80px;">FPY</td>
						<td class="TDHead" style="width:120px;">NG Top3</td>
						<td class="TDHead" style="width:100px;">Pass SN List</td>
		                <td class="TDHead" style="">NG SN</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>P12</td>
		                 <td>V810-8086S2</td>
		                 <td id="p12total">800</td>
		                 <td id="p12fail">10</td>
		                 <td id="p12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="p12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>Q12</td>
		                 <td>V810-3325S2EX</td>
		                 <td id="q12total">800</td>
		                 <td id="q12fail">10</td>
		                 <td id="q12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="q12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		            
		         <!--     <tr>
		                 <td class="timesetting"> </td>
		                 <td>R12</td>
		                 <td>V810-8088S2</td>
		                 <td id="r12total">800</td>
		                 <td id="r12fail">10</td>
		                 <td id="r12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="r12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr> -->
		              <tr>
		                 <td colspan="11">2F</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>H12</td>
		                 <td>V810-3328S2EX</td>
		                 <td id="h12total">800</td>
		                 <td id="h12fail">10</td>
		                 <td id="h12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="h12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>I12</td>
		                 <td>V810-3327S2EX</td>
		                 <td id="i12total">800</td>
		                 <td id="i12fail">10</td>
		                 <td id="i12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="i12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>I22</td>
		                 <td>V810-3323S2EX</td>
		                 <td id="i22total">800</td>
		                 <td id="i22fail">10</td>
		                 <td id="i22pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="i22fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>J12</td>
		                 <td>V810-8096S2</td>
		                 <td id="m12total">800</td>
		                 <td id="m12fail">10</td>
		                 <td id="m12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="m12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>K12</td>
		                 <td>V810-8085S2</td>
		                 <td id="k12total">800</td>
		                 <td id="k12fail">10</td>
		                 <td id="k12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="k12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>K22</td>
		                 <td>V810-8070S2</td>
		                 <td id="k22total">800</td>
		                 <td id="k22fail">10</td>
		                 <td id="k22pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="k22fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>L12</td>
		                 <td>V810-8064S2</td>
		                 <td id="l12total">800</td>
		                 <td id="l12fail">10</td>
		                 <td id="l12pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="l12fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>L22</td>
		                 <td>V810-8057S2</td>
		                 <td id="l22total">800</td>
		                 <td id="l22fail">10</td>
		                 <td id="l22pass">700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td id="l22fpy">98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		          
		         </table>
			</div>
	    </fieldset>
	</div>
	 	
	<div id="" class="CContent2" style="margin-top:10px;">
	<fieldset>
		<legend>功能介绍区域</legend>
		<div id="timewrap3">
	          <div>版本说明，V1.1.1
经过几天的试验发现，复制xml并不可取，处理难度大，还是采用6月份解决方案 上传xml到服务器，通过分析xml往数据库添加数据。优化以前一片板子只统计到一个不良位置。
只添加fail的数据，pass的xml 数据终止添加数据库。减少数据库文件的增加。(缺点是总数统计不到)。对拉资料的xml 的数据不会往数据库 添加。在上一代的产品中已经做到这一点。那条线如果没有fail的数据将不生成对应的Excel。令人头疼的fileWatcher有时候被人关掉，导致数据丢失。新版中vvts中fileWatcherSystem.exe采用开机自启动，强制关闭显示在任务栏，显示在系统托盘里面。关闭需要密码。后端采用java ssm框架，前端网页js。数据库mysql，
excel的分析还是采用python。fpy 不良系统采用全新的UI页面 设计。去掉冗余的部分。网页的特点是灵活。任何一台连了局域网的电脑只要记得网址，就可以跑起来。</div>
		</div>
	</fieldset>
	</div>
	<div id="" class="CContent2" style="margin-top:10px;">
	<fieldset>
		<legend>技术支持</legend>
		<div id="timewrap4">
		   Java,Spring,SpringMVC,Mybatis,Python,Alibaba JDBCTemplate,CSDN,Baidu,Ajax,Twitter JQuery Framework,Mysql DataBase, apache tomcat 8.5,Eclipse,.net Framework C# Winform,js,ftp Protocol
	    </div>
	</fieldset>
	</div>
</body>
</html>