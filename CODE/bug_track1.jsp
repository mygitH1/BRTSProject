<%@page info ="Java output for"%>
<%@page import="java.sql.*"%>

    <html>
     <head>
      </head>
    <body background=backgrnd.gif>
    <img src = target.gif align = right>
     <h3><u>Bug Tracking Form!!</u></h3>
      <form action ="http://localhost:8080/trans.jsp">
      
     <center>
     <pre>
        ProjectCode :<select name = choice>
       <%
           Connection con;
           Statement st;
           ResultSet rs,rs1;
        try
        {

           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
           String sel = "select PROJ_CODE from t_project";
           st=con.createStatement();
           rs=st.executeQuery(sel);

              while(rs.next())
              {
               String str = rs.getString(1);%>
               <option value=<%=str%>><%=str%>
               <%
               System.out.println(str);
              }
     
              System.out.println("In select of Proj_code");%>
                       </select>    
<%
  System.out.println("end of check"); 
  System.out.println("end of iiiii:");
 %>
          Status      :<select name = choice1>
       <%  String sel1 = "select stat_desc from t_status";
         Statement st1=con.createStatement();
         rs1=st1.executeQuery(sel1);
         while(rs1.next())
         {
          String strw = rs1.getString(1);%>
          <option value=<%=strw%>><%=strw%>
        <%   
         }
           System.out.println("In select of status"); %>
                    </select>
        <% }
          catch(SQLException e)
          {
           System.out.println(e.getMessage());
          }
           catch(ClassNotFoundException ex)
           {
           System.out.println(ex.getMessage());
           }%>

   </pre> 
   </center>
   <input type=submit value=GetDetails size=21>
   </form>
     <%  System.out.println("after form end");%>

  </body>
 </html>
