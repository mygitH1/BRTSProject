<%@page language="java" import="java.io.*.java.sql.*"%>
<%
	String id = request.getParameter("id");
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:his1","Scott","tiger");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from defect_det where bugud="+id+" ");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
		


		
		
		
	