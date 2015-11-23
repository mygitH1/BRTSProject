<html>
<body>
<%@page info="Jsp Output for"%>
<%@page import="java.sql.*"%>
<% out.println(getServletInfo());
     
     Statement st;
     ResultSet rs;
     String p_code = request.getParameter("choice");
     String p_phase = request.getParameter("choice1");
     String p_desc = request.getParameter("area");
     String p_user = request.getParameter("user");
     String p_prior  = request.getParameter("choice2");

   try
   {
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
    System.out.println("before callable:");
    CallableStatement cs;
    cs = con.prepareCall("{call ins2(?,?,?,?,?)}");

    cs.setString(1,p_code);
    cs.setString(2,p_phase);
    cs.setString(3,p_desc);
    cs.setString(4,p_user);
    cs.setString(5,p_prior);
    cs.execute();
     System.out.println("record inserted:");
    st = con.createStatement();
    String ptr="select * from t_bugs";
    rs = st.executeQuery(ptr);
    int cn=0;
    while(rs.next())
    {
      cn++;
    }
    System.out.println(cn);
    String bcode = "bc"+String.valueOf(cn);
     System.out.println(bcode);
    session.putValue("b_code",bcode);
    session.putValue("user",p_user);
    System.out.println(p_code+"  "+p_phase+" "+p_desc+" "+p_user+" "+p_prior);
    System.out.println("Inserted Succusfully:");
    response.sendRedirect("http://localhost:8080/info.jsp");
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
