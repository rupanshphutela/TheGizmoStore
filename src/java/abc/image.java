/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package abc;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author gunjit
 */
@WebServlet(name="image", urlPatterns={"/image"})
public class image extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    PrintWriter out;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        try {
            /* TODO output your page here
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet picshow</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet picshow at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        //out = response.getWriter();
        //processRequest(request, response);
        //out.println("<form method='get' action=''></form>");
        try
        {
            String n=request.getParameter("n");
            String img;
            int len=0;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement ps=con.prepareStatement("Select images from upload where name=?");
            ps.setString(1,n);
            //byte b=new byte[];
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                img=rs.getString("images");
                len=img.length();
            }
            byte b[]=new byte[len];
            PreparedStatement ps1=con.prepareStatement("Select images from upload where name=?");
            ps1.setString(1,n);
            ResultSet rs1=ps1.executeQuery();
            while(rs1.next())
            {
                InputStream is=rs1.getBinaryStream("images");
                is.read(b,0,len);


            }
            response.setContentType("image/jpeg");
            response.getOutputStream().write(b,0,len);
            

        }
        catch(Exception e)
        {
            out.println(e);
        }
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        out = response.getWriter();
        //processRequest(request, response);

    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
