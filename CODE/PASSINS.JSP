<html>
<body>
<%@page info="Jsp Output for"%>
<%@page import="java.sql.*"%>
<% out.println(getServletInfo());
     

     String uid = request.getParameter("uname");
     System.out.println(uid);
     String pwd = request.getParameter("pwd");
     String fname = request.getParameter("fname");
     String lname = request.getParameter("lname");
     String add1  = request.getParameter("add1");
     String add2 = request.getParameter("add2");
     String opt = request.getParameter("opt");
     int pin = Integer.parseInt(request.getParameter("pcode"));
     int phone =Integer.parseInt(request.getParameter("phone"));
     String email = request.getParameter("mail");

   try
   {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
    System.out.println("before callable:");
    CallableStatement cs;
    cs = con.prepareCall("{call ins1(?,?,?,?,?,?,?,?,?,?)}");

    cs.setString(1,uid);
    cs.setString(2,pwd);
    cs.setString(3,fname);
    cs.setString(4,lname);
    cs.setString(5,add1);
    cs.setString(6,add2);
    cs.setString(7,opt);
    cs.setInt(8,pin);
    cs.setInt(9,phone);
    cs.setString(10,email);

    cs.execute();
        
    System.out.println("Inserted Succusfully:");
    response.sendRedirect("http://localhost:8080/return.html");
    }catch(SQLException sql)
     {  
      System.out.println(sql.getMessage());
     }
   catch(ClassNotFoundException cl)
   {
      System.out.println(cl.getMessage());
   }
%>
</body>
</html>
