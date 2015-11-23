<%@page info="jsp output for:"%>
<%@page import="java.sql.*"%>
 <%
    String cho = request.getParameter("choice");
    String cho1 = request.getParameter("choice1");
    session.putValue("proj",cho);
    %>
    
<html>
<head>
</head>

<body background=backgrnd.gif>
<h4>Bug History Details!!</h4>
<form action = "http://localhost:8080/bughist.jsp">

<%
   String strl=null;
   System.out.println("in getdata the session values are"+cho+" "+cho1);
   Connection con;
   Statement st,st1;
   ResultSet rs,rs1;

   Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
   System.out.println("statement before created:");
   st=con.createStatement();
   st1 = con.createStatement();
   System.out.println("statement1 created:");
   String sel1 = "select stat_code from t_status where stat_desc = '"+cho1+"'";
   System.out.println("Before ExecuteQuery()");
   rs1=st1.executeQuery(sel1);
   strl=" ";	
   while(rs1.next())
   {
    strl = rs1.getString(1);
    System.out.println(strl);
   }
	    session.putValue("stat",strl); 
   String sel="select t.bug_code||'-'||s.stat_desc from t_bug_history t,t_status s where t.stat_code=s.stat_code and t.proj_code='"+cho+"'and t.stat_code='"+strl+"'";
    rs=st.executeQuery(sel); %>
      
          <select name =choice>
  <%  while(rs.next())
    {
       String str=rs.getString(1);%>

       <option value=<%=str%>><%=str%>
    <%
     }%> 
      </select>
    <p>
    <input type = submit value="Display Bug History">   <input type=reset value ="Reset">
    </p>
    </form>
    </body>
    </html>

 
