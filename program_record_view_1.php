<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Contact - Record View 1</title>
<link href="css/form.css" rel="stylesheet" type="text/css">
<link href="css/layout.css" rel="stylesheet" type="text/css">
<link href="css/grid.css" rel="stylesheet" type="text/css">



<!-- 
		SERVER_DB_CONNECTION_INFO 
		 
         The database is dlapluma_awcc
         I've created two MySQL users:
         	dlapluma_staff (PWD: $0SyTc9?aS7q ) -- has all privileges
            dlapluma_web  (PWD: H$hGR9RKuc&b^fy9XvUt ) -- has my guess as to correct (for non-admin access), which is: DELETE, EVENT, INDEX, SELECT, TRIGGER, EXECUTE, INSERT, REFERENCE, SHOW VIEW, UPDATE
            
                    
        
-->





</head>

<body>
<h1>Client Contact - Record View 1</h1>
<hr>
<section class="wrapper"> 
  <!-- From the 'Program_Requests' table -->
  <form name="form1" method="post" action="">
         <input name="ProgramRequestID" type="hidden" value="">
   <div class="row">
      <div class="column-2">
      	<label for="CreatedDate">Record Created:</label>
        <input name="CreatedDate" type="text">
        <label for="UpdateTime">Record modified:</label>
        <input type="text" name="UpdateTime" id="UpdateTime">
        <label for="AssignedUser">Assigned to:</label>
        <input type="text" name="AssignedUser" id="AssignedUser">
        <label for="StatusType">Status:</label>
        <input type="text" name="StatusType" id="StatusType">
        <hr>
      </div>
      <div class="column-8">
        <label for="first_name">First Name</label>
        <input type="text" name="first_name" id="first_name">
        <label for="last_name">Last Name</label>
        <input type="text" name="last_name" id="last_name">
        <label for="organization">Company/Organization</label>
        <input type="text" name="organization" id="organization">
        <label for="role">Title/Role</label>
        <input type="text" name="role" id="role">
        <label for="eddress">Email address</label>
        <input type="text" name="eddress" id="eddress">
        <label for="phone">Telephone</label>
        <input type="text" name="phone" id="phone">
        <label for="message">Message</label>
        <textarea name="message" id="message"></textarea>
        <hr>
        <label for="ProgramLocation">Program Location</label>
        <input type="text" name="ProgramLocation" id="ProgramLocation">
        <label for="ProgramDate">Program Date</label>
        <input type="text" name="ProgramDate" id="ProgramDate">
        <label for="NumberParticipants">Number of Participants</label>
        <input type="text" name="NumberParticipants" id="NumberParticipants">
        <label for="ProgramCost">Program Cost</label>
        <input type="text" name="ProgramCost" id="ProgramCost">
      </div>
      <div class="column-2">two columns</div>
    </div>
  </form>
</section>
</body>
</html>