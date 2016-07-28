<cfcomponent displayname="teachers">
	
	
	<cffunction name="Init" access="public" returntype="teachers" output="false" displayname="" hint="">
        <cfreturn this />
    </cffunction>
	
	
	<cffunction name="getAllTeachers" returntype="query">
		<cfstoredproc procedure="proc_teacher_list" datasource="Datasource">
		<cfprocresult name="teacherlist" />
		</cfstoredproc>
		<cfreturn teacherlist>
	
	</cffunction>
	
	<cffunction name="addTeacher">
		<cfstoredproc procedure="proc_teacher_ins" datasource="Datasource">
			<cfprocparam type="in" value="#form.fld_teacherFname#" cfsqltype="cf_sql_varchar" />
			<cfprocparam type="in" value="#form.fld_teacherLname#" cfsqltype="cf_sql_varchar" />
		</cfstoredproc>
	</cffunction>
	
	<cffunction name="getTeacherByID" returntype="query" >
		<cfstoredproc procedure="proc_teacher_sel" datasource="Datasource">
			<cfprocparam type="in" value="#url.teacherID#" dbvarname="fld_teacherID" cfsqltype="cf_sql_integer" />
			<cfprocresult name="teacher" />
		</cfstoredproc>
			<cfreturn teacher />
	</cffunction>
	
	<cffunction name="updateTeacher" >
			<cfstoredproc procedure="proc_teacher_upd" datasource="Datasource">
			<cfprocparam type="in" value="#form.fld_teacherID#" cfsqltype="cf_sql_integer" />
			<cfprocparam type="in" value="#form.fld_teacherFname#" cfsqltype="cf_sql_varchar" />
			<cfprocparam type="in" value="#form.fld_teacherLname#" cfsqltype="cf_sql_varchar" />
			</cfstoredproc>
	</cffunction>
	
	<cffunction name="deleteTeacher">
			<cfstoredproc procedure="proc_teacher_del" datasource="Datasource" >
			<cfprocparam value="#url.teacherID#" dbvarname="fld_teacherID" cfsqltype="cf_sql_integer" />
			
	</cfstoredproc>
	
	</cffunction>





</cfcomponent>