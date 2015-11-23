<%@page language="java" import="java.io.*.java.sql.*"%>
<%
	String id = "";
	String state=request.getParameter("state");
	String headline=request.getParameter("headline");
	String priority=request.getParameter("priority");
	String projname=request.getParameter("projname");
	String severity=request.getParameter("severity");
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:his1","Scott","tiger");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select seq_id.nextval from dual");
		rs.next();
		id=rs.getString(1);
		int i = st.executeUpdate("insert into defect_det values("+id+",'"+state+"','"+headline+"','"+priority+"','"+ projname+"','"+severity+"')");
		if(i!=0)
		{
			response.sendRedirect("/DefectFound.jsp");
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>		


		
		
		
	