<%@page info="java output for"%>
<%@page import="java.sql.*"%>
<html>
<head>
</head>
<body background=backgrnd.gif>
<h5><u><center> BUG INFORMATION </center></u></h5>
<form action="http://localhost:8080/bughist1.jsp">

<%
  ResultSet rs,rs1;
  
  String pco = session.getValue("proj").toString();
 try{
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     Connection con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
     Statement st=con.createStatement();
     Statement st1=con.createStatement();
     ResultSetMetaData rsm,rsm1;
     String sel = "select * from t_bug_history where proj_code='"+pco+"'";
     String sel1 = "select * from t_bug_history where proj_code='"+pco+"'";
     rs =  st.executeQuery(sel);
     rs1 = st1.executeQuery(sel1);
     rsm = rs.getMetaData();
     rsm1=rs1.getMetaData();
     int cols=rsm.getColumnCount();
     int col =rsm1.getColumnCount();
    %>
    <table border=5>
   <%while(rs.next())
   {%>
    <tr>
    <% for(int i=1;i<=cols;i++)
     { %>
      <td>
   <b>  <%out.println(rs.getString(i));%> </b>
      </td>
    <% } %>
     </tr>
    <%
       }
       rs.close();
         %>
           
  </table >
  <%int j=0;
     String sup="";
    while(rs1.next())
    {
      sup ="";
      for(j=1;j<=col;j++)
      {
      sup = sup+" "+rs1.getString(j);
      }
         
    }
    System.out.println(sup); 
    session.putValue("value",sup);
    }
    catch(Exception e)
    {
     out.println(e.getMessage());
    }
   %>
     <br>
<center> <input type = submit value="Modify Bug Details"> </center>
  </body>
  </html>

 


