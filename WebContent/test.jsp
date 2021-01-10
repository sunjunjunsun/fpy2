<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<input type="button" value="test" id="test" />
<div id="div1" class="CContent88">
     <div id="div2" class="navg">
          <div id="desc" >
              PU9 SMT AXI良率监控系统<span style="font-size:14px;">builder @2020.06.12 V1.1.0</span>
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
		<legend>指定程式名或机种名</legend>
		<div id="timewrap3">
	          P12<input type="text" class="btnwatch1" />
	          Q12<input type="text"  class="btnwatch1"  /> 
	          R12<input type="text"  class="btnwatch1"   />
	          H12<input type="text"  class="btnwatch1"  />  
	          I12<input type="text"  class="btnwatch1"  />  
	          I22<input type="text"  class="btnwatch1"  />  
	          K12<input type="text"  class="btnwatch1"  />  
	          K22<input type="text"  class="btnwatch1"  />  
	          L12<input type="text"  class="btnwatch1"  />  
	          L22<input type="text"  class="btnwatch1"  />  
	          M12<input type="text"  class="btnwatch1"  />  
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
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>Q12</td>
		                 <td>V810-3325S2EX</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		           
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>R12</td>
		                 <td>V810-8088S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		              <tr>
		                 <td colspan="11">2F</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>H12</td>
		                 <td>V810-3328S2EX</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>I12</td>
		                 <td>V810-3327S2EX</td>
		                 <td>800</td>
		                 <td>10</td>ss
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>I22</td>
		                 <td>V810-3323S2EX</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		              <tr>
		                 <td class="timesetting"> </td>
		                 <td>J12</td>
		                 <td>V810-8096S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>K12</td>
		                 <td>V810-8085S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>K22</td>
		                 <td>V810-8070S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>L12</td>
		                 <td>V810-8064S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
		                 <td>*</td>
		                 <td><a href="#" class="superLink">superLink</a> </td>
		                 <td>1PL03610123</td>
		             </tr>
		             <tr>
		                 <td class="timesetting"> </td>
		                 <td>L22</td>
		                 <td>V810-8057S2</td>
		                 <td>800</td>
		                 <td>10</td>
		                 <td>700</td>
		                 <td ><a href="javascript:void(0);"  class="superLink">Refresh</a></td>
		                 <td>98%</td>
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
		<legend>NG SN Information区域</legend>
		<div id="timewrap3">
	          
		</div>
	</fieldset>
	</div>
	
	
	
</body>
</html>