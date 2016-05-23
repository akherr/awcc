<?php

include ($_SERVER['DOCUMENT_ROOT']."/dbconnect.php");
$results = $conn->query("SELECT * from Program_Requests");
$numfields = $conn->field_count;
$numrows = $results->num_rows;

echo '<html><p> Number of Fields: ' . $numfields . ' Number of rows: ' . $numrows . '</p>';
echo "<table border='1' id='resultstable'><tr>";

for($i=0; $i<$numfields; $i++)
{
    $fieldinfo = mysqli_fetch_field_direct($results, $i);
    echo "<td id='tableheaders'>" . $fieldinfo->name . "</td>";
}

echo '</tr>';

while($row = $results->fetch_assoc()) {
    echo '<tr><td>' . $row['ProgramRequestID'] . '</td>';
    echo '<td>' . $row['ProgramTypeID'] . '</td>';
    echo '<td>' . $row['GroupTypeID'] . '</td>';
    echo '<td>' . $row['AssignedUserID'] . '</td>';
    echo '<td>' . $row['StatusTypeID'] . '</td>';
    echo '<td>' . $row['FirstName'] . '</td>';
    echo '<td>' . $row['LastName'] . '</td>';
    echo '<td>' . $row['Phone'] . '</td>';
    echo '<td>' . $row['Email'] . '</td>';
    echo '<td>' . $row['Company'] . '</td>';
    echo '<td>' . $row['Role'] . '</td>';
    echo '<td>' . $row['ProposedLocation'] . '</td>';
    echo '<td>' . $row['ProposedDate'] . '</td>';
    echo '<td>' . $row['NumberPraticipants'] . '</td>';
    echo '<td>' . $row['EstimatedCost'] . '</td>';
    echo '<td>' . $row['ClientMessage'] . '</td>';
    echo '<td>' . $row['UpdateTime'] . '</td>';
    echo '<td>' . $row['CreatedDate'] . '</td></tr>';
    
}

echo '</table></html>';
?>