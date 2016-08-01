<body>

<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Course</a></li>
	</ul>
  </div>
</nav>
	
<div class="container">
<h2> Edit Course </h2>
<cfform class="form-horizontal" name= "editStudent" method = "post"> 
	<label> Course Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_courseName" id="fld_courseName" value="#get_course_by_id.fld_courseName#" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Course Description:</label>
    <cfinput class="form-control" type = "text" name = "fld_courseDes" id="fld_courseDes" value="#get_course_by_id.fld_courseDes#" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
	<label> Course Teacher:</label>
	<cfselect class="form-control" name="fld_courseTeach"  id= "fld_courseTeach" query="Get_Teacher_List"  selected="#get_course_by_id.fld_courseTeach#" value="fld_teacherID" display="fld_teacherLname" queryposition="below" required="true" >
		<option value="0">Please choose a teacher</option>
	</cfselect>
	<cfinput name="fld_courseID" id="fld_courseID" type= "hidden" value = "#get_course_by_id.fld_courseID#" />
	<br>
    <input type = "submit" class="btn btn-info" name="fld_editCourse" id="fld_editCourse" value="Edit Course" > 
	<input type="Hidden" name="fuseaction" value="courses.update">
</cfform>

</div>

</body>