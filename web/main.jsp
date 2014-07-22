<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The Gizmo Store</title>
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="gallery_style.css" />
<script type="text/javascript" src="js1.js"></script>
</head>
    <body onload="demo()">
<div id="templatemo_container">
<div id="templatemo_top_panel">
	<div id="templatemo_header_section">
		<div id="templatemo_header">
        	THE GIZMO STORE
        </div>
    </div> <!-- end of header section -->
    
    <div id="templatemo_menu_login_section">
    	<div id="templatemo_menu_section">
        	<div id="templatemo_menu_panel">
                <ul>
                    <li><a href="main.jsp" class="current">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>    
                    <li><a href="https://www.facebook.com/pages/The-Gizmo-Store/228853037210595?ref=hl">Our FB Page® </a></li>                      
                </ul> 
            </div> <!-- end of menu -->
        </div>
        
    </div> <!-- end of menu login section -->
</div> <!-- end of top panel -->

<div id="templatemo_gallery_panel">
<div id="gallery">
  <div id="imagearea">
    <div id="image">
      <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a>
      <a href="javascript:slideShow.nav(1)" class="imgnav " id="nextimg"></a>
    </div>
  </div>
  <div id="thumbwrapper">
    <div id="thumbarea">
      <ul id="thumbs">
        <li value="1"><img src="images/1.jpg" width="179" height="100" alt="" /></li>
        <li value="2"><img src="images/2.jpg" width="179" height="100" alt="" /></li>
        <li value="3"><img src="images/3.jpg" width="179" height="100" alt="" /></li>
        <li value="4"><img src="images/4.jpg" width="179" height="100" alt="" /></li>
        <li value="5"><img src="images/5.jpg" width="179" height="100" alt="" /></li>
        <li value="3"><img src="images/6.jpg" width="179" height="100" alt="" /></li>
        <li value="4"><img src="images/7.jpg" width="179" height="100" alt="" /></li>
        
      </ul>
    </div>
  </div>
</div>

<script type="text/javascript">
var imgid = 'image';
var imgdir = 'images/fullsize';
var imgext = '.jpg';
var thumbid = 'thumbs';
var auto = true;
var autodelay = 5;
</script>
<script type="text/javascript" src="slide.js"></script>

</div>

<div id="templatemo_content_panel_1">
    <div id="templatemo_section_1_2">
<h1>User Section</h1>
        <div class="templatemo_user_section">
            
            
            <form action="Login" name="login" method="post" onsubmit="return f1();">
                <center>
                    <h3>LOGIN</h3>
                    <pre>

<span style="font-size: 16px;">USERNAME          <input type="text" name="txt1" id="txt1"/></span>
<span style="font-size: 16px;">PASSWORD          <input type="password" name="txt2" id="txt2"/></span>
              
       <input type="submit" value="  LOGIN  "/> 
              </pre>
              </center>
   
           </div>
           </form>
<div class="templatemo_user_section">
    
           <form action="Signup" method="post" name="signup" onsubmit="return f2();">
               <center>
                   <h3>REGISTER/SIGN UP</h3>
<pre>

<span style="font-size: 16px;">NAME              <input type="text" name="txt3" id="txt3"/></span>
<span style="font-size: 16px;">PASSWORD          <input type="password" name="txt4" id="txt4"/></span>
<span style="font-size: 16px;">CONFIRM PASSWORD  <input type="password" name="txt5" id="txt5"/></span>
               
        <input type="submit" value="REGISTER"/> 
</pre>
               </center>
    </div>
	 </form>   
    </div>
   <!-- end of section 1 -->
    <div class="cleaner_with_height">&nbsp;</div>
</div>

<div id="templatemo_content_panel_2">
	<div class="templatemo_section_2">
    
    	
        <img src="images/6.jpg" alt="image" />
        <h4>Televisions</h4>
        <p>A large range for televisons and digital displays</p>
        <div class="price">PRICE starts:<span> $ 150</span></div>    
        <div class="readmore"><a href="main.jsp">Read more</a></div>                       
    </div>
    <div class="templatemo_section_2">
        <img src="images/7.jpg" alt="image" />
        <h4>Accessories</h4>
        <p>A huge variety of accessries for your gizmos.</p>
        <div class="price">PRICE starts:<span> $10</span></div>                           
        <div class="readmore"><a href="main.jsp">Read more</a></div>
    </div>
    <div class="templatemo_section_2">

        <img src="images/2.jpg" alt="image" />
        <h4>Laptops</h4>
        <p>Redefining portability with a wide range of laptops.</p>
        <div class="price">PRICE starts:<span> $400</span></div>                           
      <div class="readmore"><a href="main.jsp">Read more</a></div>
    </div>
    
    <div class="cleaner_with_height">&nbsp;</div>
</div> <!-- end of content panel 2 -->

<div id="templatemo_content_panel_3">

	<!-- end of news section 3-->
    
   <div class="templatemo_section_3">
    	<h1>Helpful Links</h1>
        	<ul class="list_section">
                <li><a href="main.jsp">Home</a></li>
                <li><a href="https://www.facebook.com/pages/The-Gizmo-Store/228853037210595?ref=hl" >Our FB Page®</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
    </div>
    
    
<div class="cleaner_with_height">&nbsp;</div>
</div><!-- end of content panel 3 -->

<div id="templatemo_footer_panel">
    Copyright © 2013 <a href="main.jsp">The Gizmo Store</a> </div>
</div> <!-- end of container -->

</body>
</html>