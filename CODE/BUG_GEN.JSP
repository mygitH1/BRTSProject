<%@page info ="Java output for" %>
<%@page import="java.sql.*"%>

<%
  String cook = (String)session.getValue("uid");
  System.out.println("In Bugrep file");
  System.out.println(cook);
  System.out.println("written the cookie");
  if(cook!=null)
 { %>
    <html>
     <head>
     <script language="javascript">
     function f_func()
     {
     parent.frames[1].location.href="http://localhost:8080/img2rep.html";
     }
     </script>

    </head>
    <body background=backgrnd.gif onload=f_func()>
    <img src = target.gif align = right>
     <h3><u>Bug Reporting Form!!</u></h3>
       <form action ="http://localhost:8080/passins1.jsp" >
      
   <TABLE border=1 cellPadding=1 cellSpacing=1 width="75%">
   <TR><TD>ProjectCode : </TD><TD> <select name = choice>
          <%
           Connection con;
           Statement st;
           ResultSet rs;
     
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
       
              System.out.println("In select of Proj_code");
       
         }catch(SQLException e)
          {
           System.out.println(e.getMessage());
          }
           catch(ClassNotFoundException ex)
         {
           System.out.println(ex.getMessage());
         }%>
<%
 }
  System.out.println("end of if:");
  %>


       </select></TD></TR>
       <TR><TD>
       ProjectPhase : </TD><TD>
       		      <select name = choice1>
                      <option value= Design> Design
                      <option value= Coding> Coding
                      <option value= Running>Running
                      <option value= Others >Others
          <%    System.out.println("In select of description"); %>
                      </select>
		</TD></tr><tr><TD>
     BugDescription  :</TD><TD><input type=textarea name = area cols=2 maxlength=120>
       </TD></TR>
       <TR><TD>
       User          :</TD><TD><input type = text value=<%=cook%> size=15 name = user readOnly></TD>
       </TR>
       <TR>
       <TD>
       Priority      :</TD><TD><select name  = choice2>
                      <option value = CRITICAL> CRITICAL
                      <option value = NORMAL  > NORMAL
                      <option value = HIGH    > HIGH
                      <option value = LOW     > LOW
                    <%  System.out.println("In select of mode"); %>
                      </select>
       </TD></TR>
  
     <TR></TR>
   <TR><TD align=right><input type=submit value=Insert></TD><TD><input type=reset value=Clear></TD></TR>
 </TABLE>
   </form>
     <%  System.out.println("after form end");%>

  </body>
 </html>
