<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.jspsmart.upload.*"%>
<% 
//新建一个SmartUpload对象 
SmartUpload su = new SmartUpload();
su.setCharset("utf-8");
//上传初始化 
su.initialize(pageContext);
// 设定上传限制 
//1.限制每个上传文件的最大长度。
su.setMaxFileSize(10000000);
//2.限制总上传数据的长度。
su.setTotalMaxFileSize(20000000);
//3.设定允许上传的文件（通过扩展名限制）,仅允许doc,txt文件。
su.setAllowedFilesList("webp,doc,txt,jpg,rar,mid,waw,mp3,gif,flv,mp4");

boolean sign = true; 
//4.设定禁止上传的文件（通过扩展名限制）,禁止上传带有exe,bat,jsp,htm,html扩展名的文件和没有扩展名的文件。 
try { 
    su.setDeniedFilesList("exe,bat,jsp,htm,html");
    //上传文件 
    su.upload(); 
    //将上传文件保存到指定目录
   	File f = su.getFiles().getFile(0); 
    String url = "video/"+f.getFileName();
    
    f.saveAs(url, SmartUpload.SAVE_VIRTUAL);
} catch (Exception e) {
    e.printStackTrace();
    sign = false;
}

%>