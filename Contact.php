<?php 
$ID = $_POST ['ID'];
$Name = $_POST ['Name'];
$LastName= $_POST ['LastName'];
$Description = $_POST ['Description'];


$conn = new mysqli('localhost','root','','EriAjeti');
if($conn->connect_error){
    die('Connection Failed :'.$conn->connect_error);
}else{
    $stmt = $conn->prepare("insert into Contact(ID, Name, LastName, Description)
    values(?, ?, ?, ?)");
    $stmt->bind_param("isss",$ID, $Name, $LastName, $Description);
    $stmt->execute();
    echo "Your contact form it's send successfully.";
    $stmt->close();
    $conn->close();
}
?>