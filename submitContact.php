<?php
include ($_SERVER['DOCUMENT_ROOT']."/dbconnect.php");


//variables for prepare statement
$one = 1;
$first_name = filter_input(INPUT_POST, 'i_first_name', FILTER_SANITIZE_STRING);
$last_name = filter_input(INPUT_POST, 'i_last_name', FILTER_SANITIZE_STRING);
$phone = filter_input(INPUT_POST, 'i_phone', FILTER_SANITIZE_STRING);
$email = filter_input(INPUT_POST, 'i_email', FILTER_SANITIZE_STRING);
$company = filter_input(INPUT_POST, 'i_company', FILTER_SANITIZE_STRING);
$role = filter_input(INPUT_POST, 'i_role', FILTER_SANITIZE_STRING);
$proposed_location = filter_input(INPUT_POST, 'i_proposed_location', FILTER_SANITIZE_STRING);
$proposed_date = filter_input(INPUT_POST, 'i_proposed_date', FILTER_SANITIZE_STRING);
$number_participants = filter_input(INPUT_POST, 'i_number_participants', FILTER_SANITIZE_STRING);
$estimated_cost = filter_input(INPUT_POST, 'i_estimated_cost', FILTER_SANITIZE_STRING);
$client_message = filter_input(INPUT_POST, 'i_client_message', FILTER_SANITIZE_STRING);

//SQL statement for the insert
//$sql = "INSERT INTO Program_Requests (program_type_id, group_type_id, assigned_user_id, status_type_id, first_name, last_name, phone, email, company, role, proposed_location, proposed_date, number_participants, estimated_cost, client_message)"
        //. " VALUES($one, $one, $one, $one,'" . $_POST['first_name'] . "','" . $_POST['last_name']. "','" . $_POST['phone'] . "','" . $_POST['eddress'] . "','" . $_POST['organization'] . "','" . $_POST['role'] . "','" . $_POST['ProgramLocation'] . "','" . $_POST['ProgramDate'] . "','" . $_POST['NumberParticipants'] . "','" . $_POST['ProgramCost'] . "', 'TEST MESSAGE')";
        

if ($stmt = $conn->prepare("INSERT INTO Program_Requests (program_type_id, group_type_id, assigned_user_id, status_type_id, first_name, last_name, phone, email, company, role, proposed_location, proposed_date, number_participants, estimated_cost, client_message) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )")) {
 
    // Bind the variables to the parameter as strings. 
    $stmt->bind_param("iiiisssssssssss", $one, $one, $one, $one, $first_name, $last_name, $phone, $email, $company, $role, $proposed_location, $proposed_date, $number_participants, $estimated_cost, $client_message);
 
    // Execute the statement.
    $stmt->execute();
 
    // Close the prepared statement.
    $stmt->close();
 
}

//echo "<html><p>debugging so lets print sql variable</p></html> ";
//echo "<html><p>$sql</p></html>";
//$result = $conn->query($sql);
include ($_SERVER['DOCUMENT_ROOT']."/showContacts.php");
echo "<html><p>$result</p></html>";

?>