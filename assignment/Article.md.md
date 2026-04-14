**Mastering the Basics: A Deep Dive into SQL Fundamentals**









This week, I have worked on a project of creating a Database Administrator for Nairobi Academy. My task was to build a school database from scratch, progressing from initial schema design to data population and complex querying.



\*\*Understanding the Language: DDL vs. DML\*\*



To manage a database effectively, one must distinguish between the blueprint and the content.



\- DDL (Data Definition Language): This is used to define the structure or schema of the database. It deals with the containers. Examples: CREATE, ALTER, DROP.

\- DML (Data Manipulation Language): This is used to manage the data within those structures. It deals with the content.Examples: INSERT, UPDATE, DELETE.



The Key Difference: DDL changes the shape of the database (e.g., adding a new table), while DML changes the information stored inside it (e.g., adding a new student).



\*\*Building and Managing the Academy Database.\*\*



In this assignment, I utilized four core SQL commands to manage the school's records:



1\. CREATE: I used this DDL command to establish the nairobi\_academy schema and its three primary tables: students, subjects, and exam\_results.



!\[Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/1jfi906zh16w62benl4a.png)





2\. INSERT: This DML command allowed me to populate the tables with 10 unique student profiles, subject details, and their corresponding exam marks.



!\[Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/qcgg12pk0xo8j8iv7zd9.png)







3\. UPDATE: I used this to maintain data accuracy. For instance, when Esther Akinyi moved to Nairobi, I updated her city record specifically using her student\_id.



!\[Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/5w3rzp9n21g3q0jnqii7.png)









4\. DELETE: When an exam result was cancelled, I used this to remove specific rows from the exam\_results table to ensure the database remained clean and relevant.



\*\*Precision Filtering with the WHERE Clause\*\*



The WHERE clause is the most powerful tool for extracting specific insights from data. 



I applied several operators:



1\. Equality (=): Used to find all students in a specific class, such as 'Form 4'.

2\. Comparison (>): Used to identify high-achieving students with marks greater than or equal to 70.

3\. BETWEEN: Excellent for ranges. I used this to find exams held within a specific four-day window in March 2024.

4\. IN: This allowed me to filter students living in multiple cities (Nairobi, Mombasa, or Kisumu) without writing multiple OR statements.

5\. LIKE: I used pattern matching (e.g., 'A%') to find students whose names started with specific letters or subjects containing the word 'Studies'.



!\[Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/uvslwlunbwiyf0qjqbtb.png)







\*\*Transforming Data with CASE WHEN\*\*

&#x20;

Using the CASE WHEN statement, I transformed raw numeric marks into meaningful labels. For example, I created a performance column that categorized marks into 'Distinction', 'Merit', 'Pass', or 'Fail'. I also used it to categorize students as 'Senior' or 'Junior' based on their form level, which makes the data much more readable for school management.







!\[Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/rnwsr3pnda0qfhh6evxh.png)







\*\*Weekly Reflection\*\*



What I found most challenging was the strict syntax of SQL. Missing a single comma or semicolon can halt an entire script.



However, it was incredibly interesting to see how a few lines of code could instantly organize hundreds of data points.



