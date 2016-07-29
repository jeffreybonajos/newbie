
<body>
	<script>
		function confirmDelete(courseID)
		{
			if(window.confirm('Are your sure to delete this course?'))
			{
				window.location.href = '<cfoutput>#mySelf##xfa.course_delete#</cfoutput>&courseID='+courseID;
			}
			else
			{
				null;
			}
		}
</script>



<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.all_main#</cfoutput>">Home</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.course_add#</cfoutput>">Add Course</a></li>
	</ul>
  </div>
</nav>
	
<div class="container">
	<div class="table-responsive">
		<table class="table table-bordered">
			<tr>
				<th> Course Name</th>
				<th> Course Description</th>
				<th> Course Teacher</th>
				<th> Actions</th>
			</tr>
			<cfoutput query= "Get_Course_List">
			<tr>
				<th>#Get_Course_List.fld_courseName#</th>
				<th>#Get_Course_List.fld_courseDes#</th>
				<th>#Get_Course_List.fld_teacherLname#</th>
				<th><a class="btn btn-info" href="#mySelf##xfa.course_edit#&courseID=#Get_Course_List.fld_courseID#">Edit</a>
				<a class="btn btn-info" href="javascript:confirmDelete(#fld_courseID#);">Delete</a></th>
				
			</tr>
			</cfoutput>
		</table>
</div>
</div>
		
</body>