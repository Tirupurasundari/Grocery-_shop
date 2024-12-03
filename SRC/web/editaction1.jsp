<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%    

try {
                        String id=request.getParameter("id");
                        String sname=request.getParameter("sname");
                        String image=request.getParameter("simage");
                        String sno=request.getParameter("sno");
                        String ano=request.getParameter("ano");
                        String micr=request.getParameter("micr");
                        String ifsc=request.getParameter("ifsc");
                        String brach=request.getParameter("brach");
                        String address=request.getParameter("address");
                        String mobile=request.getParameter("mobile");
                        String mail=request.getParameter("mail");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");                
                    PreparedStatement query=con.prepareStatement("update dregister set address='"+address+"',mobile='"+mobile+"',brach='"+brach+"',ifsc='"+ifsc+"',micr='"+micr+"',ano='"+ano+"' where sname='"+sname+"' and sno='"+sno+"' and id='"+id+"'");
                    query.executeUpdate();
                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Update Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewempy.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"Please Try Again..\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Viewempy.jsp");
                    rd.include(request,response);
                }

%>