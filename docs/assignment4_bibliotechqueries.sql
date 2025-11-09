--List the names of all current students of the library in alphabetical order
SELECT student_name FROM student ORDER BY student_name; 

 --List all the books by [insert author ID here]
 SELECT book_title FROM book WHERE author_id = 4325; 

 --listing all the books in alphabetical order
SELECT book_title FROM book ORDER BY book_title; 

--update a student's email address and phone number where student id is given
UPDATE student SET email_address = 'ali567@gmail.com',  phone_number = 111222334 WHERE student_id = 5167; 
SELECT email_address, phone_number FROM student WHERE student_id = 5167; -- This is to see if the information is updated

--adding a new student into our db
INSERT INTO student (student_id, email_address, student_name, phone_number) VALUES (6754, 'jozy@gmail.com','Jozy Altidore', '444444437');
SELECT * FROM student WHERE student_id = 6754; --This is to see if the information is updated

--This is just to list the contents of the table
SELECT * FROM can_contain WHERE ISBN = '533443' AND branch_id = 1111; 

--List student id, amount, reason who have not paid their fine yet
SELECT student_id, amount, reason FROM book_fine WHERE status = 'unpaid'; 

-- list the student id of students who's fines are unpaid and is below or equals to 5$.
SELECT student_id, amount
FROM book_fine 
WHERE amount <= 5.00
AND status='unpaid';

--list book titles and publication years of books which were published after 2004, ordered by latest books
SELECT book_title, publication_year AS latest_books
FROM book 
WHERE publication_year > 2004
ORDER BY publication_year DESC;

-- inserted a new author name and id 
INSERT INTO author (author_id, author_name) VALUES (4332, 'J.K Rowling');

--updated (corrected) the author name we just inserted
UPDATE author SET author_name = 'J.K. Rowling' WHERE author_id = 4332;

-- distinct author names to avoid duplication
SELECT DISTINCT author_name FROM author;

-- updated branch name of the given id 
UPDATE librarybranch SET branch_name = 'The Ryerson Library' WHERE branch_id = 3333;

----to view the upcoming loans in order
SELECT loan_date FROM loan ORDER BY loan_date; 

-- view all columns from part_of (relation) table
SELECT * FROM part_of;

-- view all columns from published (relation) table
SELECT * FROM published;

--update the phone number of an university admin who's id is given
UPDATE university_admin SET phone_number = '6663338898' WHERE admin_id = 1234;
SELECT * FROM university_admin WHERE admin_id = 1234; -- -- This is to see if the information is updated

--list book titles and genre of books which are either 'sci-fi' or 'romance'
SELECT book_title, genre
FROM book 
WHERE genre= 'sci-fi' OR genre='romance';

--to get unique email addreses of studens to prevent duplication
SELECT DISTINCT email_address FROM student; 

--to get unique student names of studens to prevent duplication
SELECT DISTINCT student_name FROM student;

COMMIT;