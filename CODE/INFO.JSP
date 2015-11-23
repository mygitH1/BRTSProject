<html>
<head>
</head>

<body background=backgrnd.gif>
<%@ page info="Java info" %>
<%@ page import="java.sql.*;"%>
<% String bcod = (String)session.getValue("b_code");
   String usr = (String)session.getValue("user");
   System.out.println(bcod+"   "+usr); %>
<h4> Hello Mr.<%=usr%> <br>
      
<blink><%=bcod%></blink> has been successfully generated for
               refference
</h4>
<h2>  Thank You for Being with US!!!!</h4>
<p><a href ="http://localhost:8080/img3.html">back !!</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href ="http://localhost:8080/bug_track1.jsp">Bug Tracking !!</a>
</body>
</html>


