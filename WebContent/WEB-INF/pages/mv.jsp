<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="IUTF-8">
<title></title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">



</script>

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
		 
		 var arr=  data.status;
		 for(var i=0;i<arr.length;i++){
			 console.log(arr[i])
			if(arr[i].repairstatus=="Repaired"){
				 var html = data.serialnumber + " | " + data.status[i].location + " | " +  data.status[i].pin +" | " +  data.status[i].errcode + "<br/>";
			} else{
				
				
			}
			 
		 }
		 
		
		 htmls+=html;
		  $("#list").html(htmls);
		    
		 
		  }
		  ,error:function(){
			  
			 
			  
		  }
		
		
	});
	
  } 

  
   $(function(){
	   
	  
	  
	   
   })

</script>

</head>
<body>
<h1>不良列表信息</h1>


<c:forEach items="${failList}" var="s" varStatus="s1">
 <div> <span>${s1.count}</span> <a  href="javascript:deleteUser('${s}')">${s}</a> <span></span></div>
 </c:forEach>
<div id="list"></div>
</body>
</html>