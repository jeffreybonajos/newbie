<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: courses --->
<!--- fuseaction: update --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "courses">
<cfset myFusebox.thisFuseaction = "update">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_courses.Get_Course_List" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_courses">
<cfset myFusebox.thisFuseaction = "Get_Course_List">
<cftry>
<cfoutput><cfinclude template="../model/courses/get_course_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 19 and right(cfcatch.MissingFileName,19) is "get_course_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_course_list.cfm in circuit m_courses which does not exist (from fuseaction m_courses.Get_Course_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_teachers.Get_Teacher_List" --->
<cfset myFusebox.thisCircuit = "m_teachers">
<cfset myFusebox.thisFuseaction = "Get_Teacher_List">
<cftry>
<cfoutput><cfinclude template="../model/teachers/get_teacher_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "get_teacher_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_teacher_list.cfm in circuit m_teachers which does not exist (from fuseaction m_teachers.Get_Teacher_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_courses.update_course" --->
<cfset myFusebox.thisCircuit = "m_courses">
<cfset myFusebox.thisFuseaction = "update_course">
<cftry>
<cfoutput><cfinclude template="../model/courses/update_course.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 17 and right(cfcatch.MissingFileName,17) is "update_course.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse update_course.cfm in circuit m_courses which does not exist (from fuseaction m_courses.update_course).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
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

