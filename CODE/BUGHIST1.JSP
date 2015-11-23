<%@page info="java output for"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%

  System.out.println("In the bughist1:");

  String str = session.getValue("value").toString();
  System.out.println(str);
  String par=session.getValue("proj").toString();
  String par1=null;
  String par2=session.getValue("stat").toString();
  String par3=null;
 try
   {

   StringTokenizer token= new StringTokenizer(str);
   
      System.out.println("COLLECTED :"+str);
   
          boolean flag=true;
          while(flag)//token.hasMoreTokens())
          {
            par = token.nextToken();
            par1 = token.nextToken();
            par2 = token.nextToken();
            par3 = token.nextToken();
            flag=false;
          }
          System.out.println(par);
    }catch(Exception e)
    {
    System.out.println(e.getMessage());
    }
%>
<html>
<head>
</head>

<body background=backgrnd.gif>
<h4> Bug Modification Form!!!</h4>

<img src=target.gif align = right>

<form action = "http://localhost:8080/passins2.jsp">
<pre>
Project Type :<input type = text name =pcode value=<%=par%> size =12 ReadOnly>
Bug code     :<input type = text name =bcode value=<%=par1%> size =12>
Satus code   :<input type =text name=scode value =<%=par2%>  ReadOnly>
Modified desc:<input type =text   name =mode size =40 maxlength=120>
Modified by  :<input type =text  name =muser size =18>
</pre>
<input type =submit value =Update> &nbsp;&nbsp;&nbsp;<input type =reset value=Clear>
</html>
