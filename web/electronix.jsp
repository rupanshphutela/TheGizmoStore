<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Electronix Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
</head>
<body>
<div id="main_container">
    <%@include file="top.jsp" %>
   <div id="main_content">
       <%@include file="menu.jsp" %>
    <!-- end of menu tab -->
<!--    <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div> -->
    <%@include file="left.jsp" %>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Latest Products</div>
      <%! String ids="",path="",cat="",stat="";%>
      <%  
         stat=request.getParameter("status");
     %>
     <%
          try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from upload limit 9");            
            ResultSet rs=st.executeQuery();
            while(rs.next())
            {
                String brand=rs.getString("brand");
                String name=rs.getString("name");
                String color=rs.getString("color");
                String price=rs.getString("price");
                ids=rs.getString("id");
                cat=rs.getString("Category");
                stat=rs.getString("status");
                path="image\\"+ids+".jpg";
          
          if(stat.equals("open"))
          {
              %>
          
          
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            
            <div class="product_title"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>"><%=brand%>&nbsp;<%=name%></a></div>
            <div class="product_title">BID Status : &nbsp;<%=stat%></div>
            <div class="product_img"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>">
                    <img style="width:98px; height:94px;" src="<%=path%>"  alt="" border="0" /></a></div>
            <div class="product_title"><%=color%></div>
            <div class="prod_price"><span class="price">Rs.<%=price%></span> </div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="" title="header=[Add to cart] body=[&nbsp;] fade=[on]">
        <img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Specials] body=[&nbsp;] fade=[on]">
        <img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Gifts] body=[&nbsp;] fade=[on]">
        <img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>" class="prod_details">details</a> 
        </div>
      </div>
          
          <%
                  }
                         
            else
                               {
                %>
                   <div class="prod_box" disabled>
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            
            <div class="product_title"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>"><%=brand%>&nbsp;<%=name%></a></div>
            <div class="product_title">BID Status : &nbsp;<%=stat%></div>
            <div class="product_img"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>">
                    <img style="width:98px; height:94px;" src="<%=path%>"  alt="" border="0" /></a></div>
            <div class="product_title"><%=color%></div>
            <div class="prod_price"><span class="price">Rs.<%=price%></span> </div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> <a href="" title="header=[Add to cart] body=[&nbsp;] fade=[on]">
        <img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Specials] body=[&nbsp;] fade=[on]">
        <img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Gifts] body=[&nbsp;] fade=[on]">
        <img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>" class="prod_details">details</a> 
        </div>
      </div>
          
                <%
                               }
                               }
        }
        catch(Exception e)
        {
            out.println("Error is"+e);
        }
                
                %>
    </div>
    <!-- end of center content -->
    <%@include file="right.jsp" %>
 <!-- end of right content -->
  </div>
  <!-- end of main content -->
  <%@include file="footer.jsp" %>
</div>
<!-- end of main_container -->


</body>
</html>
