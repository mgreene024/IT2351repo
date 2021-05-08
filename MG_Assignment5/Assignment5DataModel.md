Assignment 5

1.	
 

	Relationship between customers and addresses
We have the customers as the left table and addresses as the right table. These tables have a one-to-one relationship.
customers table has `customer_id` an integer field as it’s primary key.
addresses table has `address_id` an integer field as it’s primary key.
addresses table has `customer_id` an integer field as a foreign key. This foreign key tells us about the customer that this address belongs to. 
2.	
b. Following tables will be used to store the data:
students(student_id (PK), student_name, address, email)
majors (major_id, major_name)
	classes (class_id (PK), class_name, major_id (FK))
student_class(id (PK), student_id (FK), class_id (FK))
The database EER diagram after normalization is given below
 
c. To achieve normalization these steps were taken
First Normal Form - As the classes column had multiple values and it should be atomic, A separate table to store classes information was created. Now we can store class_id in the students table to know what class a student is taking.
Second Normal Form - There is no partial dependency so after achieving 1NF we already have 2NF in this case.
Third Normal Form - There is a transitive dependency in the table with majors column. A course belongs to a major therefore we can store majors information in a separate table and have a  foreign key for it in the classes table. Once this is done, we have class_id in students table and major_id in classes table as foreign keys.
BCNF - To achieve BCNF, we’ll create a table student_classes. This table will store information about student and classes they’ve opted for, this way multi-value dependency is removed from students table.

A
