<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the layout portion of an application.
-->
<circuit access="internal">
	
	<!--
		Example layout fuseaction. The layout assumes a content variable
		called "body" has been created.
	-->
	
	<fuseaction name="header">
        <include template="dsp_header.cfm" />
    </fuseaction>

	<fuseaction name="body">
		<include template="dsp_body.cfm" />
	</fuseaction>

    <fuseaction name="footer">
        <include template="dsp_footer.cfm" />
    </fuseaction>
	
</circuit>
