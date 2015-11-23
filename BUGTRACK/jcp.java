import java.io.*;
import javax.servlet.*;

public class jcp extends GenericServlet
{
public void service(ServletRequest req,ServletResponse res)throws ServletException,IOException
{
res.setContentType("text/plain");
PrintWriter out=res.getWriter();
out.println("haa");
}
}
