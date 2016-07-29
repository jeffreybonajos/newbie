<!---
	fusebox.init.cfm is included by the framework at the start of every request.
	It is included within a cfsilent tag so it cannot generate output. It is
	intended to be for per-request initialization and manipulation of the
	Fusebox fuseaction variables.
	
	You can set attributes.fuseaction, for example, to override the default
	fuseaction.
	
	A typical usage is to set "self" and "myself" variables, as shown below,
	for use inside display fuses when creating links.

	Fusebox 5 and earlier - set variables explicitly:
	<cfset self = "index.cfm" />
	<cfset myself = "#self#?#myFusebox.getApplication().fuseactionVariable#=" />
	
	Fusebox 5.1 and later - set variables implicitly from the Fusebox itself.
	
	Could also modify the self location here:
	<cfset myFusebox.setSelf("/myapp/start.cfm") />
--->
<cfsilent>
	
	<cfset xfa.student_main = "students.main" />
	<cfset xfa.student_add = "students.add" />
	<cfset xfa.student_edit = "students.view" />
	<cfset xfa.student_delete = "students.delete" />
	
	<cfset xfa.course_main = "courses.main" />
	<cfset xfa.course_add = "courses.add" />
	<cfset xfa.course_edit = "courses.view" />
	<cfset xfa.course_delete = "courses.delete" />
	
	<cfset xfa.teacher_main = "teachers.main" />
	<cfset xfa.teacher_add = "teachers.add" />
	<cfset xfa.teacher_edit = "teachers.view" />
	<cfset xfa.teacher_delete = "teachers.delete" />
	
	<cfset xfa.all_main = "all.mainPage" />
	

 <cfparam name="url.appReload" type="string" default="false"/>
    <cfif not structKeyExists(application, 'appInitialized') or url.appReload>
        <cflock name="appInitBlock" type="exclusive" timeout="10">
            <cfif not structKeyExists(application, 'appInitialized') or url.appReload>
                <cfset application.allServices = createObject('component', 'newbie.component.all').init()/>
				<cfset application.studentsServices = createObject('component', 'newbie.component.student.students').init()/>
				<cfset application.coursesServices = createObject('component', 'newbie.component.course.courses').init()/>
				<cfset application.teachersServices = createObject('component', 'newbie.component.teacher.teachers').init()/>
               <cfset application.appInitialized = true/>
            </cfif>
        </cflock>
        <cfset structClear(session)/>
    </cfif>

<!--- Set app constants. --->
    <cfset self = "index.cfm">
    <cfset mySelf = "#urlSessionFormat('#self#')#"/>

    <cfif findNoCase('index.cfm;', mySelf)>
        <cfset mySelf = replace(mySelf, 'index.cfm;', 'index.cfm?')/>
    </cfif>

    <cfif right(mySelf, 9) eq "index.cfm">
        <cfset mySelf = mySelf & "?"/>
        <cfelse>
        <cfset mySelf = mySelf & "&"/>
    </cfif>

    <cfset mySelf = mySelf & "#application.fusebox.fuseactionVariable#="/>

</cfsilent>

