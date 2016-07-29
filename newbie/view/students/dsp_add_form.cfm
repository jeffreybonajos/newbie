<body>

<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.student_main#</cfoutput>">Students</a></li>
	</ul>
  </div>
</nav>
	
<div class="container">
<h2> Add Student </h2>
<cfform class="form-horizontal" name= "addStudent" method = "POST" id="addStudent" action="index.cfm?fuseaction=students.save"> 
	<label> First Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_studentFname" id="fld_studentFname" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Last Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_studentLname" id="fld_studentLname" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
	<label> Course:</label>
	<cfselect class="form-control" name="FLD_STUDENTCOURSE" id= "FLD_STUDENTCOURSE" query="Get_Course_List" value="FLD_COURSEID" display="FLD_COURSENAME" queryposition="below" required="true" >
		<option value="0">Please choose the student course</option>
	</cfselect>
	
	<br>
    <cfinput type = "submit" class="btn btn-info" name="fld_addStudent" id="fld_addStudent" value="Add Student" > 
</cfform>

</div>
</body>