/** The name of the database for WordPress */
define('DB_NAME', 'consuod7_yjc_insight_notes');

/** MySQL database username */
define('DB_USER', 'consuod7_mt');

/** MySQL database password */
define('DB_PASSWORD', 'IdellaNzinga8');

/** MySQL hostname */
define('DB_HOST', 'localhost');



function test_input($data)
{
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

$todayDate = <?php date("Y/m/d")?>

<?php $primaryResponsibilityField =;
if
($_SERVER["REQUEST_METHOD"]== "POST") {$primaryResponsibilityField=test_input($_POST["primaryResponsibilityField"]);
  if (!pre_match("/^[a-zA-Z ]*$/",$name)){
    $nameErr = "Only letters and white space allowed";}
  }>

  function registerStaff(){
    registerStaffSQL = """INPUT INTO registeredStaff (Session_Day, First_Name, Last_Name, Title, Start, Interviewer1, Interviewer2) VALUES (dateField, timeField, firstNameField, lastNameField, titleField, interviewerField, interviewer2Field)"""
    cur.execute(registerStaffSQL)
    cnx.commit()
  }
