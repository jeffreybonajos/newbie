<circuit access="public">

   <prefuseaction>
        <do action="m_courses.Get_Course_List" />
		<do action="m_teachers.Get_Teacher_List" />
    </prefuseaction>
	
	<fuseaction name="main">
        <do action="v_courses.header" contentvariable="header_content" />
        <do action="v_courses.body" contentvariable="body_content" />
        <do action="v_courses.footer" contentvariable="footer_content" />
    </fuseaction>
	
	<fuseaction name="add">
		<do action="v_courses.header" contentvariable="header_content" />
        <do action="v_courses.add_form" contentvariable="body_content" />
        <do action="v_courses.footer" contentvariable="footer_content" />
		
    </fuseaction>
	
	<fuseaction name="save">
			<do action="m_courses.add_course" />
	</fuseaction>
	
	<fuseaction name="view">
		<do action="m_courses.get_course_by_id" />
        <do action="m_teachers.Get_Teacher_List" />
		<do action="v_courses.header" contentvariable="header_content" />
		<do action="v_courses.view_form" contentvariable="body_content" />
        <do action="v_courses.footer" contentvariable="footer_content" />
	</fuseaction>
	
	<fuseaction name="update">
		<do action="m_courses.update_course" />
	</fuseaction>
	
	<fuseaction name="delete">
			<do action="m_courses.delete_course" />
	</fuseaction>
		

</circuit>