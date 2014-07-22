<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.internet.InternetAddress"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fd</title>
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
    <div class="crumb_navigation"> Navigation: <a href="http://all-free-download.com/free-website-templates/">Home</a> &lt; <span class="current">Category name</span> </div>
     <%@include file="left.jsp" %>
    <!-- end of left content -->
    <div class="center_content">
      <div class="center_title_bar">Feedback Form</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
            <% 
                String email=request.getParameter("email");
                String message =request.getParameter("message");
Properties p=System.getProperties();
Session S=Session.getDefaultInstance(p,null);
p.setProperty("mail.smtp.host","smtp.gmail.com");
p.setProperty("mail.smtp.user","offc.thegizmostore@gmail.com");
p.setProperty("mail.smtp.password","asdfghjklqwertyuiop");
p.setProperty("mail.smtp.starttls.enable","true");
p.setProperty("mail.smtp.port","587");
p.setProperty("mail.smtp.auth","true");
Message m=new MimeMessage(S);
InternetAddress i=new InternetAddress("offc.thegizmostore@gmail.com");
m.setFrom(i);
m.setSubject("hello");
m.setText(message+email);
InternetAddress to=new InternetAddress("offc.thegizmostore@gmail.com");
m.setRecipient(Message.RecipientType.TO, to);
Transport tr= S.getTransport(i);
tr.connect("smtp.gmail.com",587,"offc.thegizmostore@gmail.com","asdfghjklqwertyuiop");
tr.sendMessage(m, m.getAllRecipients());
out.println("Mail Sent !");
                %>
        </div>
        <div class="bottom_prod_box_big"></div>
      </div>
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
