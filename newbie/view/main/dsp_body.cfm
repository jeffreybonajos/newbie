
<body>
	
<nav class="navbar navbar-default">
<div class="container-fluid">
	<ul class="nav navbar-nav">
		<li><a href="<cfoutput>#mySelf##xfa.student_main#</cfoutput>">Students</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.course_main#</cfoutput>">Courses</a></li>
		<li><a href="<cfoutput>#mySelf##xfa.teacher_main#</cfoutput>">Teachers</a></li>
	</ul>
  </div>
</nav>
<div class="container">
<div class="table-responsive">
	<h2> Status </h2>
		<table class="table table-bordered">
			<tr>
				<th> Students Name</th>
				<th> Students Course</th>
				<th> Teachers </th>
			</tr>
			<cfoutput query="Get_All_List">
			<tr>
				<th>#Get_All_List.fld_studentFname# #Get_All_List.fld_studentLname#</th>
				<th>#Get_All_List.fld_courseName#</th>
				<th>#Get_All_List.fld_teacherFname# #Get_All_List.fld_teacherLname#</th>
			</tr>
			</cfoutput>
		</table>
</div>
</div>
		
</body>