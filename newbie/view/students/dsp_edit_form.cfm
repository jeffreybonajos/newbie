<body>
	
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.student_main#</cfoutput>">Student</a></li>
	</ul>
  </div>
</nav>	
	
<div class="container">
<h2> Edit Student </h2>
<cfform class="form-horizontal" name= "editStudent" method = "post" action="index.cfm?fuseaction=students.update" > 
	<label> First Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_studentFname" id="fld_studentFname" value="#get_student_by_id.fld_studentFname#" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Last Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_studentLname" id="fld_studentLname" value="#get_student_by_id.fld_studentLname#" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
	<label> Course:</label>
	<cfselect class="form-control" name="fld_studentCourse"  id= "fld_studentCourse" query="Get_Course_List"  selected="#get_student_by_id.fld_studentCourse#" value="fld_courseID" display="fld_courseName" queryposition="below" required="true" >
		<option value="0">Please choose the student course</option>
	</cfselect>
	<cfinput name="fld_studentID" id="fld_studentID" type= "hidden" value = "#get_student_by_id.fld_studentID#" />
	<br>
    <cfinput type = "submit" class="btn btn-info" name="fld_editStudent" id="fld_editStudent" value="Edit Student" > 
</cfform>

</div>

</body>