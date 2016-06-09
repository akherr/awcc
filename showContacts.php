<?php

include ($_SERVER['DOCUMENT_ROOT']."/dbconnect.php");
$results = $conn->query("SELECT * from Program_Requests");
$numfields = $conn->field_count;
$numrows = $results->num_rows;

echo '<html><p> Number of Fields: ' . $numfields . ' Number of rows: ' . $numrows . '</p>';
echo "<table border='1' id='resultstable'><tr>";
echo "<td id='tableheaders'></td>";

for($i=0; $i<$numfields; $i++)
{
    $fieldinfo = mysqli_fetch_field_direct($results, $i);
    echo "<td id='tableheaders'>" . $fieldinfo->name . "</td>";
}

echo '</tr>';

while($row = $results->fetch_assoc()) {
    echo '<tr><td><table border = \'0\'><tr><td><a href="showContact.php?id=' . $row['program_request_id'] . '"> SHOW CONTACT </a></tr></td></table></td>';
    echo '<td>' . $row['program_request_id'] . '</td>';
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
    
}

echo '</table></html>';
?>