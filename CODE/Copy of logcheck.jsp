<%@page info="java output for"%>
<%@page import = "java.sql.*"%>

<% String suid = request.getParameter("uid");
   String spwd = request.getParameter("pwd");
     Connection con ;
     Statement st;
     ResultSet rs; 

   try
   {
     Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     con = DriverManager.getConnection("jdbc:odbc:sat","brts3","brts3");
     String str = "select userid,password from t_user where userid='"+ suid + "' and password='"+ spwd+ "'";
     System.out.println(str);
     st=con.createStatement();
     rs = st.executeQuery(str);

        if(rs.next())
        {
         System.out.println("excuting if part");
         session = request.getSession(true);
         session.putValue("uid",suid);
         response.sendRedirect("http://localhost:8080/bug_gen.jsp");
        }
         else
        {
         System.out.println("in else part:");
         response.sendRedirect("http://localhost:8080/imgrep.html");
        }
    }catch(ClassNotFoundException cl)
    {
      System.out.println(cl.getMessage());
    }
    catch(SQLException sq)
    {
     System.out.println(sq.getMessage());
    }

%>
         



      

