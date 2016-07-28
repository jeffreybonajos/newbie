<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: teachers --->
<!--- fuseaction: update --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "teachers">
<cfset myFusebox.thisFuseaction = "update">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="m_teachers.Get_Teacher_List" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "m_teachers">
<cfset myFusebox.thisFuseaction = "Get_Teacher_List">
<cftry>
<cfoutput><cfinclude template="../model/teachers/get_teacher_list.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 20 and right(cfcatch.MissingFileName,20) is "get_teacher_list.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse get_teacher_list.cfm in circuit m_teachers which does not exist (from fuseaction m_teachers.Get_Teacher_List).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="m_teachers.update_teacher" --->
<cfset myFusebox.thisFuseaction = "update_teacher">
<cftry>
<cfoutput><cfinclude template="../model/teachers/update_teacher.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 18 and right(cfcatch.MissingFileName,18) is "update_teacher.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse update_teacher.cfm in circuit m_teachers which does not exist (from fuseaction m_teachers.update_teacher).">
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

