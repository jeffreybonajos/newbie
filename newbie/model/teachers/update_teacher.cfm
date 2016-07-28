<cfset update_teacher = "#application.teachersServices.updateTeacher(form.fld_teacherID, form.fld_teacherFname, form.fld_teacherLname)#" />

<cflocation url="#mySelf##xfa.teacher_main#" />