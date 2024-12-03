/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class Login_Action extends HttpServlet {
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
           PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        try{
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Canteen","root","root");
            PreparedStatement ps=con.prepareStatement("select * from register where sname='"+user+"' and pass='"+pass+"' ");
            System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                String id=rs.getString("sno");
                session.setAttribute("id",id);
                session.setAttribute("name",user);
                System.out.println("userid.."+id);
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Welcome "+user+"\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("StudentHome.jsp");
                rd.include(request, response);
            }
            else{
                out.println("<script type=\"text/javascript\">"); 			
                out.println("alert(\"Invalid Login..Please Try Again\")");
                out.println("</script>"); 
                RequestDispatcher rd=request.getRequestDispatcher("StudentLogin.jsp");
                rd.include(request, response);
            }
                
        }
        catch(Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
