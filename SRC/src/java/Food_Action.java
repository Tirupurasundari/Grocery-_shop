/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
public class Food_Action extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         List<String> ms = new ArrayList<String>();
        PrintWriter out = response.getWriter();
        ServletContext sc=request.getSession().getServletContext();
	        String finalimage = "";
	        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	        List<String> m = new ArrayList<String>();
	        File savedFile;
	       
	        if (!isMultipart) 
	        {
	        	
	            System.out.println("File Not Uploaded");
	        } 
	        else 
	        {
	            FileItemFactory factory = new DiskFileItemFactory();
	            ServletFileUpload upload = new ServletFileUpload(factory);
	            List items = null;

	            try 
	            {
	                items = upload.parseRequest(request);
	                
	            } 
	           	catch (FileUploadException e)
	           	{
	                e.printStackTrace();
	            }
	            Iterator itr = items.iterator();
	            while (itr.hasNext()) {
	                List<String> al = new ArrayList<String>();

	                String sss = "";
	                FileItem item = (FileItem) itr.next();
	                String value = "";
	                String a[];
	                if (item.isFormField()) 
	                {
	                    String name = item.getFieldName();
	                    value = item.getString();
	                    al.add(value);
	                    for (int i = 0; i < al.size(); i++) 
	                    {
	                        sss += al.get(i);
	                        System.out.println("is this image" + sss);  
	                    }

	                    a = sss.split("-");
	                    for (int i = 0; i < a.length; i++) {

	                        String am = a[i];
	                        System.out.println("aaaaaaaaaaaaaaaa" + a[i]);
	                        m.add(a[i]);
	                    }
	                } 
	                else
	                {
	                	String itemName = item.getName();
	                

	                    String reg = "[.*]";
	                    String replacingtext = "";
	                    
	                    Pattern pattern = Pattern.compile(reg);
	                    Matcher matcher = pattern.matcher(itemName);
	                    StringBuffer buffer = new StringBuffer();

	                    while (matcher.find()) 
	                    {
	                        matcher.appendReplacement(buffer, replacingtext);
	                    }
	                    int IndexOf = itemName.indexOf(".");
	                    int Indexf = itemName.indexOf(".");
	                    String domainName = itemName.substring(IndexOf);


	                    finalimage = buffer.toString() + domainName;
	                    System.out.println("Final Image===" + finalimage);
	                    ms.add(finalimage);
	                    ms.get(0);
	                  String  fn=ms.get(0);
	                  System.out.println("trying to put all in store");
	                   savedFile = new File(sc.getRealPath("images")+"\\"+finalimage);
	                try 
	                    {
                                item.write(savedFile);
                            }
                            catch(Exception e){
                                
                            }
                        }
	            }
	        
	        }
		try 
		{
                    Connection con=new DB().Connect();
                   String type =m.get(2); // Assuming you're in a servlet and getting the selected type from request

//out.println("<script>");
//out.println("alert(\"Product Type: " + type + "\")");
//out.println("</script>");

if (type.equals("Electronics")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into electronics(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Vegetables")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into vegetables(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Fruits")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into fruits(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Dress")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into dress(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Food")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into food(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Cosmetics")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into cosmetics(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Mobiles")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into mobiles(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Home")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into home(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Furniture")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into furniture(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Pharamacy")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into pharamacy(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Books")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into books(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }
else if (type.equals("Toys")) {
//                             out.println("<script>"); 			
//                    out.println("alert(\"Product \")");
//                    out.println("</script>");
                            
                             PreparedStatement query=con.prepareStatement("insert into toys(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(3)+"','"+m.get(4)+"','"+m.get(5)+"')");
                    System.out.println(query);
                    query.executeUpdate();
                    System.out.println(query);
                        }





                     
                 
//                    PreparedStatement query=con.prepareStatement("insert into food(fno,fimage,fname,fdes,cost,ready)values ('"+m.get(0)+"','"+ms.get(0)+"','"+m.get(1)+"','"+m.get(2)+"','"+m.get(3)+"','"+m.get(4)+"')");
//                    System.out.println(query);
//                    query.executeUpdate();
//                    System.out.println(query);
                    out.println("<script>"); 			
                    out.println("alert(\"Product Succesfully\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Addfood.jsp");
                    rd.include(request,response);		
		}
                catch(Exception e){
                    out.println("<script>"); 			
                    out.println("alert(\"failed\")");
                    out.println("</script>");

                    RequestDispatcher rd=request.getRequestDispatcher("Addfood.jsp");
                    rd.include(request,response);
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