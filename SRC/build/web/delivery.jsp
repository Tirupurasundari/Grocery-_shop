<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String sname=request.getParameter("sname");
String id=request.getParameter("id");
String fname=request.getParameter("fname");
String sid=request.getParameter("sid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");                
                    PreparedStatement query=con.prepareStatement("update orders set status='Assign' where sname='"+sname+"' and id='"+id+"' and fname='"+fname+"' and sid='"+sid+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Assign Work Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Vieworder.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Vieworder.jsp");
                    rd.include(request,response);
                }

%>