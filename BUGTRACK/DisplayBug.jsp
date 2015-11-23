<html>
	<body>
		<form>
			<table>
				<tr>
					<td>id</td>
					<td>istatusid</td>
					<td>vheadline</td>
					<td>ipriorityid</td>
					<td>iprojectid</td>
					<td>vseverity</td>		
				</tr>
			</table>
			<table>
		<%
		try
		{
			while(rs.next())
			{%>		
					<tr>
					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>		
				</tr>
			<%}}catch(Exception e){out.println(e);}%>
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
		ResultSet rs = st.executeQuery("select * from bugquery where id="+id+"");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
					
				