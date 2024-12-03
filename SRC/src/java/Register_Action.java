/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class Register_Action extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<String> ms = new ArrayList<String>();
        PrintWriter out = response.getWriter();
        ServletContext sc = request.getSession().getServletContext();
        String finalimage = "";
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        List<String> m = new ArrayList<String>();
        File savedFile;

        if (!isMultipart) {

            System.out.println("File Not Uploaded");
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;

            try {
                items = upload.parseRequest(request);

            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                List<String> al = new ArrayList<String>();

                String sss = "";
                FileItem item = (FileItem) itr.next();
                String value = "";
                String a[];
                if (item.isFormField()) {
                    String name = item.getFieldName();
                    value = item.getString();
                    al.add(value);
                    for (int i = 0; i < al.size(); i++) {
                        sss += al.get(i);
                        System.out.println("is this  " + sss);
                        //replace - to /
                        sss = sss.replace("-", "/");
                    }

                    a = sss.split("-");
                    for (int i = 0; i < a.length; i++) {

                        String am = a[i];
                        System.out.println("aaaaaaaaaaa   " + a[i]);
                        m.add(a[i]);
                    }
                    
                } else {
                    String itemName = item.getName();

                    String reg = "[.*]";
                    String replacingtext = "";

                    Pattern pattern = Pattern.compile(reg);
                    Matcher matcher = pattern.matcher(itemName);
                    StringBuffer buffer = new StringBuffer();

                    while (matcher.find()) {
                        matcher.appendReplacement(buffer, replacingtext);
                    }
                    int IndexOf = itemName.indexOf(".");
                    int Indexf = itemName.indexOf(".");
                    String domainName = itemName.substring(IndexOf);

                    finalimage = buffer.toString() + domainName;
                    System.out.println("Final Image===" + finalimage);
                    ms.add(finalimage);
                    ms.get(0);
                    String fn = ms.get(0);
                    System.out.println("trying to put all in store");
                    savedFile = new File(sc.getRealPath("profile") + "\\" + finalimage);
                    try {
                        item.write(savedFile);
                    } catch (Exception e) {

                    }
                }
            }

        }
        //yy/mm/dd to dd/mm/yy
        String dateofbirth = m.get(5);
        dateofbirth = dateofbirth.substring(8, dateofbirth.length()) + "/"
                + dateofbirth.substring(5, dateofbirth.lastIndexOf("/")) + "/"
                + dateofbirth.substring(0, dateofbirth.indexOf("/"));
        m.set(5, dateofbirth);
        System.out.println(dateofbirth);

        try {
            Connection con = new DB().Connect();
            PreparedStatement query = con.prepareStatement("insert into register(simage,sno,sname,pass,mail,mobile,dob,address)values ('" + ms.get(0) + "','" + m.get(0) + "','" + m.get(1) + "','" + m.get(2) + "','" + m.get(3) + "','" + m.get(4) + "','" + m.get(5) + "','" + m.get(6) + "')");
            System.out.println(query);
            query.executeUpdate();
            System.out.println(query);
            out.println("<script>");
            out.println("alert(\"Register Succesfully\")");
            out.println("</script>");

            RequestDispatcher rd = request.getRequestDispatcher("CustomerLogin.jsp");
            rd.include(request, response);
        } catch (Exception e) {
            out.println("<script>");
            out.println("alert(\"Please Try Again..\")");
            out.println("</script>");

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
