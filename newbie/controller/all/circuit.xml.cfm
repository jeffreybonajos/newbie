<circuit access="public">

	<prefuseaction>
        <do action="m_main.Get_All_List" />
    </prefuseaction>


    <fuseaction name="mainPage">
        <do action="v_main.header" contentvariable="header_content" />
		<do action="v_main.body" contentvariable="body_content" />
		<do action="v_main.footer" contentvariable="footer_content" />
    </fuseaction>
	
    
   
</circuit>
