<body>
	
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teacher</a></li>
	</ul>
  </div>
</nav>	
	
<div class="container">
<h2> Edit Teacher </h2>
<cfform class="form-horizontal"  name= "editTeacher" method = "post" action="index.cfm?fuseaction=teachers.update" > 
	<label> First Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_teacherFname" id="fld_teacherFname" value="#get_teacher_by_id.fld_teacherFname#" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Last Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_teacherLname" id="fld_teacherLname" value="#get_teacher_by_id.fld_teacherLname#" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
	<cfinput name="fld_teacherID" id="fld_teacherID" type= "hidden" value = "#get_teacher_by_id.fld_teacherID#" />
	<br>
    <input type = "submit" class="btn btn-info" name="fld_editTeacher" id="fld_editTeacher" value="Edit Teacher" > 
</cfform>

</div>
</body>