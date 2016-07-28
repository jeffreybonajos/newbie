<cfset add_student = "#application.studentsServices.addStudent(form.fld_studentFname, form.fld_studentLname, form.fld_studentCourse)#" />

<cflocation url="#mySelf##xfa.student_main#" />