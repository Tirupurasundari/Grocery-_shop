<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
String fimage=request.getParameter("fimage");
String fname=request.getParameter("fname");
String fno=request.getParameter("fno");
String tableName=request.getParameter("ftableName");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");
                
                    PreparedStatement query=con.prepareStatement("delete from "+tableName+" where fimage='"+fimage+"' and fname='"+fname+"' and fno='"+fno+"'");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Item Deleted Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("viewFood.jsp?ftableName="+tableName+"");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewitem.jsp");
                    rd.include(request,response);
                }


%>