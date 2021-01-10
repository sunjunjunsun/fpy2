<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
		<style>
		
		.demo10{
		   width:300px;
		   height:30px;
		   padding-left:10px;
		   margin-bottom:10px;
		
		}
			td,
			tr {
				padding: 5px;
			}
			.navbg {
				background: rgb(0, 255, 0);
			}
			.warm {
				background: rgb(255, 255, 0);
			}
		</style>
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/WdatePicker.js"></script> 
<script type="text/javascript" src="js/calendar.js"></script> 
<script type="text/javascript" src="js/config.js"></script> 



<script type="text/javascript">

var htmls="";

function deleteUser(id){
	  
	console.log(id)
	  
	$.ajax({
		
		url:"${pageContext.request.contextPath}/detailList?sn="+ id,
		 type:"GET",
		  data: "",
		  async: false,
         cache: false,
         contentType: false,
         processData: false,
		  success:function(data){
		 console.log(data)
		 var html = data.serialnumber + " | " + data.status[0].location + " | " +  data.status[0].pin +" | " +  data.status[0].errcode + "<br/>";
		 htmls+=html;
		  $("#list").html(htmls);
		    
		 
		  }
		  ,error:function(){
			  
			 
			  
		  }
		
		
	}); 
	
  } 




  $(function(){
	  
	  
	  
	  
	  $("#qonebtn").click(function(){
		  var qoneboard = $("#q1").val()
		  $.ajax({
				url:"${pageContext.request.contextPath}/failListjson?failTest=V810-3325S2EX&boardType="+qoneboard+"",
				 type:"GET",
				  data: "",
				  async: false,
		         cache: false,
		         contentType: false,
		         processData: false,
				  success:function(data){
				 console.log(data)
			         var temp = $.parseJSON(data);
				 console.log(temp)
				 if(temp!="" || temp!=null){
					 var qonefailsn = "";
					 for(var i=0;i<temp.length;i++){
						 var sss=temp[i]
						 qonefailsn+="<a  href='javascript:deleteUser(\"" +  temp[i] + "\" );'>"+temp[i]+"</a>" +" 、 "
					 }
					 $("#qonesn").html(qonefailsn);
				 } 
				  }
				  ,error:function(){
				  }
			});
	  });
	  
	  
	  $("#ponebtn").click(function(){
		  var poneboard = $("#p1").val()
		  $.ajax({
				url:"${pageContext.request.contextPath}/failListjson?failTest=V810-8086S2&boardType="+poneboard+"",
				 type:"GET",
				  data: "",
				  async: false,
		         cache: false,
		         contentType: false,
		         processData: false,
				  success:function(data){
				 console.log(data)
			         var temp = $.parseJSON(data);
				 console.log(temp)
				 if(temp!="" || temp!=null){
					 var ponefailsn = "";
					 for(var i=0;i<temp.length;i++){
						 var sss=temp[i]
						 ponefailsn+="<a  href='javascript:deleteUser(\"" +  temp[i] + "\" );'>"+temp[i]+"</a>" +" 、 "
					 }
					 $("#ponesn").html(ponefailsn);
				 } 
				  }
				  ,error:function(){
				  }
			});
	  });
	  
	  
	  
	  $("#ronebtn").click(function(){
		  var roneboard = $("#r1").val()
		  $.ajax({
				url:"${pageContext.request.contextPath}/failListjson?failTest=V810-8088S2&boardType="+roneboard+"",
				 type:"GET",
				  data: "",
				  async: false,
		         cache: false,
		         contentType: false,
		         processData: false,
				  success:function(data){
				 console.log(data)
			         var temp = $.parseJSON(data);
				 console.log(temp)
				 if(temp!="" || temp!=null){
					 var ronefailsn = "";
					 for(var i=0;i<temp.length;i++){
						 var sss=temp[i]
						 ronefailsn+="<a  href='javascript:deleteUser(\"" +  temp[i] + "\" );'>"+temp[i]+"</a>" +" 、 "
					 }
					 $("#ronesn").html(ronefailsn);
				 } 
				  }
				  ,error:function(){
				  }
			});
	  });
	  
	  
	  
	  $("#stopwatch").click(function(){
		  window.location.reload()
	  });
	  
	  
	  $("#statss").click(function(){
		  var formData = new FormData($( "#uform" )[0]);
		  alert("数据库监控成功!倒计时10S开始")
		  setTimeout(function(){
			  $.ajax({
				  url:"${pageContext.request.contextPath}/hellos",
				  type:"POST",
				  data: formData,
				  async: false,
		          cache: false,
		          contentType: false,
		          processData: false,
				  success:function(data){
					 console.log(data)
					  /*console.log(data.totalpone)*/
					  $("#totalpone").html(data.totalpone)
					  $("#modelpone").html($("#p1").val())
					  var poneboard =$("#p1").val();
					  $("#failpone").html('<a target="_blank"  href="failList?failTest=V810-8086S2&boardType='+ poneboard +' ">' + data.failpone + '</a>' )
					  $("#passpone").html(data.passpone)
					  $("#fpy").html(data.fpy + '%')
				
					  
					  
					   
					  
					  $("#totalqone").html(data.totalqone)
					  var qoneboard = $("#q1").val()
					  $("#failqone").html('<a target="_blank"  href="failList?failTest=V810-3325S2EX&boardType='+ qoneboard +'">' + data.failqone  + '</a>')
					  $("#passqone").html(data.passqone)
					  $("#fpyqone").html(data.fpyqone + '%')
					    $("#modelqone").html($("#q1").val())
					  
					  $("#totalrone").html(data.totalrone)
					   var roneboard = $("#r1").val()
					  $("#failrone").html('<a target="_blank"  href="failList?failTest=V810-8088S2&boardType='+ roneboard +'">' + data.failrone  + '</a>')
					  $("#passrone").html(data.passrone)
					  $("#fpyrone").html(data.fpyrone + '%')
					  $("#modelrone").html($("#r1").val())
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

</head>
<body>


<input name="ctl00$MainContent$txtFromDate" type="text" id="ctl00_MainContent_txtFromDate" onclick="WdatePicker()" class="NormalTextBox" />
                    <img src="img/datePicker.gif" align="middle" alt="FromDate" />


<hr/>

 <form action="" id="uform">
P1:<input class="demo10" type="text"  id="p1"  class="pone" value="S5BA-MB-00J0-B3H-DD-02" name="username" />
   Q12:<input class="demo10" id="q1" type="text" value="S5BQ_MB_00G0_B3I_DD_02" name="qonemodel" />
    R12:<input class="demo10" id="r1" type="text" value="F09-MB-00D0-D3A-DD-02" name="ronemodel" /> 
</form>

<hr/>
	<form action="" id="uform1234">
	   <input type="button" value="开启监控"  id="statss"/>
	   <input type="button" value="停止监控" id="stopwatch" /> 
	   <hr/>
	</form>
		<div id="wrap">
			<div id="head">

				Date: <input type="text" value="2020-06-01" id="inpdata" />
				<select>
					<option>Day</option>
				</select> At: <select>
					  <option>0800</option>
				</select> To: <select>
					<option>2000</option>
				</select>

				<span id="shiz" style="color: blue;">2020-06-01 12:00:00</span>

			</div>

			<div id="datagradList">

				<table border="1" bordercolor="blue" style="border-collapse: collapse;text-align: center;margin-top: 10px;">
					<tr>

						<td>线别</td>
						<td>Model</td>
						<td>Total</td>
						<td>Fail</td>
						<td>Pass</td>
						<td>Function</td>
						<td>FPY</td>
						<td>NG Location</td>
						<td>NG SN</td>
					</tr>
					<tr>

						<td>P12</td>
						<td id="modelpone"></td>
						<td class="navbg" id="totalpone"></td>
						<td class="navbg" id="failpone"></td>
						<td class="warm" id="passpone"></td>
						<td class="navbg" id=""><input id="ponebtn" type="button" value="刷新" /></td>
						<td class="navbg" id="fpy"></td>
						<td style="width:500px;font-size:6px;" class="navbg" >U38*2、R852*2</td>
						<td style="width:500px;font-size:6px;" class="navbg" id="ponesn" >HB09230056、HB092653</td>
					</tr>
					<tr>

						<td>Q12</td>
						<td id="modelqone"></td>
						<td class="navbg" id="totalqone"></td>
						<td class="navbg" id="failqone"></td>
						<td class="navbg" id="passqone"></td>
						<td class="navbg" id=""><input id="qonebtn" type="button" value="刷新" /></td>
						<td class="navbg" id="fpyqone"></td>
						<td style="width:500px;font-size:6px;" class="navbg" >U38*2、R852*2</td>
						<td style="width:500px;font-size:6px;" class="navbg" id="qonesn" >HB09230056、HB092653</td>
					</tr>
					<tr>

						<td>R12</td>
						<td id="modelrone"></td>
						<td class="navbg" id="totalrone"></td>
						<td class="navbg" id="failrone"></td>
						<td class="navbg" id="passrone"></td>
						<td class="navbg" id=""><input id="ronebtn" type="button" value="刷新" /></td>
						<td class="navbg" id="fpyrone"></td>
						<td style="width:500px;font-size:6px;" class="navbg" >U38*2、R852*2</td>
						<td style="width:500px;font-size:6px;" class="navbg" id="ronesn">HB09230056、HB092653</td>
					</tr>

				</table>

			</div>

		</div>
	
	<hr/>
	倒计时:<span style="color:green" id="timeSpan"></span> 刷新一次



<hr/>

<div id="list"></div>


<div id="listpone"></div>

<div id="listrone"></div>

<h1>Session Recipes</h1>

 <c:forEach items="${demoboardTypepone}" var="s">
       P12:<input type="text" value="${s}" style=" width:220px;height:30px;" />
  </c:forEach>
  <hr/>
  <c:forEach items="${demoboardTypeqone}" var="s">     
       Q12:<input type="text" value="${s}" style=" width:220px;height:30px;" />
  </c:forEach>
  <hr/>
  <c:forEach items="${demoboardTyperone}" var="s">  
       R12:<input type="text" value="${s}" style=" width:220px;height:30px;" />
   </c:forEach>



<script>
			function getTimne() {
				var timer = new Date();
				var date = timer.getDate()
				var month = time.getMonth() + 1;
				var Year = timer.getFullYear();
				var hour = timer.getHours();
				var min = timer.getMinutes();
				var sec = timer.getSeconds();
				return Year + "-" + month + "-" + date + "    " + hour + ":" + min + ":" + sec;
			}
			window.onload = function() {
				var shiz = document.getElementById("shiz");
		        var inpdata = document.getElementById("inpdata")
		    	var timer2 = new Date();
				var date2 = timer2.getDate()
				var month2 = timer2.getMonth() + 1;
				var Year2 = timer2.getFullYear();
				inpdata.value = Year2 + "-" + month2 + "-" + date2
				setInterval(function() {
				var timer = new Date();
				var date1 = timer.getDate()
				var month = timer.getMonth() + 1;
				var Year = timer.getFullYear();
				var hour = timer.getHours();
				var min = timer.getMinutes();
				var sec = timer.getSeconds();
			shiz.innerHTML = Year + "-" + month + "-" + date1 + "    " + hour + ":" + min + ":" + sec;
				}, 1000)
			}
		</script>	
</body>

</html>