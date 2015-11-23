<html>
	<body>
		<form>
			<table>
				<tr>
					<td><a href="/">create Query</a></td>
				</tr>
			</table>
		</form>
	</body>
</html>
<%@page language="java" import="java.io.*"%>
<%
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con = DriverManager.getConnection("jdbc:odbc:his1","Scott","tiger");
		Statement st = con.createStatement();	
		ResultSet rs = st.executeQuery("select * from bugquery");
		while(rs.next())
		{%>
			<a href="/DisplayBug.jsp?id="+id+"&istatusid="+istatusid+""><%=rs.getString(1)%></a>
		<%}
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
					
				