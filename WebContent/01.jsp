<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.andy.GetUrl;"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<header>
<title>GitHub-AGM</title>
 <link rel="stylesheet" media="screen" href="GitHub.css" />
</header>

<body>
<div style="background:#425563;height:98px;">
 <img src="HPE_log_left_wht.png"  alt="Hewlett Packard Enterprise logo" style="width:118px;height:50px;margin: 30px auto auto 100px"/>
</div>
<div class="porter-wrapper">
    <header class="porter-header">
      <div class="container">
        <div class="actions">
        </div>
        <h1 >GitHubIssue-AGMDefect</h1>
      </div>
    </header>
    
     <%
	     	String url = request.getParameter("address");
	     	System.out.println(url);
	     	GetUrl gu = new GetUrl();
	     	gu.gitclone(url);
	     %>
    <div class="container">
    	  <form>
          <span>GitHub Repository:</span> 
          <input type="text" name="address" style="margin-left:10px;margin-right:10px;width:330px"/>
	      <button type="submit" class="button primary">Sync</button> 
	      </form>
	</div>
</div>
	<div class="porter-wrapper" style="border:none;margin-top:0px;border:0px">
		<div class="container"><h3>hello</h3></div>
</div>
	    
</body>


</html>
