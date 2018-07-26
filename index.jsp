<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<head>
<title>无人值守自解密系统1.3.0</title>
<link href="css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="swfupload/swfupload.js"></script>
<script type="text/javascript" src="js/swfupload.queue.js"></script>
<script type="text/javascript" src="js/fileprogress.js"></script>
<script type="text/javascript" src="js/handlers.js"></script>
<script type="text/javascript">
		var swfu;

		window.onload = function() {
			var settings = {
				flash_url : "http://127.0.0.1:8080/fileuploadjsp/swfupload/swfupload.swf",
				upload_url: "http://127.0.0.1:8888/fileupload/upload.php",	// Relative to the SWF file
				post_params: {"jsessionid":"<%=request.getSession().getId() %>"},
				file_size_limit : "100 MB",
				file_types : "*.*",
				file_types_description : "All Files",
				file_upload_limit : 100,
				file_queue_limit : 0,
				custom_settings : {
					progressTarget : "fsUploadProgress",
					cancelButtonId : "btnCancel"
				},
				debug: false,

				// Button settings
				button_image_url: "images/TestImageNoText_65x29.png",	// Relative to the Flash file
				button_width: "65",
				button_height: "29",
				button_placeholder_id: "spanButtonPlaceHolder",
				button_text: '<span class="theFont">浏览</span>',
				button_text_style: ".theFont { font-size: 16; }",
				button_text_left_padding: 12,
				button_text_top_padding: 3,
				
				// The event handler functions are defined in handlers.js
				file_queued_handler : fileQueued,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_start_handler : uploadStart,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,
				queue_complete_handler : queueComplete	// Queue plugin event
			};

			swfu = new SWFUpload(settings);
	     };
		 
		/* function check(){
				if (form1.userid.value==""){
					alert("请输入用户名！");form1.userid.focus();return false;
				}
				if (form1.password.value==""){
					alert("请输入密码！");form1.password.focus();return false;
				}
			 }
		function changeVisibility()
				{
				document.getElementById("spanButtonPlaceHolder").style.visibility="hidden";
				}
		*/
</script>	 
	
</head>
<body>

<div id="header">
	<h1 id="logo"></h1>
	<div id="version">v1.3.0</div>
</div>

<div id="content">
	<form id="form1" action="uploadfinish.php" method="post" enctype="multipart/form-data">
    <!--div>
    用户名：<input id="userid" type="text" size="18"/>
    密码：<input id="password" type="password" size="18" onblur="changeVisibility()"/>
	</div-->	
        <p>点击"浏览"按钮，选择您要上传的文档文件后，系统将自动上传并在完成后提示您。</p>
		
		<div class="fieldset flash" id="fsUploadProgress">
			<span class="legend">快速上传</span>
	  </div>
		<div id="divStatus">0 个文件已上传</div>
        <div id="workflowid">流程编号</div>
			<div>
				<span id="spanButtonPlaceHolder"></span>
				<input id="btnCancel" type="button" value="取消所有上传" onclick="swfu.cancelQueue();" disabled="disabled" style="margin-left: 2px; font-size: 8pt; height: 29px;" />
                <!--input id="macaddr" type="text" value="<?PHP //echo $mac->mac_addr[0];?>" disabled="disabled" hidden="true"-->

                <!--input id="hostname" type="text" value="<?PHP //echo gethostbyaddr($bIp);?>" disabled="disabled" hidden="true" -->
                <!--input id="submit" type="submit" value="提  交" style="margin-left: 2px; height: 29px; width: 60px;" -->
			</div>

	</form>
</div>
<?php 

//include "ShowFile.php";

?>
<div align="center">开发 By <a href="#" target="_blank">信息管理部</a>
</div>
</body>
</html>