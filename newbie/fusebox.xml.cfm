<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE fusebox>
<!--
	Example fusebox.xml control file. Shows how to define circuits, classes,
	parameters and global fuseactions.

	This is just a test namespace for the plugin custom attribute example
-->
<fusebox xmlns:test="test">
	<!--
		this is a model-view-controller application
		there is one public controller circuit (controller/, aliased to app)
		there is one internal model circuit (model/time/, aliased to time)
		there are two internal view circuits:
			view/display, aliased to display
			view/layout, aliased to layout
	-->
	<circuits>
		<!-- illustrates defaults for parent ("") and relative ("true") -->
		<circuit alias="display" path="view/display/" parent="" />
		<circuit alias="layout" path="view/layout/" parent="" />
		<circuit alias="app" path="controller/" parent="" />
		
		<circuit alias="all" path="controller/all/" parent="" />
		<circuit alias="v_main" path="view/main/" parent="" />
		<circuit alias="m_main" path="model/main/" parent="" />
		
		<circuit alias="students" path="controller/students/" parent="" />
		<circuit alias="m_students" path="model/students/" parent="" />
		<circuit alias="v_students" path="view/students/" parent="" />
		
		<circuit alias="courses" path="controller/courses/" parent="" />
		<circuit alias="m_courses" path="model/courses/" parent="" />
		<circuit alias="v_courses" path="view/courses/" parent="" />
		
		<circuit alias="teachers" path="controller/teachers/" parent="" />
		<circuit alias="m_teachers" path="model/teachers/" parent="" />
		<circuit alias="v_teachers" path="view/teachers/" parent="" />
		
		
		
	</circuits>

	<!--
	<classes>
		<class alias="MyClass" type="component" classpath="path.to.SomeCFC" constructor="init" />
	</classes>
	-->

	<parameters>
		<parameter name="defaultFuseaction" value="all.mainPage" />
		<!-- you may want to change this to development-full-load mode: -->
		<parameter name="mode" value="development-full-load" />
		<parameter name="conditionalParse" value="true" />
		<!-- change this to something more secure: -->
		<parameter name="password" value="skeleton" />
		<parameter name="strictMode" value="true" />
		<parameter name="debug" value="false" />
		<!-- we use the core file error templates -->
		<parameter name="errortemplatesPath" value="/fusebox5/errortemplates/" />
		<!--
			These are all default values that can be overridden:
		<parameter name="fuseactionVariable" value="fuseaction" />
		<parameter name="precedenceFormOrUrl" value="form" />
		<parameter name="scriptFileDelimiter" value="cfm" />
		<parameter name="maskedFileDelimiters" value="htm,cfm,cfml,php,php4,asp,aspx" />
		<parameter name="characterEncoding" value="utf-8" />
		<parameter name="strictMode" value="false" />
		<parameter name="allowImplicitCircuits" value="false" />
		-->
	</parameters>

	<globalfuseactions>
		<appinit>
		
		</appinit>
		<!--
		<preprocess>
			<fuseaction action="time.preprocess"/>
		</preprocess>
		-->
		<postprocess>
			<fuseaction action="layout.myApp"/>
		</postprocess>
	</globalfuseactions>

	<plugins>
		<phase name="preProcess">
		
			<!--
			<plugin name="prePP" template="example_plugin" test:abc="123">
				<parameter name="def" value="456" />
			</plugin>
			-->
		</phase>
		<phase name="preFuseaction">
		</phase>
		<phase name="postFuseaction">
		</phase>
		<phase name="fuseactionException">
		</phase>
		<phase name="postProcess">
		</phase>
		<phase name="processError">
		</phase>
	</plugins>

</fusebox>
