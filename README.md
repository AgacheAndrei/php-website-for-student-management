# Website in php for student management 
## Project for univeristy

## The goal of the app
<p>
 The application developed addresses the issue of managing both scholarship and non-scholarship students within a high school.
</p>

## Analyze problems

<p>
A high school is a general education institution where graduates of primary schools are admitted, and where the knowledge required for further studies in higher education or various vocational fields is taught.
A student is considered a scholarship recipient if they meet certain conditions imposed by the state and the educational institution they are a part of. According to the current legislation, there can be several types of scholarship recipients:
Please note that all scholarships require a minimum overall grade that must be exceeded to enter the scholarship application process. These minimum grades vary widely depending on the type of scholarship and current legislation.
</p>
<pre>
- Merit Scholars: These students have an overall grade above a minimum set by the high school and the Inspectorate for Education in the city where the high school is located.
- Olympic Scholars: These are students who have achieved outstanding results at national or international levels in various olympiads.
- Social Scholarships are divided into different categories based on the challenges faced by a student. These categories include scholarships for students who are orphaned by one or both parents, students from rural areas, students facing difficult situations, and students with serious health issues or disabilities.
</pre>
<p>
Scholarships represent compensation that varies depending on the type of scholarship and the current legislation, and it is given to the student or their guardian during the validity period of the scholarship application.
There are scholarships that last for:
</p>
<pre>
- 6 months, such as academic scholarships like merit scholarships and Olympic scholarships.
- 12 months, such as social scholarships in the categories mentioned above.
</pre>
For example, a merit scholarship can reach up to 600 lei per month.
<p>
All types of scholarships require different types of documents to be submitted by students in a dossier, and after the evaluation process, the student finds out whether they will be on the list of scholarship recipients. For example, a merit scholarship requires a copy of the ID card, a copy of the student's transcript, and other documents that are already available at the high school, such as a copy of the birth certificate.
Each student receives a specific code for the documents they submit for a particular scholarship, which helps in the quick identification of the desired scholarship type. The secretariat can search for students much more quickly and easily based on this code.
For example, the code "CICNFM" is for a student applying for a merit scholarship.
</p>
<pre>
The main entities involved in the student management system are:
- The Student: Identified by:
  - Registration Number
  - Last Name
  - First Name
  - Personal Identification Number (CNP)
  - Other details such as address, phone number, overall grade, etc.
- The Administrator: Identified by:
  - An identifier received from the high school (authentication code, email, etc.)
  - Password
  - Role - What they are responsible for
- The Secretary: Identified by:
  - An identifier received from the high school (authentication code, email, etc.)
  - Password
  - Role - What they are responsible for
- The Type of Scholarship: Identified by:
  - Affiliated code
  - Set of rules for obtaining
  - Name
  - Required documents
  - Value
  - Duration
</pre>

## Interaction Module
<p>
The Administrator is the person responsible for managing students, modifying, altering, or deleting student data, as well as removing students from various systems, files, and lists that the high school maintains.
The Secretary is responsible for managing student records, financial records, creating various reports required by the educational institution, and organizing students into different categories (scholarship type, class, year of study, etc.).
The Student is the individual for whom documents and records are managed.
The Type of Scholarship represents the rules for approving scholarship applications, the duration of the scholarship, the value, and the eligible individuals for specific scholarships.
</p>
In addition to these main entities, there are some ancillary entities that play roles in categorizing students into multiple categories, such as:
<pre>
Classes:
 -Class Name
 -Start Year of the educational cycle
 -Specialization
 -Schedule
 -Specializations:
Name:
 -Duration
 -Subjects studied
 -Specification of the in-depth area
Profiles:
 -Name
 -General area of subjects studied
</pre>

## Code solution
<pre>
Webiste with php as the main language, css, html with database connection (SQL) and  XAMPP for the php server. 
Features:
- Adding new students to the system as scholarship or non-scholarship students.
- Modifying student data.
- Deleting students from the school's database.
- Searching for a student to analyze their data.
- Listing data from the database.
- Filtering data based on various fields in the database and displaying it.
- Generating graphs with data from various critical reports from different tables.
- Generating reports with essential information for the school.
- Maintaining an activity history in the database.
- Exporting reports in Excel format.
- Exporting tables in Excel format.
- Importing tables from Excel format.
- User authentication with field validation.
- Login and sign-out without closing the application.

Roles:
-Administrator:
  - Adding new students to the system as scholarship or non-scholarship students.
  - Modifying student data.
  - Deleting students from the school's database.
  - Listing data from the database.
  - Generating graphs with data from various critical reports from different tables.
  - Exporting tables in Excel format.
  - Analyzing the history of activities in the database.

-Secretary:
  - Searching for a student to analyze their data.
  - Listing data from the database.
  - Filtering data based on various fields in the database and displaying it.
  - Generating graphs with data from various critical reports from different tables.
  - Generating reports with essential information for the school.
  - Exporting reports in Excel format.
  - Importing student data from Excel format.

It includes essential features for data management, reporting, and user interaction.
</pre>
### Programing languages and technology used
<img align="left" width="30px" style="padding-right:10px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" /> 
<img align="left" width="30px" style="padding-right:10px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" />  
<img align="left" width="30px" style="padding-right:10px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg" /> 
<img align="left" width="30px" style="padding-right:10px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mysql/mysql-original-wordmark.svg" />
<img align="left" width="70px" style="padding-right:10px" src="https://upload.wikimedia.org/wikipedia/commons/0/03/Xampp_logo.svg" />
<img align="left" width="40px" style="padding-right:10px" src="https://github.com/AgacheAndrei/Database-Project-Java-Application-with-SQL./assets/36128809/a70ec2cd-1130-4719-ab97-0f7d0a67b843" /> 
<br>
<br>

<pre>
I used the PDO driver to establish the connection between the PHP program and the database.
  ->For saving files in .xlsx format, I used built-in functions in PHP.
</pre>
<br>

### Data base - concept
![Picture1](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/38608ac0-f09d-4c72-a4c4-5cc636508c27)

### How to use it
#### The program opens with a login window where authorized individuals need to sign in using their institutional email and password. Alternatively, new accounts can be created here.
![Screenshot 2023-05-17 115447](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/9c2c4815-cb63-440d-971b-09ddf84183f4)
#### Access credentials for authorized individuals.
![Screenshot 2023-05-17 115600](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/b6ae992c-8062-4495-b6c7-ec22d9574fcc)
#### Invalid access data; data validation is observed during authentication, and the individual must repeat the login process.
![Screenshot 2023-05-17 115632](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/57680490-54f9-4701-b677-e993fc9eedcc)
### Based on the authentication data used, the person, depending on their role as either an administrator or secretary, will see an interface that allows them to perform role-specific activities.
### View Administrator:
#### They have access to all pages, and the data on these pages can be modified in real-time.
![Screenshot 2023-05-17 115808](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/510a325e-b857-45b5-9939-e6f4d3bf5b29)
#### They can add a student by filling out the specific fields.
![Screenshot 2023-05-17 115845](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/1ff395c9-1aa5-4ee3-9c17-57c34aba9471)
#### The process of modifying a student.
![Screenshot 2023-05-17 115935](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/bd081816-24b1-4d68-8858-00e984b35440)
#### Deletion – removing a student from the database using the garbage icon.
![Screenshot 2023-05-17 120048](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/70ee10f2-eae9-4edb-9961-37f340cfc1d5)
#### Bar chart with important data from tables.
![Screenshot 2023-05-17 120234](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/c1e99f5d-15cc-44c6-96f0-3015c70dbe53)
#### Saving the chart in PDF, PNG, JPEG format, or printing it.
![Screenshot 2023-05-17 123002](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/b335886c-b93d-4745-9303-042f2d6e42a2)
#### Real-time analysis of activities on the platform.
![Screenshot 2023-05-17 120301](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/6cb1c541-2a7e-4187-85a0-04790dba085f)
#### Saving the student table to an Excel file.
#### The saved Excel file: [File Name]
![Screenshot 2023-05-17 120427](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/5e6afbee-761d-408e-a95a-bb755ed1d58d)
#### Reading data from Excel:
![Screenshot 2023-05-17 120519](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/22db4579-944d-4afc-be96-1e8713e74e21)
### View Secretary:
#### They have access to the "Students" page, and the data on this page can be modified in real-time.
![Screenshot 2023-05-17 120552](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/02ec520e-2f38-4f45-982c-fa8684bce53d)
#### Filtering data based on multiple criteria.
![Screenshot 2023-05-17 120800](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/4fea3e0b-d9a6-4b79-bb7f-8fabb553e6bb)
#### Searching for a student by registration number.
![Screenshot 2023-05-17 120913](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/3837995a-4e08-4fff-971b-0c7a17c96dce)
#### Various types of reports displayed in the designated area, with some examples of reports, automatically saved in Excel.
![Screenshot 2023-05-17 120942](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/9346f31e-30f8-4be4-a6ed-6c68f2bde917)
![Screenshot 2023-05-17 121037](https://github.com/AgacheAndrei/php-website-for-student-management/assets/36128809/456ebe9c-b85a-420c-bff0-7c4bbc832a13)


