<%-- 
    Document   : log
    Created on : Jul 10, 2017, 5:01:51 PM
    Author     : DLK 1
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String name,pass;
name=request.getParameter("user");
pass=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/canteen","root","root");
PreparedStatement ps=con.prepareStatement("select * From dregister where sname='"+name+"' and pass='"+pass+"' ");
System.out.println(ps);
ResultSet rs=ps.executeQuery();
if(rs.next()){
    String mail=rs.getString("mail");
    String id=rs.getString("id");
System.out.println(ps);
session.setAttribute("name",name);
session.setAttribute("id",id);
session.setAttribute("mail",mail);
out.println("<script>"
                            +"alert('Welcome Delivery Boy')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/adelivery.jsp");
                    rd.include(request, response);
}
else
{
out.println("<script>"
                            +"alert('Please Enter Valid Username and Password')"
                            +"</script>");
                    RequestDispatcher rd=request.getRequestDispatcher("/Deliverylogin.jsp");
                    rd.include(request, response);
}
%>