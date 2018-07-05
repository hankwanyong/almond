<%@page import="java.net.*,java.io.*"%><%@ page pageEncoding="EUC-KR" language="java"%><%
 
    //response.setHeader("Content-Type","video/x-ms-wmv"); // 다운로드파일포멧이 wmv 파일이라고 가정
    response.setHeader("Content-Type", "video/mp4"); // 다운로드파일포멧이 mp4 파일이라고 가정
 
    response.setHeader("Content-Disposition", "attachment;filename=2.mp4"); // 다운로드파일이 test.mp4 파일이라고 가정
 
    double len = 0;
    byte[] buffer = new byte[1024];
    BufferedOutputStream outs = null;
    InputStream inputStream = null;
    URL url = null;
    out.flush(); // 미리 에러나  여러가지 상황 때문에 flush 시킨다.
 
    try {
        //url= new URL("http://www.aaa.com/test.wmv"); // 요청 url
        url = new URL("http://192.168.0.211/stream/2.mp4"); // 요청 url
        inputStream = url.openStream();
        outs = new BufferedOutputStream(response.getOutputStream());
 
        while ((len = inputStream.read(buffer)) != -1) {
            outs.write(buffer, 0, (int) len);
        }
 
    } catch (MalformedURLException e) {
        e.printStackTrace();
    } catch (IOException e) {
        e.printStackTrace();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if(outs != null) {
            outs.close();
        }
 
        if(inputStream != null) {
            inputStream.close();
        }
    }
%>

