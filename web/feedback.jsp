<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Feedback</title>
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
 <!--   <div class="crumb_navigation"> Navigation: <a href="http://all-free-download.com/free-website-templates/">Home</a> &lt; <span class="current">Category name</span> </div> -->
     <%@include file="left.jsp" %>
    <!-- end of left content -->
    <form action="fd.jsp">
    <div class="center_content">
      <div class="center_title_bar">Feedback Form</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
          <div class="contact_form">
              
            <div class="form_row">
              <label class="contact"><strong>Name:</strong></label>
              <input type="text" name="name" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Email:</strong></label>
              <input type="text" name="email" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Phone:</strong></label>
              <input type="text" name="phone" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Company:</strong></label>
              <input type="text" name="company" class="contact_input" />
            </div>
            <div class="form_row">
              <label class="contact"><strong>Message:</strong></label>
              <textarea class="contact_textarea" name="message"></textarea>
            </div>
            <input type="submit" value="send"/>
            </div>
          </div>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
        </form>
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
