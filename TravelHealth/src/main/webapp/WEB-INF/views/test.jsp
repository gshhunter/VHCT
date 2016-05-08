<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>可最小化和关闭的网页右下角固定悬浮窗口</title>
<meta http-equiv="content-type" content="text/html" charset="utf-8">
<!--把下面代码加到<head>与</head>之间-->
<style type="text/css">
#msg_win {
	border: 1px solid #A67901;
	background: #EAEAEA;
	width: 240px;
	position: absolute;
	right: 0;
	font-size: 12px;
	font-family: Arial;
	margin: 0px;
	display: none;
	overflow: hidden;
	z-index: 99;
}

#msg_win .icos {
	position: absolute;
	top: 2px;
	*top: 0px;
	right: 2px;
	z-index: 9;
}

.icos a {
	float: left;
	color: #833B02;
	margin: 1px;
	text-align: center;
	font-weight: bold;
	width: 14px;
	height: 22px;
	line-height: 22px;
	padding: 1px;
	text-decoration: none;
	font-family: webdings;
}

.icos a:hover {
	color: #fff;
}

#msg_title {
	background: #FECD00;
	border-bottom: 1px solid #A67901;
	border-top: 1px solid #FFF;
	border-left: 1px solid #FFF;
	color: #000;
	height: 25px;
	line-height: 25px;
	text-indent: 5px;
}

#msg_content {
	margin: 5px;
	margin-right: 0;
	width: 230px;
	height: 126px;
	overflow: hidden;
}
</style>
</head>
<body>
	<div style="height: 2000px;"></div>
	<!-- Pop-up window part -->
	<div id="msg_win"
		style="display: block; top: 490px; visibility: visible; opacity: 1;">
		<div class="icos">
			<a id="msg_min" title="最小化" href="javascript:void 0">_</a><a
				id="msg_close" title="关闭" href="javascript:void 0">×</a>
		</div>
		<div id="msg_title">www.zzsky.cn</div>
		<div id="msg_content">中国站长天空，站长建站乐园</div>
	</div>
	<script type="text/javascript" src="" />
</body>
</html>