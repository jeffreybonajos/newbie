<cfcomponent displayname="all">
	
	
	<cffunction name="Init" access="public" returntype="all" output="false" displayname="" hint="">
        <cfreturn this />
    </cffunction>


	<cffunction name="getAll" returntype="query">
		<cfstoredproc procedure="proc_all_list" datasource="Datasource">
			<cfprocresult name="alls" />
		</cfstoredproc>
		<cfreturn alls />
	</cffunction>
	
</cfcomponent>