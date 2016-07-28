<cfset add_teacher = "#application.teachersServices.addTeacher(form.fld_teacherFname, form.fld_teacherLname)#" />

<cflocation url="#mySelf##xfa.teacher_main#" />
