<cfcomponent displayname="students">
	
	
	<cffunction name="Init" access="public" returntype="students" output="false" displayname="" hint="">
        <cfreturn this />
    </cffunction>



	<cffunction name="getAllStudents" returntype="query">
		<cfstoredproc procedure="proc_student_list" datasource="Datasource">
			<cfprocresult name="students" />
		</cfstoredproc>
		<cfreturn students />
	</cffunction>
	
	<cffunction name="addStudent">
			<cfstoredproc procedure="proc_student_ins" datasource="Datasource" >
				<cfprocparam type="in" value="#form.fld_studentFname#" cfsqltype="cf_sql_varchar" />
				<cfprocparam type="in" value="#form.fld_studentLname#" cfsqltype="cf_sql_varchar" />
				<cfprocparam type="in" value="#form.fld_studentCourse#" cfsqltype="cf_sql_numeric" />
			</cfstoredproc>
			
	</cffunction>
	
	<cffunction name="getStudentByID" returntype="query">
			<cfstoredproc procedure="proc_student_sel" datasource="Datasource">
				<cfprocparam type="in" value="#url.studentID#" dbvarname="fld_studentID" cfsqltype="cf_sql_integer"/> 
				<cfprocresult name="student"/>
			</cfstoredproc>
				<cfreturn student>
	</cffunction>
	
	<cffunction name="updateStudent" >
			<cfstoredproc procedure="proc_student_upd" datasource="Datasource">
			<cfprocparam value="#form.fld_studentID#" cfsqltype="cf_sql_numeric" />
			<cfprocparam value="#form.fld_studentFname#" cfsqltype="cf_sql_varchar" />
			<cfprocparam value="#form.fld_studentLname#" cfsqltype="cf_sql_varchar" />
			<cfprocparam value="#form.fld_studentCourse#" cfsqltype="cf_sql_numeric" />
			</cfstoredproc>
	</cffunction>
		
	<cffunction name="deleteStudent">
			<cfstoredproc procedure="proc_student_del" datasource="Datasource" >
			<cfprocparam type="in" value="#url.studentID#" dbvarname="fld_studentID" cfsqltype="cf_sql_numeric" />
	</cfstoredproc>
	
	</cffunction>






</cfcomponent>