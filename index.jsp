<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QSMC导航系统</title>

		<style>
			* {
				margin: 0;
				padding: 0;
			}
			
			ul {
				list-style: none;
			}
			
			#wrap {
				margin: 0 auto;
				width: 960px;
				height: 960px;
			}
			
			#head {
				width: 960px;
				height: 100px;
				background-image: url(./img/head.jpg);
			}
			
			#nav {
    background-color: #FFFFFF;
    background-image: url(./img/nav_bg.jpg);
    height: 59px;
    width: 960px;
}

#nav ul {
    padding: 0px;
    list-style-type: none;
    width: 756px;
    margin-top: 0px;
    margin-right: auto;
    margin-bottom: 0px;
    margin-left: auto;
}
#nav ul li {
    float: left;
    height: 59px;
    width: 126px;
    line-height: 59px;
    background-image: url(./img/nav_line.jpg);
    background-repeat: no-repeat;
    background-position: right;
    text-align: center;
}
#nav ul li a.first {
    background-color: #FFFFFF;
    color: #06F;
}

#nav ul li a {
    display: block;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    color: #FFF;
}


#content {
    height: 571px;
    width: 751px;
    margin-top: 5px;
    border: 1px solid #CCCCCC;
}

#item{
	height: 27px;
	width: 100%;
	background: #F3F4EE;
	color:#000099 ;
	font-weight: bold;
	text-align: left;
}

.content_tb_img {
    background-image: url(./img/content_title_img.jpg);
    width: 13px;
    float: left;
    background-repeat: no-repeat;
    height: 12px;
}

.content_tb_txt {
    float: left;
    width: 150px;
    text-align: left;
    color: #009900;
    text-indent: 5px;
}


.content_tb_data {
    width: 730px;
    margin-left: 10px;
    border-collapse: collapse;
    border-top-style: none;
    border-right-style: none;
    border-bottom-style: none;
    border-left-style: none;
    margin-top: 10px;
    font-size: 13px;
}

.content_tb_data td {
    width: 91px;
    line-height: 28px;
    border-collapse: collapse;
    border: solid #CCCCCC 1px;
    text-align: center;
}
.content_tb_data a {
    text-decoration: none;
    color: #000000;
}
		</style>
	</head>

	<body>

		<div id="wrap">
			<div id="head"></div>
			<div id="nav">
				<div align="center">
					<ul>
						<li> <a href="#" class="first">产线系统</a></li>
						<li> <a href="#">报表系统</a> </li>
						<li> <a href="#">签核系统</a> </li>
						<li> <a href="#">监控系统</a> </li>
						<li class="end"> <a href="#">生产辅助</a> </li>
					</ul>
				</div>
			</div>
			<div id="content">
				<div id="item">FA系统</div>
				<div class="content_tb_img"></div>
				<div class="content_tb_txt">NB</div>
				<table class="content_tb_data">
					<tr>
						<td><a target="_blank" href="scanner.html">AXI刷条码</a></td>
						<td><a target="_blank" href="http://172.26.17.49:8080/e_sop/">AXI自己的SOP播放系统</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="baoyang.html" >AXI保养系统</a></td>
						<td><a target="_blank" href="code.jsp">AXI条码生成器</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="querySnLength.jsp">Sn长度Calc</a></td>
						<td><a target="_blank" href="softlist.jsp">AXI软件下载</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="login.jsp">AXI登录</a></td>
						<td><a target="_blank" href="register.jsp">AXI注册</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="people.jsp">AXI工程名单</a></td>
					    <td><a target="_blank" href="jietu.jsp">AXI截图SOFT</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="me_telephonenumber.jsp">ME联系方式</a></td>
						<td><a target="_blank" href="http://172.26.17.49:8080/day17/findUserByPageServlet">AXI机种CycleTime</a></td>
					</tr>
					<tr>
						<td><a target="_blank" href="http://172.26.17.49:8080/files/user">文件管理系统</a></td>
						<td><a target="_blank" href="http://172.26.17.49:8080/zaijumanager/findUserByPageServlet">AXI载具管理系统</a></td>
					</tr>
	<tr>
						<td><a target="_blank" href="http://172.26.17.49:8080/dem1">实时动态监控不良系统</a></td>
						<td><a target="_blank" href="http://172.26.17.49:8080/dem2">AXI专用 SNInformation</a></td>
					</tr>

					<tr>
<td><a target="_blank" href="http://172.26.17.49:8080/fpy/index">二楼三楼实时动态监控不良系统</a></td>
<td><a target="_blank" href="http://172.26.17.49:8080/fpy2/index">新版本Top3系统V1.1.1</a></td>
                                        </tr>

				</table>
			</div>
			<div style="text-align: center;">@quanta.cn 2020.05.21</div>
		</div>

	</body>

</html>