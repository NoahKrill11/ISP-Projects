<!DOCTYPE html>
<html>
<body>
<h1><center>Zippy's Bookstore</center></h1>	
<form action="" method="post">
    <select name="bookSelection">
        <option value="" disabled selected>Choose option</option>
        <option value="view">view books</option>
        <option value="add">add book</option>
        <option value="delete">delete books</option>
        <option value="change">change book price</option>
    </select>

    <input type="submit" name="submit" value="Choose options">
</form>
<p>The value for the discontinued is 1 for yes 0 for no.</p>

<?php
	$ser="localhost";
	$user="root";
	$pass="root";
	$db="Zippy_Bookstore";
	if(isset($_POST['submit']))
	{
		if(!empty($_POST['bookSelection'])) 
		{
			$con=mysqli_connect($ser,$user,$pass,$db);
			$selected = $_POST['bookSelection'];
			
		    if($selected=="add")
			{
				?>
				<p>Book name</p>
				<form method="get">
				<INPUT TYPE = "Text" VALUE ="" NAME = "bookname">
				<p>Book ID number</p>
				<INPUT TYPE = "number" VALUE ="" NAME = "bookID">
				<p>Price</p>
				<INPUT TYPE = "number" VALUE ="" NAME = "price">
				<p>Quantity</p>
				<INPUT TYPE = "number" VALUE ="" NAME = "quantity">
				<p>Discontiued</p>
				<INPUT TYPE = "number" VALUE ="" NAME = "flag">
				<input type="submit" value="Submit">
			</form>
				<?php
				$bookname=$_GET['bookname'];
				$idnum=$_GET['bookID'];
				$price=$_GET['price'];
				$quantity=$_GET['quantity'];
				$discontinued=$_GET['flag'];
				$sql = "INSERT into books (id, title, price, quantity, flag) VALUES ('$idnum','$bookname' ,'$price', '$quantity' ,'$discontinued')";
				$result1 = mysqli_query($con, $sql);
				
			}
			else if($selected=="delete")
			{
				?>
				<p>Book name</p>
				<form method="get">
				<INPUT TYPE = "Text" VALUE ="" NAME = "bookname">
				<input type="submit" value="Submit">
			</form>
			<?php
				$bookname=$_GET['bookname'];
				$sql2 = "DELETE from books WHERE title = '$bookname'";
				$result2 = mysqli_query($con, $sql2);
			}
			else if($selected=="change")
			{
				?>
				<p>Book name</p>
				<form method="get">
				<INPUT TYPE = "Text" VALUE ="" NAME = "bookname">
				<p>Price</p>
				<INPUT TYPE = "number" VALUE ="" NAME = "price">
				<input type="submit" value="Submit">
			</form>
			<?php
			$bookname=$_GET['bookname'];
			$price=$_GET['price'];
			$sql3="UPDATE books SET price = '$price' WHERE title = '$bookname'";
			$result3 = mysqli_query($con, $sql3);
			}
			else if($selected=="view")
			{
				$sql = "SELECT id, title, price, quantity, flag FROM books";
				$result = mysqli_query($con, $sql);
				if (mysqli_num_rows($result) > 0) 
				{
				// output data of each row
					while($row = mysqli_fetch_assoc($result))
					{
					echo "ID #" . $row["id"]. " title: " .$row["title"]. " Price $" . $row["price"]. " quantity ".$row["quantity"]. " discontinued ". $row["flag"] ."<br>";
					}
				} 
			
			}
			
		}
	}
	mysqli_close($conn);
?>
</body>
</html> 