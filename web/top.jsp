<%-- 
    Document   : top
    Created on : Jun 21, 2013, 5:28:12 PM
    Author     : Sumit
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Top</title>
    </head>
    <body>
        
        
        <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st1 = con1.prepareStatement("update upload set status='closed' where close=CURDATE()");
            st1.executeUpdate();
                       }
        catch(Exception e)
        {
            out.println(e);   
        }
        %>
        <%!String p="";%>
        <% 
        HttpSession s=request.getSession(false);
        if(s.isNew())
        {
            
            %>
            <jsp:forward page="main.jsp"></jsp:forward>
            <%
            
        }
        else
                {
                    p=s.getAttribute("user").toString();
               //   out.println("Welcome"+p);
                }
        %>
         <div id="header">
             <div id="logo"><img src="images/logo.jpg"/> </div>
    <div class="oferte_content">
      THE GIZMO STORE
    </div>
    <!-- end of oferte_content-->
  </div>
  
    </body>
</html>
