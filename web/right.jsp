<%-- 
    Document   : right
    Created on : Jun 21, 2013, 5:28:29 PM
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
         <div class="right_content">
  <!--    <div class="shopping_cart">
        <div class="cart_title">Shopping cart</div>
        <div class="cart_details"> 3 items <br />
          <span class="border_cart"></span> Total: <span class="price">350$</span> </div> 
        <div class="cart_icon"><a href="http://all-free-download.com/free-website-templates/" title="header=[Checkout] body=[&nbsp;] fade=[on]"><img src="images/shoppingcart.png" alt="" width="48" height="48" border="0" /></a></div>
     </div> --> 
      <div class="title_box">New Releases</div>
      <div class="border_box">
          <%!String ids1;String path1="",cat1="";%>
           <%
               ids1=request.getParameter("id");
               cat1=request.getParameter("Category");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select name,price,color,display,res,cam,cpu,id,Category from upload where id=(select max(id) from upload)");
            ResultSet rs=st.executeQuery();
            while(rs.next())
                               {
                String name=rs.getString("name");
                String price=rs.getString("price");
                String color=rs.getString("color");
                String display=rs.getString("display");
                String res=rs.getString("res");
                String cam=rs.getString("cam");
                String cpu=rs.getString("cpu");
                ids1=rs.getString("id");
                cat1=rs.getString("Category");
                path1="image\\"+ids1+".jpg";
            
                    %>
                    <div class="product_title"><a href="details.jsp?id=<%=ids1%>&&Category=<%=cat1%>"><%=name%></a></div>
        <div class="product_img"><a href="details.jsp?id=<%=ids1%>&&Category=<%=cat1%>"><img style="width:98px;height:94px;"src="<%=path1%>" alt="" border="0" /></a></div>
        <div class="prod_price"><%=color%></div>
        <div class="prod_price"><%=display%>&nbsp;<%=res%></div>
        <div class="prod_price"><%=cam%></div>
        <div class="prod_price"><%=cpu%></div>
        <div class="prod_price">Rs.<%=price%></div>
      </div>
        <%
               }
}
         
        catch(Exception e)
                           {
               out.println(e);
               }
                %>        
<%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select name,price,color,display,res,cam,cpu,id,Category from upload where id=(select id from bid where value=(select max(value) from bid))");
            ResultSet rs=st.executeQuery();
            while(rs.next())
                               {
                String name=rs.getString("name");
                String price=rs.getString("price");
                String color=rs.getString("color");
                String display=rs.getString("display");
                String res=rs.getString("res");
                String cam=rs.getString("cam");
                String cpu=rs.getString("cpu");
                ids1=rs.getString("id");
                cat1=rs.getString("Category");
                path1="image\\"+ids1+".jpg";
            
                    %>       
      <div class="title_box">Special Products</div>
      <div class="border_box">
        <div class="product_title"><a href="details.jsp?id=<%=ids1%>&&Category=<%=cat1%>"><%=name%></a></div>
        <div class="product_img"><a href="details.jsp?id=<%=ids1%>&&Category=<%=cat1%>"><img style="width:98px;height:94px;"src="<%=path1%>" alt="" border="0" /></a></div>
        <div class="prod_price"><%=color%></div>
        <div class="prod_price"><%=display%>&nbsp;<%=res%></div>
        <div class="prod_price"><%=cam%></div>
        <div class="prod_price"><%=cpu%></div>
        <div class="prod_price">Rs.<%=price%></div>
      </div>
      <%
               }
}
         
        catch(Exception e)
                           {
               out.println(e);
               }
                %>  
   <!--    <div class="banner_adds"> <a href="http://all-free-download.com/free-website-templates/"><img src="images/bann1.jpg" alt="" border="0" /></a> </div> -->
    </div>
   
    </body>
</html>
