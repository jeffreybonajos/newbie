<circuit access="public">

   <prefuseaction>
        <do action="m_teachers.Get_Teacher_List" />
    </prefuseaction>


    <fuseaction name="main">
        <do action="v_teachers.header" contentvariable="header_content" />
        <do action="v_teachers.body" contentvariable="body_content" />
        <do action="v_teachers.footer" contentvariable="footer_content" />
    </fuseaction>
	
	<fuseaction name="add">
		<do action="v_teachers.header" contentvariable="header_content" />
        <do action="v_teachers.add_form" contentvariable="body_content" />
        <do action="v_teachers.footer" contentvariable="footer_content" />
    </fuseaction>
	
	<fuseaction name="save">
			<do action="m_teachers.add_teacher" />
	</fuseaction>
	
	<fuseaction name="view">
			<do action="m_teachers.get_teacher_by_id"/>
			<do action="v_teachers.header" contentvariable="header_content" />
			<do action="v_teachers.view_form" contentvariable="body_content" />
			<do action="v_teachers.footer" contentvariable="footer_content" />
	</fuseaction>
	
	<fuseaction name="update">
		<do action="m_teachers.update_teacher" />
	</fuseaction>
	
	<fuseaction name="delete">
		<do action="m_teachers.delete_teacher" />
	</fuseaction>
	
</circuit>