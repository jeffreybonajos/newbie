<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: students --->
<!--- fuseaction: view --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "students">
<cfset myFusebox.thisFuseaction = "view">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_students.Get_Student_List" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_students">
<cfset myFusebox.thisFuseaction = "Get_Student_List">
<cftry>
<cfoutput><cfinclude template="../model/students/get_student_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "get_student_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_student_list.cfm in circuit m_students which does not exist (from fuseaction m_students.Get_Student_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_courses.Get_Course_List" --->
<cfset myFusebox.thisCircuit = "m_courses">
<cfset myFusebox.thisFuseaction = "Get_Course_List">
<cftry>
<cfoutput><cfinclude template="../model/courses/get_course_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 19 and right(cfcatch.MissingFileName,19) is "get_course_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_course_list.cfm in circuit m_courses which does not exist (from fuseaction m_courses.Get_Course_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_students.get_student_by_id" --->
<cfset myFusebox.thisCircuit = "m_students">
<cfset myFusebox.thisFuseaction = "get_student_by_id">
<cftry>
<cfoutput><cfinclude template="../model/students/get_student_id.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 18 and right(cfcatch.MissingFileName,18) is "get_student_id.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_student_id.cfm in circuit m_students which does not exist (from fuseaction m_students.get_student_by_id).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_courses.Get_Course_List" --->
<cfset myFusebox.thisCircuit = "m_courses">
<cfset myFusebox.thisFuseaction = "Get_Course_List">
<cftry>
<cfoutput><cfinclude template="../model/courses/get_course_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 19 and right(cfcatch.MissingFileName,19) is "get_course_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_course_list.cfm in circuit m_courses which does not exist (from fuseaction m_courses.Get_Course_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="v_students.header" --->
<cfset myFusebox.thisCircuit = "v_students">
<cfset myFusebox.thisFuseaction = "header">
<cfsavecontent variable="header_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_header.cfm in circuit v_students which does not exist (from fuseaction v_students.header).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="v_students.view_form" --->
<cfset myFusebox.thisFuseaction = "view_form">
<cfsavecontent variable="body_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_edit_form.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 17 and right(cfcatch.MissingFileName,17) is "dsp_edit_form.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_edit_form.cfm in circuit v_students which does not exist (from fuseaction v_students.view_form).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- do action="v_students.footer" --->
<cfset myFusebox.thisFuseaction = "footer">
<cfsavecontent variable="footer_content">
<cftry>
<cfoutput><cfinclude template="../view/students/dsp_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "dsp_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_footer.cfm in circuit v_students which does not exist (from fuseaction v_students.footer).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
</cfsavecontent>
<!--- fuseaction action="layout.myApp" --->
<cfset myFusebox.thisPhase = "postprocessFuseactions">
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "myApp">
<cftry>
<cfoutput><cfinclude template="../view/layout/lay_template.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "lay_template.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_template.cfm in circuit layout which does not exist (from fuseaction layout.myApp).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

