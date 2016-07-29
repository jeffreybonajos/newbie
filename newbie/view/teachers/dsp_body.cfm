<script>
		function confirmDelete(teacherID)
		{
			if(window.confirm('Are your sure to delete this teacher?'))
			{
				window.location.href = '<cfoutput>#mySelf##xfa.teacher_delete#</cfoutput>&teacherID='+teacherID;
			}
			else
			{
				null;
			}
		}
</script>
<body>
	

<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.all_main#</cfoutput>">Home</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.teacher_add#</cfoutput>">Add Teacher</a></li>
	</ul>
  </div>
</nav>
	
<div class="container">
	<div class="table-responsive">
	<h2> Teachers </h2>
		<table class="table table-bordered">
			<tr>
				<th> First Name</th>
				<th> Last Name</th>
				<th> Actions</th>
			</tr>
			<cfoutput query= "Get_Teacher_List">
			<tr>
				<th>#Get_Teacher_List.fld_teacherFname#</th>
				<th>#Get_Teacher_List.fld_teacherLname#</th>
				<th><a class="btn btn-info" href="#mySelf##xfa.teacher_edit#&teacherID=#Get_Teacher_List.fld_teacherID#">Edit</a>	
				<a class="btn btn-info" href="javascript:confirmDelete(#fld_teacherID#);">Delete</a></th>
				
			</tr>
			</cfoutput>
		</table>
	</div>
</div>
</body>