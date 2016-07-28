<cfset update_student = "#application.studentsServices.updateStudent(form.fld_studentID, form.fld_studentFname, form.fld_studentLname, form.fld_studentCourse)#" />

<cflocation url="#mySelf##xfa.student_main#" />