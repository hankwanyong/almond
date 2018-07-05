<%@page import="java.net.*,java.io.*"%><%@ page pageEncoding="EUC-KR" language="java"%><%
 
    //response.setHeader("Content-Type","video/x-ms-wmv"); // �ٿ�ε����������� wmv �����̶�� ����
    response.setHeader("Content-Type", "video/mp4"); // �ٿ�ε����������� mp4 �����̶�� ����
 
    response.setHeader("Content-Disposition", "attachment;filename=2.mp4"); // �ٿ�ε������� test.mp4 �����̶�� ����
 
    double len = 0;
    byte[] buffer = new byte[1024];
    BufferedOutputStream outs = null;
    InputStream inputStream = null;
    URL url = null;
    out.flush(); // �̸� ������  �������� ��Ȳ ������ flush ��Ų��.
 
    try {
        //url= new URL("http://www.aaa.com/test.wmv"); // ��û url
        url = new URL("http://192.168.0.211/stream/2.mp4"); // ��û url
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

