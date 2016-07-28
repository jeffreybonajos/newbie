<body>

<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="courses.cfm">Course</a></li>
	</ul>
  </div>
</nav>
	
<div class="container">
<h2> Add Course </h2>
<cfform class="form-horizontal" name= "editStudent" method = "post" action="index.cfm?fuseaction=courses.save"> 
	<label> Course Name:</label>
    <cfinput class="form-control" type = "text" name = "fld_courseName" id="fld_courseName" required="true" message="Please provide a valid first name" validateAt="onSubmit"/>
	<br>
	<label> Course Description:</label>
    <cfinput class="form-control" type = "text" name = "fld_courseDes" id="fld_courseDes" required="true" message="Please provide a valid last name" validateAt="onSubmit"/> 
	<br>
	<label> Course Teacher:</label>
	<cfselect class="form-control" name="fld_courseTeach"  id= "fld_courseTeach" query="Get_Teacher_List" value="fld_teacherID" display="fld_teacherLname" queryposition="below" required="true" >
		<option value="0">Please choose a teacher</option>
	</cfselect>
	<br>
    <input type = "submit" class="btn btn-info" name="fld_addCourse" id="fld_addCourse" value="Add Course" > 
</cfform>

</div>