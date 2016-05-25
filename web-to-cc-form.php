<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Contact - Website Entry</title>
<link href="css/form.css" rel="stylesheet" type="text/css">
<link href="css/layout.css" rel="stylesheet" type="text/css">
<link href="css/grid.css" rel="stylesheet" type="text/css">
<style>
#nick_name
{
	position: absolute;
	left: -999em;
	top: -999em;
}

</style>

</head>

<body>
    <?php include ($_SERVER['DOCUMENT_ROOT']."/dbconnect.php"); ?>
<h1>Client Contact - Website Entry</h1>
<hr>
<section class="wrapper"> 
  <!-- From the 'Program_Requests' table -->
  <form name="WebsiteEntry" method="post" action="">
        <input type="text" placeholder="Leave this honeypot field blank" name="nick_name" id="nick_name">
    <div class="row">
      <div class="column-3"></div>
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
        <label for="submitContact">Submit</label>
        <input type="submit" name="submitContact" id="SubmitContact">
      </div>
      <div class="column-3"></div>
    </div>
  </form>
</section>
</body>
</html>