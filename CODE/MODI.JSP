<%@page info="java output for"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Iterator"%>
<html>
<head>
</head>
<body background=backgrnd.gif>
<h5><u><center> BUG INFORMATION </center></u></h5>
<form action="http://localhost:8080/modi1.jsp">

<%
  Vector vt = new Vector();
  
  int j=1;
  ResultSet rs;
  String sup=null;
  String pco = session.getValue("proj").toString();
 try{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
  Statement st=con.createStatement();
  
  ResultSetMetaData rsm;
 
  String sel = "select * from t_bug_history where proj_code='"+pco+"'";
  rs = st.executeQuery(sel);
  rsm = rs.getMetaData();
  int cols=rsm.getColumnCount();
   String str;
   while(rs.next())
   {
     str=rs.getString(1);
     for(int i=2;i<=cols;i++)
     {
       str=str+" "+rs.getString(i);       
     }
     vt.addElement(str);
   }   %>
           
          <table border=6>

        <%Iterator it = vt.iterator();
        while(it.hasNext())
          {%>
             <tr>
          <%  String was=it.next().toString();
            StringTokenizer tn = new StringTokenizer(was);

              while(tn.hasMoreTokens())
              {  %>
                 <td width="25%">
                  <%tn.nextToken();%>
                 </td>

            <%   }%>
            </tr>

           <% }%>

           </table>

   <% }
    catch(Exception e)
    {
     out.println(e.getMessage());
    }
   %>
     <br>
<center> <input type = submit value="Modify Bug Details"> </center>
  </body>
  </html>

 


