<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<link rel="shortcut icon" type="image/x-icon"
	href="${ctx}/static/common/favicon.ico" media="screen" />
<link rel="stylesheet"
	href="${ctx}/static/adminlte/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${ctx}/static/common/libs/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctx}/static/common/css/base.css">
<style type="text/css">
h1 {
	width: 540px;
	margin: 110px auto 15px;
	overflow: hidden;
}

h2 {
	position: absolute;
	top: 17px;
	left: 187px;
	margin: 0;
	font-size: 0;
	text-indent: -999px;
	-moz-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	cursor: default;
	width: 534px;
}

.link a {
	margin-right: 1em;
}

.link, .texts {
	width: 540px;
	margin: 0 auto 15px;
	color: #505050;
}

.texts {
	line-height: 2;
}

.texts dd {
	margin: 0;
	padding: 0 0 0 15px;
}

.texts ul {
	margin: 0;
	padding: 0;
}

.portal {
	color: #505050;
	text-align: center;
	white-space: nowrap;
	word-spacing: 0.45em;
}

.portal a:link, .portal a:visited {
	color: #505050;
	word-spacing: 0;
}

.portal a:hover, .portal a:active {
	color: #007ab7;
}

.STYLE1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 65px;
}
</style>
<!--[if lte IE 8]>
<style type="text/css">
h2 em{color:#e4ebf8;}
</style>
<![endif]-->
</head>
<body>


	<section class="content">
		<div>
			<div class="ibox float-e-margins">
				<div class="ibox-content">
					<h1>
						<img src="${ctx }/static/common/images/error/404.jpg" alt="404" />
					</h1>
					<p class="link">
						<a href="${basePath}">&#9666;返回首页</a>
					</p>
					<dl class="texts">
						<dt>我们正在联系火星总部查找您所需要的页面.请返回等待信息..</dt>
						<dd>
							<ul>
								<li>不要返回吗?</li>
								<li>确定不要返回吗?</li>
								<li>真的真的确定不要返回吗?</li>
								<li>好吧.还是随便你要不要真的确定返回吧</li>
							</ul>
						</dd>
					</dl>
				</div>
			</div>
		</div>
		<!-- /.row -->
	</section>

</body>
</html>
