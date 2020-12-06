<html>
  <head>
    <link rel="stylesheet" href="style.css" />
    <title> Calculator </title>
  </head>
  <body>
     <H1>JSP Calculator</H1>
     <H1>by Noah Krill</H1>
     	<FORM ACTION="basic.jsp" METHOD="POST">
      <div class= "container">
 			<p>First number</p>
 			<!--This is where we get the first and second numbers-->
            
            <INPUT TYPE="TEXT" NAME="op1" VALUE="">
            <BR>
            <p>Second number</p>
            <INPUT TYPE="TEXT" NAME="op2" VALUE="">
            <BR>
            </div>
            <div class= "buttons">
            <!--This is where we get which operation to complete-->
            <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;+&nbsp;&nbsp;" name = "Add">
            <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;-&nbsp;&nbsp;" name = "Subtract">
            <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;*&nbsp;&nbsp;"name = "Mult">
            <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;/&nbsp;&nbsp;" name = "Divide">
             <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;%&nbsp;&nbsp;" name = "Mod">
            
           </div>
           <p>Enter number to be squared or factorialized</p>
      <!--This is where we get the first and second numbers-->
            <div class= "container2">
            <INPUT TYPE="TEXT" NAME="op3" VALUE="">
            <BR>
            
           <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;squared&nbsp;&nbsp;" name = "Squared">
           <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;factorial&nbsp;&nbsp;" name = "fact">
         </div>
         </div>
           <p>Enter number and to what power</p>
            <div class= "con">
            <INPUT TYPE="TEXT" NAME="op4" VALUE="">
            <BR>
            <INPUT TYPE="TEXT" NAME="op5" VALUE="">
            <BR>
           <INPUT TYPE="SUBMIT" VALUE="&nbsp;&nbsp;power&nbsp;&nbsp;" name = "power">
         </div>

 		 </body>
</html>