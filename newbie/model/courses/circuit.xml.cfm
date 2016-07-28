<circuit access="internal">

    <fuseaction name="Get_Course_List">
        <include template="get_course_list.cfm" />
    </fuseaction>
	
	<fuseaction name="add_course" >
		<include template="get_course_add.cfm" />
	</fuseaction>
	
	<fuseaction name="get_course_by_id">
        <include template="get_course_id.cfm" />
    </fuseaction>
	
	<fuseaction name="update_course">
		<include template="update_course.cfm" />
	</fuseaction>
	
	<fuseaction name="delete_course">
		<include template="delete_course.cfm" />4
	</fuseaction>
	
</circuit>