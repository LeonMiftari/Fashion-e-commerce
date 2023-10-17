<?php 
$fullName = $_POST ['fullName'];
$lastName = $_POST ['lastName'];
$address= $_POST ['address'];
$email = $_POST ['email'];
$number = $_POST ['number'];
$size = $_POST ['size'];


$conn = new mysqli('localhost','root','','EriAjeti');
if($conn->connect_error){
    die('Connection Failed :'.$conn->connect_error);
}else{
    $stmt = $conn->prepare("insert into Orders(fullName, lastName, address, email, number, size)
    values(?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssis",$fullName, $lastName, $address, $email, $number, $size);
    $stmt->execute();
    echo "Your order has been completed successfully.";
    $stmt->close();
    $conn->close();
}
?>