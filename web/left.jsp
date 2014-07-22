<%-- 
    Document   : left
    Created on : Jun 21, 2013, 5:28:44 PM
    Author     : Sumit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="left_content">
      <div class="title_box">Categories</div>
      <ul class="left_menu">
          <% String a="";int b=1; %>
        <%
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select distinct category from upload order by name desc limit 8");            
            ResultSet rs=st.executeQuery();
            
          
           while(rs.next())
                   {
                         a=rs.getString("Category");
                       if(b%2==0)
            {
           %>
           <li class="even"><a href="category.jsp?Category=<%=a%>"><%=a%></a></li>
      
           <%
            }
            else
            {
                %>
                <li class="odd"><a href="category.jsp?Category=<%=a%>"><%=a%></a></li>
      <%
            }
                       
                       
                       b++;
                       
                     
               
                      
                   }
            
        }
        catch(Exception e)
        {
            out.println("Error is"+e);
        }
            %>
        
      
      </ul>
      <div class="title_box">Manufacturers</div>
      <ul class="left_menu">
          <% String c;int d=1; %>
        <%
            try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select distinct brand from upload order by name desc limit 8");            
            ResultSet rs=st.executeQuery();
            
          
           while(rs.next())
                   {
                         c=rs.getString("brand");
                       if(d%2==0)
            {
           %>
           <li class="even"><a href="manufacturers.jsp?brand=<%=c%>"><%=c%></a></li>
      
           <%
            }
            else
            {
                %>
                 <li class="odd"><a href="manufacturers.jsp?brand=<%=c%>"><%=c%></a></li>
      <%
            }
                       
                       
                       d++;
                       
                     
               
                      
                   }
            
        }
        catch(Exception e)
        {
            out.println("Error is"+e);
        }
            %>
        
         </ul>
     
<!--      <div class="title_box">Newsletter</div>
      <div class="border_box">
        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
        <a href="http://all-free-download.com/free-website-templates/" class="join">join</a> </div>
      <div class="banner_adds"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
 -->   </div>
   
    </body>
</html>
