<cfcomponent displayname="courses">
	
	
	<cffunction name="Init" access="public" returntype="courses" output="false" displayname="" hint="">
        <cfreturn this />
    </cffunction>
	
	
	<cffunction name="getAllCourses" returntype="query">
		<cfstoredproc procedure="proc_course_list" datasource="Datasource">
			<cfprocresult name="courses" />
		</cfstoredproc>
		<cfreturn courses />
	</cffunction>
	
	<cffunction name="addCourse">
			<cfstoredproc procedure="proc_course_ins" datasource="Datasource" >
				<cfprocparam type="in" value="#form.fld_courseName#" cfsqltype="cf_sql_varchar" />
				<cfprocparam type="in" value="#form.fld_courseDes#" cfsqltype="cf_sql_varchar" />
				<cfprocparam type="in" value="#form.fld_courseTeach#" cfsqltype="cf_sql_numeric" />
			</cfstoredproc>
			
	</cffunction>
	
	<cffunction name="getCourseByID" returntype="query">
			<cfstoredproc procedure="proc_course_sel" datasource="Datasource">
				<cfprocparam type="in" value="#url.courseID#" dbvarname="fld_courseID" cfsqltype="cf_sql_integer"/> 
				<cfprocresult name="course"/>
			</cfstoredproc>
				<cfreturn course>
	</cffunction>
	
	<cffunction name="updateCourse" >
			<cfstoredproc procedure="proc_course_upd" datasource="Datasource">
			<cfprocparam value="#form.fld_courseID#" cfsqltype="cf_sql_numeric" />
			<cfprocparam value="#form.fld_courseName#" cfsqltype="cf_sql_varchar" />
			<cfprocparam value="#form.fld_courseDes#" cfsqltype="cf_sql_varchar" />
			<cfprocparam value="#form.fld_courseTeach#" cfsqltype="cf_sql_numeric" />
			</cfstoredproc>
	</cffunction>
		
	<cffunction name="deleteCourse">
			<cfstoredproc procedure="proc_course_del" datasource="Datasource" >
			<cfprocparam value="#url.courseID#" dbvarname="fld_courseID" cfsqltype="cf_sql_numeric" />
			
	</cfstoredproc>
	
	</cffunction>
	
	
	

	
</cfcomponent>