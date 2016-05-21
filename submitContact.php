<?php
include ($_SERVER['DOCUMENT_ROOT']."dbconnect.php");

//SQL statement for the insert
$sql = "INSERT INTO `Program_Requests` (`ProgramTypeID`, `GroupTypeID`, `AssignedUserID`, `StatusTypeID`, `FirstName`, `LastName`, `Phone`, `Email`, `Company`, `Role`, `ProposedLocation`, `ProposedDate`, `NumberParticipants`, `EstimatedCost`, `ClientMessage`, `UpdateTime`, `CreatedDate`)"
        . " VALUES(1, 1, 1, 1, '$_POST[first_name]', '$_POST[last_name]', '$_POST[phone]', '$_POST[edress]', '$_POST[organization]', '$_POST[role]', '$_POST[ProgramLocation]', '$_POST[ProgramDate]', '$_POST[NumberParticipants]', '$_POST[EstimatedCost]', 'TEST MESSAGE', NULL, NULL)";
        
        
        
        
        //. "values('$_POST[supName]', '$_POST[supAddress]', '$_POST[supCity]',"
        //. "'$_POST[supState]', '$_POST[supZipcode]', '$_POST[supFax]', '$_POST[supWebsite]',"
        //. "'$_POST[supEmail]')";

//make the query and store in result
$result = $conn->query($sql);
echo "<html><p>$result</p></html>";
?>