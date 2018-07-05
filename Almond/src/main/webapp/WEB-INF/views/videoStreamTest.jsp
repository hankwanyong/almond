<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, user-scalable=no">
<title>동영상 테스트</title>

<link href="http://vjs.zencdn.net/5.4.4/video-js.css" rel="stylesheet">
<script src="http://vjs.zencdn.net/5.4.4/video.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/hls.js@latest"></script>


<style>
	video{ 
		width : 100%; 
		max-width : 640px; 
		height : auto; 
	}
</style>

<script>

	$(document).ready(function(){
		videoUrlAjax();
		var video = document.getElementById('video');
		function videoUrlAjax(){
			$.ajax({
				type : "GET",
		           url : "/web/videoSeq",
		           dataType : "text",
		           error : function(){  
		               alert('비정상적 접속');
		               return;
		           },
		           success : function(data){
		        	   if(data.indexOf("http") != -1){
		        		   if(Hls.isSupported()) {
				       		    var hls = new Hls();
				       		    hls.loadSource(data);
				       		    hls.attachMedia(video);
				       		    hls.on(Hls.Events.MANIFEST_PARSED,function() {
				       		      video.play();
				       		  });   
				       		 }
				       		  else if (video.canPlayType('application/vnd.apple.mpegurl')) {      
				       			  console.log("2");
				       			video.src = data;       
				       		    video.addEventListener('loadedmetadata',function() {
				       		      video.play();
				       		    });
				       		  } 
		        	   }else{
		        		   alert('비정상적 접속');
		        	   }
		           	return;
		           }
		
			});
		}
	});
	
	
</script>
</head>
<body>

<video id="video" controls></video>

</body>
</html>                         