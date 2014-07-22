<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Electronix Store - Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/windowopen.js"></script>
<script type="text/javascript" src="js/boxOver.js"></script>
<script type="text/javascript">
    
    function fun()
    {
        alert("err");
        return false;
    }
    
</script>
</head>
<body>
    
    
<div id="main_container">
 
    <%@include file="top.jsp" %>
  <div id="main_content">
      <%@include file="menu.jsp" %>
    <!-- end of menu tab -->
    <div class="crumb_navigation"> Navigation: <a href="http://all-free-download.com/free-website-templates/">Home</a> &lt; <span class="current">Category name</span> </div>
    <%@include file="left.jsp" %>
    <!-- end of left content -->
    
    <div class="center_content">
            <%! String ids=""; String path="",cat="",stat;%>
           <%  
                ids=request.getParameter("id");
                
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st = con.prepareStatement("select * from upload where id=?");   
            st.setString(1,ids);
            ResultSet rs=st.executeQuery();
            while(rs.next())
            {
                String name=rs.getString("name");
                String brand=rs.getString("brand");
                String color=rs.getString("color");
                String price=rs.getString("price");
                String net=rs.getString("2g3g");
                String sim=rs.getString("sim");
                String display=rs.getString("display");
                String res=rs.getString("res");
                String speaker=rs.getString("speaker");
                String jack=rs.getString("jack");
                String internal=rs.getString("internal");
                String card=rs.getString("card");
                String data=rs.getString("data");
                String hspa=rs.getString("hspa");
                String wifi=rs.getString("wifi");
                String dlna=rs.getString("dlna");
                String cam=rs.getString("cam");
                String os=rs.getString("os");
                String cpu=rs.getString("cpu");
                String gpu=rs.getString("gpu");
                String bt=rs.getString("bt");
                String nfc=rs.getString("nfc");
                String bat=rs.getString("bat");
                String close=rs.getString("close");
                String memory=rs.getString("memory");
                
                String udate=rs.getString("udate");
                stat=rs.getString("status");
                cat=rs.getString("Category");
                String Availability=rs.getString("Availability");
                String cdate=rs.getString("close");
                path="image\\"+ids+".jpg";
               
            %>
 
        
        <div class="center_title_bar"><%=brand%> <%=name%></div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="product_img_big"> <a href="javascript:popImage('images/big_pic.jpg','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img style="width:147px;height:141px;"src="<%=path%>" alt="" border="0" /></a>
            <div class="thumbs"> <a href="" title="header=[Thumb1] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" border="0" /></a> 
                <a href="" title="header=[Thumb2] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" border="0" /></a> 
                <a href="" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="images/thumb1.gif" alt="" border="0" /></a> 
            </div>
          </div>
          <div class="details_big_box">
              <div class="product_title_big"></div>
              <form action="bid" method="post">
              <div class="specifications" > <pre>
2G/3G:          <span class="blue"><%=net%></span><br />
SIM:            <span class="blue"><%=sim%></span><br />
Availability:   <span class="blue"><%=Availability%></span><br />
DISPLAY:        <span class="blue"><%=display%> <%=res%></span><br />
LOUDSPEAKER:    <span class="blue"><%=speaker%></span><br />
3.5mm JACK:     <span class="blue"><%=jack%></span><br />
CARD-SLOT:      <span class="blue"><%=card%></span><br />
GPRS/EDGE:      <span class="blue"><%=data%></span><br />
HSDPA/HSUPA:    <span class="blue"><%=hspa%></span><br />
Wi-Fi:          <span class="blue"><%=wifi%></span><br />
Wi-Fi DIRECT:   <span class="blue"><%=wifi%></span><br />
DLNA:           <span class="blue"><%=dlna%></span><br />
HOTSPOT:        <span class="blue"><%=dlna%></span><br />
CAMERA:         <span class="blue"><%=cam%></span><br />
O.S:            <span class="blue"><%=os%></span><br />
CPU:            <span class="blue"><%=cpu%></span><br />
MEMORY:         <span class="blue"><%=internal%> &nbsp; <%=memory%></span><br />
GPU:            <span class="blue"><%=gpu%></span><br />
BLUETOOTH:      <span class="blue"><%=bt%></span><br />
NFC:            <span class="blue"><%=nfc%></span><br />
COLORS:         <span class="blue"><%=color%></span><br />
BATTERY:        <span class="blue"><%=bat%></span><br />
STATUS:         <span class="blue"><%=stat%></span><br />
MIN BID:        <span class="price">Rs.<%=price%></span><br />
BIDDING VALUE:  <input type="text" name="bid"/><input type="hidden" name="ids" value="<%=ids%>"/><br/>
BIDDING DATE:   <span class="blue"><%=udate%></span><br/>
CLOSING DATE:   <span class="blue"><%=cdate%></span><br /></pre>
<div class="rup3">
    <%if(stat.equals("open"))
               {%>
    
    <input type="submit" name="bid1" value="BID NOW"/>
<%}
                else
                                       {

%>
<input type="submit" name="bid1" value="BID NOW" onclick="return fun()" />

<%}%>
</div>
              </div>
                 </form>
            </div>
             
       
      </div>
             <%
                }
        }
        catch(Exception e)
        {
            out.println("Error is"+e);
        }
                
                %>
                 </div>
                 
              <%
        cat=request.getParameter("Category");
%>  
            <div class="center_title_bar">Similar Products</div>
            <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rupansh", "root", "root");
            PreparedStatement st1 = con.prepareStatement("select * from upload where Category=? limit 3");
            st1.setString(1, cat);
            ResultSet rs=st1.executeQuery();
            while(rs.next())
            {
                cat=rs.getString("Category");
                String brand=rs.getString("brand");
                String name=rs.getString("name");
                String price=rs.getString("price");
                ids=rs.getString("id");
                path="image\\"+ids+".jpg";
                
            %>
      <div class="prod_box">
        <div class="top_prod_box"></div>
        <div class="center_prod_box">
            <div class="product_title"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>"><%=brand%> <%=name%></a></div>
            <div class="product_img"><a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>"><img style="width:98px; height:94px;"src="<%=path%>" alt="" border="0" /></a></div>
          <div class="prod_price"><span class="price">Rs.<%=price%></span></div>
        </div>
        <div class="bottom_prod_box"></div>
        <div class="prod_details_tab"> 
        <a href="" title="header=[Add to cart] body=[&nbsp;] fade=[on]">
        <img src="images/cart.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Specials] body=[&nbsp;] fade=[on]">
        <img src="images/favs.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="" title="header=[Gifts] body=[&nbsp;] fade=[on]">
        <img src="images/favorites.gif" alt="" border="0" class="left_bt" /></a> 
        <a href="details.jsp?id=<%=ids%>&&Category=<%=cat%>" class="prod_details">details</a> </div>
      </div>
     
      <%
   }
        }
        catch(Exception e)
        {
            out.println(e);
        }
                %>
       </div>
    <!-- end of center content -->
    <%@include file="right.jsp" %>
    <!-- end of right content -->
 
  <!-- end of main content -->
  <%@include file="footer.jsp" %>

</div>
<!-- end of main_container -->
</body>
</html>
