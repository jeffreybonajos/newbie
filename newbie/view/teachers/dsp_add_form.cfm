<body>
	
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
	</ul>
  </div>
</nav>	
	
<div class="container">
<h2> Add Teacher </h2>
<cfform class="form-horizontal" name= "addTeacher" method = "post" id="addStudent" > 
	<label> First Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_teacherFname" id="fld_teacherFname" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Last Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_teacherLname" id="fld_teacherLname" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
    <cfinput type = "submit" class="btn btn-info" name="fld_addTeacher" id="fld_addTeacher" value="Add Teacher" > 
	<input type="Hidden" name="fuseaction" value="teachers.save">
</cfform>

</div>
</body>