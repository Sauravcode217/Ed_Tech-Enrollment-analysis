-- Objective:
-- Verifying Most important finding using SQL.

use enrollment;
Select * from enrollment;

-- 1.Through Facebook maximum number of enrolments had happened.
Select distinct Source, count(Child_Name) as No_of_children from enrollment group by Source order by No_of_children DESC limit 3;  

-- 2. From the United States maximum number of enrolments had happened 
Select distinct Country, count(Child_Name) as No_of_children from enrollment group by Country order by No_of_children DESC;

-- 3.Onetime and Course are types of classes that have maximum enrolment. 
Select distinct Type, count(Child_Name) as No_of_children from enrollment group by Type order by No_of_children DESC;

-- 4.Maximum number of children enrolling from Monday to Friday Classes.
Select distinct Day, count(Child_Name) as No_of_children from enrollment group by Day order by No_of_children DESC;

-- 5.The most common Preference of communication by the children’s Gmail.
Select distinct Communication_Preference, count(Child_Name) as No_of_children from enrollment group by Communication_Preference order by No_of_children DESC;

-- 6.Maximum number of children attending classes between 4 to 5 pm from all time zones.
Select Start_time,End_time,Timezone, count(Child_Name) as No_of_student from enrollment where Attended ='YES'
group by Start_time,End_time,Timezone order by No_of_student DESC;

-- 7.Annalisa Ard is the best-rated teacher in concept explanation and making topics interesting,
-- children also demanded another class (specifically for Creative Writing 101) and the final score of the class was highest during feedback.
Select Distinct Teacher_Name,Class_name, count(Child_Name) as No_of_children from enrollment where Attended ='YES' and Concepts = 'YES' and Interesting = "YES" and Another_class = "YES"
and Score_Concept  = 3 and Score_Interesting = 3 and Score_Another_class = 3
group by Teacher_Name,Class_name order by No_of_children DESC ;

-- Total number of unique students
Select count(Distinct Child_Name) as unique_child from enrollment;

-- Total number of unique Teachers 
Select count(Distinct Teacher_Name) as unique_Teacher from enrollment;













