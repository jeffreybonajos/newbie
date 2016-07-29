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
	
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.all_main#</cfoutput>">Home</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.student_add#</cfoutput>">Add Student</a></li>
	</ul>
  </div>
</nav>
<div class="container">
	<div class="table-responsive">
	<h2> Students </h2>
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
				<th><a class="btn btn-info btn-sm" href="#mySelf##xfa.student_edit#&studentID=#get_student_list.fld_studentID#" name="submit"><span class="glyphicon glyphicon-edit"></span>&nbspEdit</a>
				<a class="btn btn-info btn-sm" href="javascript:confirmDelete(#get_student_list.fld_studentID#);"><span class="glyphicon glyphicon-trash"></span>&nbspDelete</a></th>
				
			</tr>
			</cfoutput>
		</table>
	</div>
</div>
		
</body>