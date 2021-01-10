


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


function today01(){
	var timer = new Date();
	var date = timer.getDate()
	var month = timer.getMonth() + 1;
	return toDouble(month)+"-"+toDouble(date)
}

function toDouble(num){
	if(num<10){
		return "0"+num;
	}else{
		return num;
	}
}

  $(function(){
	  $(".timesetting").html(today01())
	 
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
	  
	  
	 
  });
  
