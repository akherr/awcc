<?php
include ($_SERVER['DOCUMENT_ROOT']."dbconnect.php");

//SQL statement for the insert

$one = 1;
$sql = "INSERT INTO Program_Requests (ProgramTypeID, GroupTypeID, AssignedUserID, StatusTypeID, FirstName, LastName, Phone, Email, Company, Role, ProposedLocation, ProposedDate, NumberParticipants, EstimatedCost, ClientMessage)"
        . " VALUES($one, $one, $one, $one," . $_POST['first_name'] . "," . $_POST['last_name']. "," . $_POST['phone'] . "," . $_POST['eddress'] . "," . $_POST['organization'] . "," . $_POST['role'] . "," . $_POST['ProgramLocation'] . "," . $_POST['ProgramDate'] . "," . $_POST['NumberParticipants'] . "," . $_POST['EstimatedCost'] . ", 'TEST MESSAGE')";
        
echo "<html><p>debugging so lets pring sql variable</p></html> ";
echo "<html><p>$sql</p></html>";
$result = $conn->query($sql);
include ($_SERVER['DOCUMENT_ROOT']."showContacts.php");
//echo "<html><p>$result</p></html>";

?>