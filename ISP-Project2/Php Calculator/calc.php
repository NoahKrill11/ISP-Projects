<!DOCTYPE HTML>
<html>
	<head>
		<link rel="stylesheet" href="style.css" />
		<title> 
			My calculator
		</title>
	</head>
	<body>
		<form method="post" attribute="post" action="answers.php">
		<p>First value is 
		<input type="text" name="first" name="first"></p>
		<br/>
		<p>Second value is 
		<input type="text" name="second" name="second"></p>
		<div class= "buttons">
            <!--This is where we get which operation to complete-->
            <INPUT TYPE="SUBMIT" VALUE="+" name = "op">
            <INPUT TYPE="SUBMIT" VALUE="-" name = "op">
            <INPUT TYPE="SUBMIT" VALUE="*"name = "op">
            <INPUT TYPE="SUBMIT" VALUE="/" name = "op">
             <INPUT TYPE="SUBMIT" VALUE="%" name = "op">
            
           </div>
		</form>
	</body>
</html>
