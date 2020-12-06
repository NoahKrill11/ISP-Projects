<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="style.css" />
<title>Answer</title>
</head>
<body>
<?php
$first = $_POST['first'];
$second= $_POST['second'];

$first = number_format($first);
$second= number_format($second);

if(!is_numeric($first)|!is_numeric($second))
{
	echo "You have entered something wrong please try again";
}
else
{
if($_POST['op'] == '+') {
echo "The answer is ";
echo $first + $second;
}
else if($_POST['op'] == '-') {
echo "The answer is ";
echo $first - $second;
}
else if($_POST['op'] == '*') {
echo "The answer is ";
echo $first * $second;
}
else if($_POST['op'] =='/') {
echo "The answer is ";
echo $first / $second;
}
else if($_POST['op'] == '%') {
echo "The answer is ";
echo $first % $second;
}
else {
    echo "Enter the numbers properly";
}
}
?>
</p> 
</body>
</html>