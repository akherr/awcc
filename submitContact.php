<?php
include ($_SERVER['DOCUMENT_ROOT']."dbconnect.php");

//SQL statement for the insert

$sql = "INSERT INTO `Program_Requests` (`ProgramTypeID`, `GroupTypeID`, `AssignedUserID`, `StatusTypeID`, `FirstName`, `LastName`, `Phone`, `Email`, `Company`, `Role`, `ProposedLocation`, `ProposedDate`, `NumberParticipants`, `EstimatedCost`, `ClientMessage`)"
        . " VALUES(1, 1, 1, 1," . $_POST['first_name'] . "," . $_POST['last_name']. "," . $_POST['phone'] . "," . $_POST['eddress'] . "," . $_POST['organization'] . "," . $_POST['role'] . "," . $_POST['ProgramLocation'] . "," . $_POST['ProgramDate'] . "," . $_POST['NumberParticipants'] . "," . $_POST['EstimatedCost'] . ", 'TEST MESSAGE')";
        
$result = $conn->query($sql);
include ($_SERVER['DOCUMENT_ROOT']."showContacts.php");
echo "<html><p>$result</p></html>";

?>