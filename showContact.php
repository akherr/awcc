<?php
include ($_SERVER['DOCUMENT_ROOT']."/dbconnect.php");

$id = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);
$contact;

if ($stmt = $conn->prepare("SELECT * FROM Program_Requests WHERE program_request_id = ?")) {
 
    // Bind the variables to the parameter as strings. 
    $stmt->bind_param("i", $id);
 
    // Execute the statement.
    $stmt->execute();
    
    $result = $stmt->get_result();
 
    $row = $result->fetch_assoc();
    echo '<tr><td>' . $row['program_request_id'] . '</td>';
    echo '<td>' . $row['program_type_id'] . '</td>';
    echo '<td>' . $row['group_type_id'] . '</td>';
    echo '<td>' . $row['assigned_user_id'] . '</td>';
    echo '<td>' . $row['status_type_id'] . '</td>';
    echo '<td>' . $row['first_name'] . '</td>';
    echo '<td>' . $row['last_name'] . '</td>';
    echo '<td>' . $row['phone'] . '</td>';
    echo '<td>' . $row['email'] . '</td>';
    echo '<td>' . $row['company'] . '</td>';
    echo '<td>' . $row['role'] . '</td>';
    echo '<td>' . $row['proposed_location'] . '</td>';
    echo '<td>' . $row['proposed_date'] . '</td>';
    echo '<td>' . $row['number_participants'] . '</td>';
    echo '<td>' . $row['estimated_cost'] . '</td>';
    echo '<td>' . $row['client_message'] . '</td>';
    echo '<td>' . $row['updated'] . '</td>';
    echo '<td>' . $row['created'] . '</td></tr>';
    
    // Close the prepared statement.
    $stmt->close();
 
}

 else
     {
    echo '<html><p>No results found!</p></html>';
 
     
 }



?>