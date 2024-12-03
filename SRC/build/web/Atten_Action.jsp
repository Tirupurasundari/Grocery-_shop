<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%
 try {  
            
           String sname=request.getParameter("sname");
           String reg=request.getParameter("reg"); 
           String timese=request.getParameter("timese");            
           String dates=request.getParameter("dates");  
           System.out.println(reg+" "+sname+" "+timese+" "+dates);
           int mgs;
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/canteen","root","root");
                        PreparedStatement query=con.prepareStatement("select * from dregister where id='"+reg+"' and sname='"+sname+"' ");
                        ResultSet rs=query.executeQuery();
                        if(rs.next()){
           String mail=rs.getString("mail");           
           System.out.println(mail);
           mgs=rs.getInt("atten");
           System.out.println(mgs);
           if(mgs==0){
               mgs=mgs+1;
           }else{
               mgs++;
           }
           System.out.println(mgs);
           PreparedStatement ps=con.prepareStatement("insert into attendance(sanme,reg,times,dates,atten) values('"+sname+"','"+reg+"','"+timese+"','"+dates+"','"+mgs+"')");
           System.out.println(ps);
           ps.executeUpdate();
            out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Put on Your Attendance\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("putatten.jsp");
        rd.include(request, response);
        }}
        catch(Exception e){
        out.println("<script type=\"text/javascript\">"); 			
        out.println("alert(\"Please Try Again\")");
        out.println("</script>"); 
        RequestDispatcher rd=request.getRequestDispatcher("putatten.jsp");
        rd.include(request, response);
        }












%>