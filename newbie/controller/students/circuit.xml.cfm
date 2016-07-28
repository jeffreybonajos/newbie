<circuit access="public">

   <prefuseaction>
        <do action="m_students.Get_Student_List" />
		<do action="m_courses.Get_Course_List" />
    </prefuseaction>


    <fuseaction name="main">
        <do action="v_students.header" contentvariable="header_content" />
        <do action="v_students.body" contentvariable="body_content" />
        <do action="v_students.footer" contentvariable="footer_content" />
    </fuseaction>
	
	<fuseaction name="add">
		<do action="v_students.header" contentvariable="header_content" />
        <do action="v_students.add_form" contentvariable="body_content" />
        <do action="v_students.footer" contentvariable="footer_content" />
		
    </fuseaction>
	
	<fuseaction name="save">
			<do action="m_students.add_student" />
			
	</fuseaction>
	
	<fuseaction name="view">
	
                <do action="m_students.get_student_by_id" />
                <do action="m_courses.Get_Course_List" />
                <do action="v_students.header" contentvariable="header_content" />
                <do action="v_students.view_form" contentvariable="body_content" />
                <do action="v_students.footer" contentvariable="footer_content" />
           
    </fuseaction>
	
	<fuseaction name="delete">
			<do action="m_students.delete_student" />
	</fuseaction>
	
	<fuseaction name="update">
			<do action="m_students.update_student" />
	</fuseaction>
	
	
	
</circuit>