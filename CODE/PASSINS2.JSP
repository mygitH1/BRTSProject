<%@page info="java outfor" %>
<%@page import="java.sql.*"%>

<% System.out.println("in the passins2 file");
   String str = request.getParameter("pcode");
   String str1 = request.getParameter("bcode");
   String str2 = request.getParameter("scode");
   String str3 = request.getParameter("mode");
   String str4 = request.getParameter("muser");
   String cook = (String)session.getValue("uid");
   System.out.println(cook);

   try
   {
   System.out.println("reached the class:");
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
    System.out.println("before callable:");
    CallableStatement cs;
    cs = con.prepareCall("{call ins3(?,?,?,?,?,?)}");

   cs.setString(1,str);
   cs.setString(2,str1);
   cs.setString(3,str2);
   cs.setString(4,str3);
   cs.setString(5,str4);
   cs.setString(6,cook);
   cs.execute();
   
    System.out.println("Inserted Succusfully:");
    response.sendRedirect("http://localhost:8080/bugrephist.jsp");
    }catch(SQLException sql)
     {  
      System.out.println(sql.getMessage());
     }
   catch(ClassNotFoundException cl)
   {
      System.out.println(cl.getMessage());
   }


%>
