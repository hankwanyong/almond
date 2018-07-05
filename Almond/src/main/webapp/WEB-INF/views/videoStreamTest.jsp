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

	});
	
	
// 	var player = videojs('videoTag');
// 	player.play();  
</script>
</head>
<body>

<video id="video" controls></video>
<script>
  var video = document.getElementById('video');
  if(Hls.isSupported()) {
	  console.log("1");
    var hls = new Hls();
    hls.loadSource('http://192.168.0.211/stream/test7/video.m3u8');
//     hls.loadSource('http://192.168.0.211/stream/test3/playlist.m3u8');
    hls.attachMedia(video);
    hls.on(Hls.Events.MANIFEST_PARSED,function() {
      video.play();
  });   
 }
  else if (video.canPlayType('application/vnd.apple.mpegurl')) {      
	  console.log("2");
	video.src = 'http://192.168.0.211/stream/test2/stream.m3u8';       
    video.addEventListener('loadedmetadata',function() {
      video.play();
    });
  }    
</script>
</body>
</html>                         