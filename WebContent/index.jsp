<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Uploadify, Java</title>
<script src="scripts/jquery-1.7.1.js" type="text/javascript"></script>
<script src="scripts/jquery.uploadify.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
</head>
<body>
	<input type="file" id="file_upload" name="file_upload"/>
	<script type="text/javascript">
		$(function() {
			$('#file_upload').uploadify({
				'swf'      : 'flash/uploadify.swf', // swf存放的路径
				'uploader' : 'uploadify/upload'     // 处理上传的Servlet
			});
		});
	</script>
</body>
</html>
