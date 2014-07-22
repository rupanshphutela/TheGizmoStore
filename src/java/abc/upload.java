/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package abc;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sumit
 */
public class upload extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet upload</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet upload at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       // processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("Insert into upload(brand,name,color,2g3g,sim,display,res,speaker,jack,internal,card,data,hspa,wifi,dlna,cam,os,cpu,gpu,bt,nfc,bat,price,memory,Category,status,Availability,close,udate)Values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,CURDATE())");            
            st.setString(1, request.getParameter("brand"));
            st.setString(2, request.getParameter("name"));
            st.setString(3, request.getParameter("cb1"));
            st.setString(4, request.getParameter("cb2"));
            st.setString(5, request.getParameter("cb3"));
            st.setString(6, request.getParameter("cb4"));
            st.setString(7, request.getParameter("res"));
            st.setString(8, request.getParameter("cb5"));
            st.setString(9, request.getParameter("cb6"));
            st.setString(10, request.getParameter("int"));
            st.setString(11, request.getParameter("cb7"));
            st.setString(12, request.getParameter("gprs"));
            st.setString(13, request.getParameter("hs"));
            st.setString(14, request.getParameter("dir"));
            st.setString(15, request.getParameter("cb8"));
            st.setString(16, request.getParameter("cam"));
            st.setString(17, request.getParameter("os"));
            st.setString(18, request.getParameter("cpu"));
            st.setString(19, request.getParameter("gpu"));
            st.setString(20, request.getParameter("cb9"));
            st.setString(21, request.getParameter("cb10"));
            st.setString(22, request.getParameter("bat"));
            st.setString(23, request.getParameter("price"));
            st.setString(24, request.getParameter("ram"));
            st.setString(25, request.getParameter("Category"));
            st.setString(26, request.getParameter("status"));
            st.setString(27, request.getParameter("availability"));
            st.setString(28, request.getParameter("cdate"));
            
            st.executeUpdate();
            out.println("data entered successfully !");
            response.setContentType("text/html;charset=UTF-8");
        
            
            }
        catch(Exception e)
        {   
            out.println(e);
        }
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st1 = con.prepareStatement("select max(id) as id from upload");
            ResultSet rs1=st1.executeQuery();
            String id="";
            while(rs1.next())
            {
                id=rs1.getString("id");
            }
        String fl=request.getParameter("img");
        File f=new File("D:\\New folder\\pics\\"+fl);
        BufferedImage i=ImageIO.read(f);
        //String path = this.getClass().getResource("/images/").toString();
        //out.println(path);
                //String path1=path.substring(path.indexOf("/"));
               // out.println(path1);
        String s=this.getServletContext().getRealPath("\\image");
        out.println(s);
        ImageIO.write(i, "jpg", new File(s+"\\"+id+".jpg"));
        
        }
        catch(Exception e1)
        {
            out.println(e1);
        }
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
