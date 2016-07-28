<circuit access="internal">

    <fuseaction name="Get_Student_List">
        <include template="get_student_list.cfm" />
    </fuseaction>

	
	<fuseaction name="add_student">
        <include template="get_student_add.cfm" />
    </fuseaction>
	
	<fuseaction name="get_student_by_id">
        <include template="get_student_id.cfm" />
    </fuseaction>
	
	<fuseaction name="update_student">
        <include template="update_student.cfm" />
    </fuseaction>
	
	<fuseaction name="delete_student">
		<include template="delete_student" />
	</fuseaction>
	
</circuit>