<body>
<script>
		function confirmDelete(studentID)
		{
			if(window.confirm('Are your sure to delete this student?'))
			{
				window.location.href = '<cfoutput>#mySelf##xfa.student_delete#</cfoutput>&studentID='+studentID;
			}
			else
			{
				null;
			}
		}
</script>
	


<h1> Students </h1>
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="index.cfm">Home</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.student_add#</cfoutput>">Add Student</a></li>
	</ul>
  </div>
</nav>
<div class="container">
		<table class="table table-bordered">
			<tr>
				<th> First Name</th>
				<th> Last Name</th>
				<th> Course</th>
				<th> Actions</th>
			</tr>
			<cfoutput query= "get_student_list">
			<tr>
				<th>#get_student_list.fld_studentFname#</th>
				<th>#get_student_list.fld_studentLname#</th>
				<th>#get_student_list.fld_courseName#</th>
				<th><a class="btn btn-info" href="#mySelf##xfa.student_edit#&studentID=#get_student_list.fld_studentID#" name="submit">Edit</a>
				<a class="btn btn-info" href="javascript:confirmDelete(#get_student_list.fld_studentID#);">Delete</a></th>
				
			</tr>
			</cfoutput>
		</table>
</div>
		
</body>