<circuit access="internal">

    <fuseaction name="Get_Teacher_List">
        <include template="get_teacher_list.cfm" />
    </fuseaction>
	
	<fuseaction name="add_teacher">
		<include template="get_teacher_add.cfm" />
	</fuseaction>
	
	<fuseaction name="get_teacher_by_id" >
		<include template="get_teacher_id.cfm" />
	</fuseaction>	
	
	<fuseaction name="update_teacher" >
		<include template="update_teacher.cfm" />
	</fuseaction>
	
	<fuseaction name="delete_teacher" >
		<include template="delete_teacher.cfm" />
	</fuseaction>
	
</circuit>