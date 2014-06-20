<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Uploadify Examples</title>
<script src="scripts/jquery-1.7.1.js" type="text/javascript"></script>
<script src="scripts/jquery.uploadify.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/uploadify.css">
<style type="text/css">
.red {
	color:red;
	font-size:14px;
}
#some_file_queue, ##some_file_queue_2 {
    background-color: #FFF;
    border-radius: 3px;
    box-shadow: 0 1px 3px rgba(0,0,0,0.25);
    height: 103px;
    margin-bottom: 10px;
    overflow: auto;
    padding: 5px 10px;
    width: 300px;
}
.uploadify-button {
    background-color: transparent;
    border: none;
    padding: 0;
}
.uploadify:hover .uploadify-button {
    background-color: transparent;
}
</style>
</head>
<body>
	<h1>Uploadify Example 1, auto是否自动上传文件</h1>
	<p><input type="file" name="file_upload" id="file_upload_1" /></p>
	<p><a href="javascript:$('#file_upload_1').uploadify('upload')">Upload Files</a></p>
	<script type="text/javascript">
		$(function() {
			$('#file_upload_1').uploadify({
				'auto'     : false,
				'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
				'uploader' : 'uploadify/upload' // 处理上传的Servlet
			});
		});
	</script>
	<h1>Uploadify Example 2, buttonClass设置上传button的样式 </h1>
	<p><input type="file" name="file_upload" id="file_upload_2" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_2').uploadify({
			'buttonClass' : 'red',
			'formData'     : { // 额外的参数
				'timestamp' : new Date()
			},
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 3, buttonCursor设置当鼠标hover上传文件button的显示情况,有两种值arrow(明暗交替)和hand(手型)</h1>
	<p><input type="file" name="file_upload" id="file_upload_3" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_3').uploadify({
			'buttonCursor' : 'hand',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 4, buttonImage设置上传button的背景图片</h1>
	<p><input type="file" name="file_upload" id="file_upload_4" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_4').uploadify({
			'buttonImage': 'img/button.jpg',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 5, buttonText设置上传button的文本信息</h1>
	<p><input type="file" name="file_upload" id="file_upload_5" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_5').uploadify({
			'buttonText' : 'BROWSE...',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 6, checkExisting指定判断文件是否存在的处理器，存在返回1，不存在返回0</h1>
	<p><input type="file" name="file_upload" id="file_upload_6" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_6').uploadify({
			'checkExisting' : 'uploadify/checkExist',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 7, fileObjName设置服务器端的文件名称, 服务器端存在于fieldName中</h1>
	<p><input type="file" name="file_upload" id="file_upload_7" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_7').uploadify({
			'fileObjName' : 'myImg',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 8, fileSizeLimit设置最大的文件大小，默认单位是KB</h1>
	<p><input type="file" name="file_upload" id="file_upload_8" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_8').uploadify({
			'fileSizeLimit' : '100KB',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 9, fileTypeDesc描述上传文件的特性</h1>
	<p><input type="file" name="file_upload" id="file_upload_9" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_9').uploadify({
			'fileTypeDesc' : 'Any old file you want...',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 10, fileTypeExts允许哪些文件可上传</h1>
	<p><input type="file" name="file_upload" id="file_upload_10" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_10').uploadify({
			'fileTypeExts' : '*.gif; *.jpg; *.png',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 11, height设置上传文件的button的高度，默认单位是px</h1>
	<p><input type="file" name="file_upload" id="file_upload_11" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_11').uploadify({
			'height'   : 50,
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 12, itemTemplate中有四个数值${fileID}、${instanceID}、${fileSize}、${fileName}，可供显示上传信息</h1>
	<p><input type="file" name="file_upload" id="file_upload_12" /></p>
	<script type="text/javascript">
	$(function() {
	    $("#file_upload_12").uploadify({
	        'swf'      : 'flash/uploadify.swf',
	        'uploader' : 'uploadify/upload',
	        'itemTemplate' : '<div id="\${fileID}" class="uploadify-queue-item"><div class="cancel"><a href="javascript:$(\'#\${instanceID}\').uploadify(\'cancel\', \'\${fileID}\')">X</a></div><span class="fileName">\${fileName} (\${fileSize})</span><span class="data"></span></div>'
	    });
	});									
	</script>
	<h1>Uploadify Example 13, method指定post还是get</h1>
	<input type="file" name="file_upload" id="file_upload_13" />
	<script type="text/javascript">
	$(function() {
	    $("#file_upload_13").uploadify({
	        'method'   : 'post',
	        'swf'      : 'flash/uploadify.swf',
	        'uploader' : 'uploadify/upload' 
	    });
	});
	</script>
	<h1>Uploadify Example 14, multi设置是否多文件上传</h1>
	<input type="file" name="file_upload" id="file_upload_14" />
	<script type="text/javascript">
	$(function() {
	    $("#file_upload_14").uploadify({
	    	'multi'    : false,
	        'swf'      : 'flash/uploadify.swf',
	        'uploader' : 'uploadify/upload'
	    });
	});
	</script>
	<h1>Uploadify Example 15, overrideEvents设置哪些事件将不再执行, 以下例子是指上传进度条不再更新</h1>
	<input type="file" name="file_upload" id="file_upload_15" />
	<script type="text/javascript">
	$(function() {
	    $("#file_upload_15").uploadify({
	    	'overrideEvents' : ['onUploadProgress'],
	        'swf'      : 'flash/uploadify.swf',
	        'uploader' : 'uploadify/upload'
	    });
	});
	</script>
	<h1>Uploadify Example 16, queueID指定上传信息显示的区域</h1>
	<div id="some_file_queue"></div>
	<input type="file" name="file_upload" id="file_upload_16" />
	<script type="text/javascript">
	$(function() {
	    $("#file_upload_16").uploadify({
	        'queueID'  : 'some_file_queue',
	        'swf'      : 'flash/uploadify.swf',
	        'uploader' : 'uploadify/upload'
	    });
	});
	</script>
	<h1>Uploadify Example 17, debug开启debug模式</h1>
	<p><input type="file" name="file_upload" id="file_upload_17" /></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_17').uploadify({
			'debug'    : true,
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload' // 处理上传的Servlet
		});
	});
	</script>
	<h1>Uploadify Example 18, events</h1>
	<div id="some_file_queue_2"></div>
	<p><input type="file" name="file_upload" id="file_upload_18" /></p>
	<div id="message_box"></div>
	<div id="progress"></div>
	<p><a href="javascript:$('#file_upload_18').uploadify('upload', '*')">Upload Files</a></p>
	<p><a href="javascript:$('#file_upload_18').uploadify('cancel', '*')">Cancel Upload</a></p>
	<p><a href="javascript:$('#file_upload_18').uploadify('destroy')">Destroy the instance of Uploadify</a></p>
	<p><a href="javascript:$('#file_upload_18').uploadify('disable', true)">Disable Button</a></p>
	<p><a href="javascript:$('#file_upload_18').uploadify('disable', false)">Enable Button</a></p>
	<p><a href="javascript:changeBtnText()">Change the Button Text</a></p>
	<p><a href="javascript:returnBtnText();">Read the Button</a></p>
	<script type="text/javascript">
	$(function() {
		$('#file_upload_18').uploadify({
			'auto': false,
			'queueID'  : 'some_file_queue_2',
			'swf'      : 'flash/uploadify.swf', // 选择文件flash文件
			'uploader' : 'uploadify/upload', // 处理上传的Servlet
			'onCancel' : function(file) {
	            alert('onCancle: The file ' + file.name + ' was cancelled.');
	        },
	        'onClearQueue' : function(queueItemCount) {
	            alert('onClearQueue: ' + queueItemCount + ' file(s) were removed from the queue');
	        },
	        'onDestroy' : function() {
	            alert('onDestory: I am getting destroyed!');
	        },
	        'onDialogClose'  : function(queueData) {
	            alert('onDialogClose: ' + queueData.filesQueued + ' files were queued of ' + queueData.filesSelected + ' selected files. There are ' + queueData.queueLength + ' total files in the queue.');
	        },
	        'onDialogOpen' : function() {
	            $('#message_box').html('onDialogOpen: The file dialog box was opened...');
	        },
	        'onDisable' : function() {
	            alert('onDisable: You have disabled Uploadify!');
	        },
	        'onEnable' : function() {
	            alert('onEnable: You have enabled Uploadify!');
	        },
	        'onFallback' : function() {
	            alert('onFallback: Flash was not detected.');
	        },
	        'onInit'   : function(instance) {
	            alert('onInit: The queue ID is ' + instance.settings.queueID);
	        },
	        'onQueueComplete' : function(queueData) {
	            alert('onQueueComplete: ' + queueData.uploadsSuccessful + ' files were successfully uploaded.');
	        },
	        'onSelect' : function(file) {
	            alert('onSelect: The file ' + file.name + ' was added to the queue.');
	        },
	        'onSelectError' : function() {
	            alert('onSelectError: The file ' + file.name + ' returned an error and was not added to the queue.');
	        },
	        'onSWFReady' : function() {
	            alert('onSWFReady: The Flash file is ready to go.');
	        },
	        'onUploadComplete' : function(file) {
	            alert('onUploadComplete: The file ' + file.name + ' finished processing.');
	        },
	        'onUploadError' : function(file, errorCode, errorMsg, errorString) {
	            alert('onUploadError: The file ' + file.name + ' could not be uploaded: ' + errorString);
	        },
	        'onUploadProgress' : function(file, bytesUploaded, bytesTotal, totalBytesUploaded, totalBytesTotal) {
	            $('#progress').html('onUploadProgress: ' + totalBytesUploaded + ' bytes uploaded of ' + totalBytesTotal + ' bytes.');
	        },
	        'onUploadStart' : function(file) {
	            alert('onUploadStart: Starting to upload ' + file.name);
	        },
			'onUploadSuccess' : function(file, data, response) {
	            alert('onUploadSuccess: The file ' + file.name + ' was successfully uploaded with a response of ' + response + ':' + data);
	        }
		});
	});
	function changeBtnText() {
	    $('#file_upload_18').uploadify('settings','buttonText','BROWSE');
	}

	function returnBtnText() {
	    alert('The button says ' + $('#file_upload_18').uploadify('settings','buttonText'));
	}
	</script>
	
</body>
</html>