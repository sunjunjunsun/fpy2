window.onload=function(){
	document.getElementById("planDateStart1").value=yesday();
	document.getElementById("planDateStart2").value=today();
	var shiz = document.getElementById("timedy");
	setInterval(function() {
	var timer = new Date();
	var date1 = timer.getDate()
	var month = timer.getMonth() + 1;
	var Year = timer.getFullYear();
	var hour = timer.getHours();
	var min = timer.getMinutes();
	var sec = timer.getSeconds();
shiz.innerHTML = Year + "-" + toDouble(month) + "-" + toDouble(date1) + "    " + toDouble(hour) + ":" + toDouble(min) + ":" + toDouble(sec);
	}, 1000);
}

/* http://localhost:8089/fpy/test.jsp **/
function toDouble(num){
	if(num<10){
		return "0"+num;
	}else{
		return num;
	}
}
function today(){
	var timer = new Date();
	var date = timer.getDate()
	var month = timer.getMonth() + 1;
	var Year = timer.getFullYear();
	return Year+"-"+toDouble(month)+"-"+toDouble(date)
}
function yesday(){
	var timer = new Date();
	var date = timer.getDate()-1
	var month = timer.getMonth() + 1;
	var Year = timer.getFullYear();
	return Year+"-"+toDouble(month)+"-"+toDouble(date)
}

