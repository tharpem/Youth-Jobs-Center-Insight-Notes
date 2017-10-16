
let displayRegistration = function displayRegistration(){
  popup.style.display = "block";
}

function registerStaff(){
  registerStaffSQL = """INPUT INTO registeredStaff (Session_Day, First_Name, Last_Name, Title, Start, Interviewer1, Interviewer2) VALUES (dateField, timeField, firstNameField, lastNameField, titleField, interviewerField, interviewer2Field)"""
  cur.execute(registerStaffSQL)
  cnx.commit()
}
const hideModal = function hideModal{
  popup.style.display = "none";
} 

updateInterview
  updateInterviewSQL="""SELECT lastName FROM Registration WHERE lastName=TABLE FIELD LASTNAME"""
  """rows=cur.fetchall()"""

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    popup.style.display = "none";
  }
}
