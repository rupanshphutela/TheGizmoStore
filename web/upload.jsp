<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Upload</title>
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
      <div class="center_title_bar">UPLOADS</div>
      <div class="prod_box_big">
        <div class="top_prod_box_big"></div>
        <div class="center_prod_box_big">
        
            <div class="sumit">
                <form action="upload" method="post"> 
   <div class="rupansh">
    <div class="sum1">
        CATEGORY:
    </div>
    <div class="rup2"><select name="Category"><option value="Mobile Phones">Mobile Phones</option> <option value="Phablets">Phablets</option> <option value="Tablets">Tablets</option>   </select></div>

</div>
     <div class="rupansh">
    <div class="sum1">
        IMAGE OF YOUR GADGET:
    </div>
    <div class="rup2"><input type="file" name="img"/></div>
</div>
 <div class="rupansh">
    <div class="sum1">
        BRAND:
    </div>
    <div class="rup2"><input type="text" name="brand"/></div>
</div>                   
<div class="rupansh">
    <div class="sum1">
        NAME:
    </div>
    <div class="rup2"><input type="text" name="name"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
        COLORS AVAILABLE:
    </div>
    <div class="rup2"><input type="text" name="cb1"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
      2G/3G:  
    </div>
    <div class="rup2"><select name="cb2"> <option value="2G">2G</option> <option value="3G">3G</option>   </select></div>
</div>

<div class="rupansh">
    <div class="sum1">
      SIM:  
    </div>
    <div class="rup2"><select name="cb3"><option value="NANO">NANO</option> <option value="MINI">MINI</option> <option value="MICRO">MICRO</option><option value="NO SIM">NO SIM</option>   </select></div>
</div>
<div class="rupansh">
    <div class="sum1">
     DISPLAY:  
    </div>
    <div class="rup2"><select name="cb4"> <option value="TFT">TFT</option> <option value="IPS-LCD">IPS-LCD</option><option value="AMOLED">AMOLED</option>   </select></div>
</div> 
<div class="rupansh">
    <div class="sum1">
     RESOLUTION:  
    </div>
    <div class="rup2"><input type="text" name="res"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
     LOUDSPEAKER:
    </div>
    <div class="rup2"><select name="cb5"> <option value="YES">YES</option> <option value="NO">NO</option>   </select></div>
</div>
<div class="rupansh">
    <div class="sum1">
     3.5mm JACK:
    </div>
    <div class="rup2"><select name="cb6"> <option value="YES">YES</option> <option value="NO">NO</option>   </select></div>
</div>
<div class="rupansh">
    <div class="sum1">
     INTERNAL MEMORY:
    </div>
    <div class="rup2"><input type="text" name="int"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
     CARD SLOT:
    </div>
    <div class="rup2"><select name="cb7"> <option value="YES">YES</option> <option value="NO">NO</option>   </select></div>
</div>
<div class="rupansh">
    <div class="sum1">
     GPRS/EDGE:
    </div>
    <div class="rup2"><input type="text" name="gprs"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
     HSDPA/HSUPA:
    </div>
    <div class="rup2"><input type="text" name="hs"/></div>
</div>
<div class="rupansh">
    <div class="sum1">
     Wi-Fi/DIRECT:
    </div>
    <div class="rup2"><input type="text" name="dir"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     DLNA/Wi-Fi HOTSPOT:
    </div>
    <div class="rup2"><select name="cb8"> <option value="YES">YES</option> <option value="NO">NO</option>   </select></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     CAMERA:
    </div>
    <div class="rup2"><input type="text" name="cam"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     O.S:
    </div>
    <div class="rup2"><input type="text" name="os"/></div>
</div>
                   <div class="rupansh">
    <div class="sum1">
     CPU:
    </div>
    <div class="rup2"><input type="text" name="cpu"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     MEMORY:
    </div>
    <div class="rup2"><input type="text" name="ram"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     GPU:
    </div>
    <div class="rup2"><input type="text" name="gpu"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     BLUETOOTH:
    </div>
    <div class="rup2"><select name="cb9"> <option value="v3.0">v3.0</option> <option value="v4.0">v4.0</option> <option value="v2.1">v2.1</option><option value="v3.1">v3.1</option>  </select></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     NFC:
    </div>
    <div class="rup2"><select name="cb10"> <option value="YES">YES</option> <option value="NO">NO</option>   </select></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     BATTERY:
    </div>
    <div class="rup2"><input type="text" name="bat"/></div>
</div>
                     
<div class="rupansh">
    <div class="sum1">
        PRICE EXPECTED(in Rs.):
    </div>
    <div class="rup2"><input type="text" name="price"/></div>
</div>
          
                    <div class="rupansh">
    <div class="sum1">
        CLOSE DATE:
    </div>
    <div class="rup2"><input type="text" name="cdate"/></div>
</div>
                    <div class="rupansh">
    <div class="sum1">
     STATUS:
    </div>
    <div class="rup2"><input type="text" name="status"/></div>
</div>
    <div class="rupansh">
    <div class="sum1">
     AVAILABILITY:
    </div>
    <div class="rup2"><input type="text" name="availability"/></div>
</div>
                    
      <div class="rupansh">
    
    <div class="rup3">
      
   
        <input type="submit" value="UPLOAD"/>
    </div>
</div>   
  </form>
</div>
     
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
