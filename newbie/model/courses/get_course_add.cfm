<cfset add_course = "#application.coursesServices.addCourse(form.fld_courseName, form.fld_courseDes, form.fld_courseTeach)#" />

<cflocation url="#mySelf##xfa.course_main#" />