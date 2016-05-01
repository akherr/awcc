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
            dlapluma_web  (PWD: H$hGR9RKuc&b^fy9XvUt ) -- has my guess as to correct (for non-admin access), which is: DELETE, EVENT, INDEX, SELECT, TRIGGER, EXECUTE, INSERT, REFERENCE, SHOW VIEW, UPDATE [PLEASE LET ME KNOW if/how these should be changed.]
            
                    
        
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
      <div class="column-3">
        <label for="CreatedDate">Record Created:</label>
        <input name="CreatedDate" type="text">
        <label for="UpdateTime">Record modified:</label>
        <input type="text" name="UpdateTime" id="UpdateTime">
        <label for="AssignedUser">Assigned to:</label>
        <input type="text" name="AssignedUser" id="AssignedUser">
        <label for="StatusType">Status:</label>
        <input type="text" name="StatusType" id="StatusType">
        <hr>
         <label for="interview">Interview</label>
       <input type="checkbox" name="interview" id="interview">
        <label for="date_faxpac">Date of Interview</label>
        <input type="text" name="date_interview" id="date_interview">
        <hr>
        <label for="faxpac">Fax Packet</label>
        <input type="checkbox" name="faxpac" id="faxpac">
         <label for="date_faxpac">Date of Fax Packet</label>
       <input type="text" name="date_faxpac" id="date_faxpac">
        <hr>
        <label for="proposal">Proposal Sent</label>
        <input type="checkbox" name="proposal" id="proposal">
          <label for="date_proposal">Date of Proposal</label>
      <input type="text" name="date_proposal" id="date_proposal">
        <hr>
        <label for="proposal">Proposal Sent</label>
        <input type="checkbox" name="proposal" id="proposal">
         <label for="date_proposal">Date of Proposal</label>
       <input type="text" name="date_proposal" id="date_proposal">
        <hr>
         <label for="followup">Followup</label>
       <input type="checkbox" name="followup" id="followup">
         <label for="date_followup">Date of Followup</label>
       <input type="text" name="date_followup" id="date_followup">
        <hr>
        <label for="contract">Contract Rec'd</label>
        <input type="checkbox" name="contract" id="contract">
         <label for="date_contract">Date of Contract</label>
       <input type="text" name="date_contract" id="date_contract">
        <hr>
         <label for="deposit">Deposit Rec'd</label>
       <input type="checkbox" name="deposit" id="deposit">
        <label for="date_deposit">Date of deposit</label>
        <input type="text" name="date_deposit" id="date_deposit">
        <hr>
        <label for="on_calendar">On Calendar, Job Named</label>
        <input type="checkbox" name="on_calendar" id="on_calendar">
        <label for="job_name">Job Name</label>
        <input type="text" name="job_name" id="job_name">
         <label for="date_on_calendar">Date on calendar</label>
       <input type="text" name="date_on_calendar" id="date_on_calendar">
        <hr>
        <label for="staffed">Job Staffed</label>
        <input type="checkbox" name="staffed" id="staffed">
        <label for="staff_notes">Staff, roles, pay</label>
        <textarea name="staff_notes" id="staff_notes" placeholder="List staffers, pay, roles; Confirm staffing; Connect lead staff and client's contact person"></textarea>
         <label for="date_staffed">Date Staffed</label>
       <input type="text" name="date_staffed" id="date_staffed">
        <hr>
         <label for="resources">Resources Acquired</label>
       <input type="checkbox" name="resources" id="resources">
        <label for="resources_notes">Resources Notes</label>
        <textarea name="resources_notes" id="resources_notes" placeholder="Location, meals, snacks, materials"></textarea>
        <label for="date_resources">Date Resources Acquired</label>
        <input type="text" name="date_resources" id="date_resources">
        <hr>
        <label for="delivered">Program Delivered</label>
        <input type="checkbox" name="delivered" id="delivered">
        <label for="date_delivered">Date program delivered</label>
        <input type="text" name="date_delivered" id="date_delivered">
        <hr>
        <label for="followup">Followup Completed</label>
        <input type="checkbox" name="followup" id="followup">
        <label for="followup_notes">Followup Notes</label>
        <textarea name="followup_notes" id="followup_notes" placeholder="Final payment received; Summary to office; Summary to client"></textarea>
        <label for="date_followup">Date followup completed</label>
        <input type="text" name="date_followup" id="date_followup">
        <hr>
      </div>
      <div class="column-6">
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
        <hr>
        <label for="new_note">Session Notes</label>
        <textarea name="new_note" id="new_note" placeholder="Text entered here will create a new Note for this record"></textarea>
      </div>
      <div class="column-3">
        <p>I'm thinking this is where we'd put the 'notes.' Maybe they should be previews here, w/ links to full?</p>
        <hr>
      </div>
    </div>
  </form>
</section>
</body>
</html>