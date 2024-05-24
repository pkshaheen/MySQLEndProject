CREATE DATABASE Library;
USE Library;

CREATE TABLE Branch(
	Branch_no INT PRIMARY KEY,
	Manager_Id INT NOT NULL,
	Branch_address VARCHAR(255) NOT NULL,
	Contact_no VARCHAR(20) NOT NULL);

INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, 101, '123 Main Street', '123-456-7890'),
(2, 102, '456 Elm Street', '456-789-0123'),
(3, 103, '789 Oak Street', '789-012-3456'),
(4, 104, '101 Pine Street', '101-112-1314'),
(5, 105, '202 Cedar Street', '202-213-2425');

CREATE TABLE Employee(
	Emp_Id INT PRIMARY KEY,
	Emp_name VARCHAR(255),
	Position VARCHAR(255),
	Salary DECIMAL(10,2),
	Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no) ON DELETE CASCADE);
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(201, 'John Smith', 'Manager', 60000.00, 1),
(202, 'Alice Johnson', 'Librarian', 45000.00, 1),
(203, 'Michael Brown', 'Library Assistant', 35000.00, 1),
(204, 'Emily Davis', 'Clerk', 30000.00, 1),
(206, 'Bob Williams', 'Librarian', 45000.00, 2),
(207, 'Sophia Martinez', 'Library Assistant', 35000.00, 2),
(208, 'Daniel Rodriguez', 'Clerk', 30000.00, 2),
(209, 'David Brown', 'Manager', 68000.00, 3),
(210, 'Emma Lopez', 'Librarian', 45000.00, 3),
(211, 'Matthew Davis', 'Library Assistant', 35000.00, 3),
(212, 'Olivia Garcia', 'Clerk', 30000.00, 3),
(213, 'Michael Wilson', 'Manager', 60000.00, 4),
(214, 'Noah Hernandez', 'Librarian', 45000.00, 4),
(215, 'Isabella Wilson', 'Library Assistant', 35000.00, 4),
(216, 'Daniel Kim', 'Clerk', 30000.00, 4),
(217, 'Sophia Nguyen', 'Manager', 65000.00, 5),
(218, 'Mason Torres', 'Librarian', 45000.00, 5),
(219, 'Liam Perez', 'Library Assistant', 35000.00, 5),
(220, 'Ava Gonzalez', 'Clerk', 30000.00, 5);
INSERT INTO Employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(221, 'Jhon Mathew', 'Library Assistant', 35000.00, 1),
(222, 'Dani Kiv', 'Clerk', 32000.00, 4),
(223, 'Isa Will', 'Library Assistant', 37000.00, 4);

CREATE TABLE Customer(
	Customer_Id INT PRIMARY KEY,
	Customer_name VARCHAR(255),
	Customer_address VARCHAR(255),
	Reg_date DATE);
    
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(301, 'Alice Johnson', '101 Maple Street', '2021-12-15'),
(302, 'Bob Williams', '202 Cedar Street', '2021-11-20'),
(303, 'Emily Davis', '303 Elm Street', '2021-10-25'),
(304, 'Michael Wilson', '404 Pine Street', '2021-09-30'),
(305, 'Sophia Martinez', '505 Oak Street', '2021-08-05'),
(306, 'Matthew Brown', '606 Elm Street', '2021-07-10'),
(307, 'Olivia Garcia', '707 Cedar Street', '2021-06-15'),
(308, 'Daniel Rodriguez', '808 Pine Street', '2021-05-20'),
(309, 'Emma Lopez', '909 Oak Street', '2021-04-25'),
(310, 'Noah Hernandez', '1010 Elm Street', '2021-03-30'),
(311, 'Ava Gonzalez', '1111 Pine Street', '2022-02-05'),
(312, 'Liam Perez', '1212 Oak Street', '2022-03-10'),
(313, 'Isabella Wilson', '1313 Elm Street', '2022-04-15'),
(314, 'Mason Torres', '1414 Pine Street', '2022-05-20'),
(315, 'Sophia Nguyen', '1515 Oak Street', '2022-06-25'),
(316, 'Ethan Hernandez', '1616 Elm Street', '2022-07-30'),
(317, 'Oliver Rodriguez', '1717 Pine Street', '2022-08-05'),
(318, 'Amelia Perez', '1818 Oak Street', '2022-09-10'),
(319, 'Elijah Wilson', '1919 Elm Street', '2022-10-15'),
(320, 'Avery Torres', '2020 Pine Street', '2022-11-20'),
(321, 'Harper Nguyen', '2121 Oak Street', '2022-12-25');
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(322, 'William Turner', '2222 Elm Street', '2021-06-30'),
(323, 'Elizabeth Bennett', '2323 Pine Street', '2021-05-25');

CREATE TABLE Books (
    ISBN INT PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(255),
    Rental_Price DECIMAL(10, 2),
    Status ENUM('yes', 'no'),
    Author VARCHAR(255),
    Publisher VARCHAR(255));

INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
(1001, 'The History of the World', 'History', 15.00, 'yes', 'John Smith', 'ABC Publications'),
(1002, 'To Kill a Mockingbird', 'Novel', 12.00, 'yes', 'Harper Lee', 'HarperCollins'),
(1003, 'Alice''s Adventures in Wonderland', 'Story', 10.00, 'yes', 'Lewis Carroll', 'Macmillan Publishers'),
(1004, 'The Great Gatsby', 'Novel', 12.00, 'no', 'F. Scott Fitzgerald', 'Scribner'),
(1005, '1984', 'Fiction', 10.00, 'yes', 'George Orwell', 'Secker & Warburg'),
(1006, 'Pride and Prejudice', 'Novel', 12.00, 'yes', 'Jane Austen', 'T. Egerton, White, & Co.'),
(1007, 'The Hobbit', 'Fantasy', 12.00, 'no', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(1008, 'War and Peace', 'Historical Fiction', 15.00, 'yes', 'Leo Tolstoy', 'The Russian Messenger'),
(1009, 'The Catcher in the Rye', 'Novel', 12.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
(1010, 'Harry Potter and the Philosopher''s Stone', 'Fantasy', 15.00, 'no', 'J.K. Rowling', 'Bloomsbury'),
(1011, 'The Lord of the Rings', 'Fantasy', 15.00, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
(1012, 'The Chronicles of Narnia', 'Fantasy', 15.00, 'yes', 'C.S. Lewis', 'Geoffrey Bles'),
(1013, 'The Adventures of Tom Sawyer', 'Adventure', 10.00, 'yes', 'Mark Twain', 'Chatto & Windus'),
(1014, 'Frankenstein', 'Horror', 10.00, 'no', 'Mary Shelley', 'Lackington, Hughes, Harding, Mavor & Jones'),
(1015, 'The War of the Worlds', 'Science Fiction', 12.00, 'yes', 'H.G. Wells', 'William Heinemann'),
(1016, 'The Da Vinci Code', 'Thriller', 12.00, 'yes', 'Dan Brown', 'Doubleday'),
(1017, 'The Catcher in the Rye', 'Novel', 12.00, 'no', 'J.D. Salinger', 'Little, Brown and Company'),
(1018, 'The Alchemist', 'Fiction', 10.00, 'yes', 'Paulo Coelho', 'HarperCollins'),
(1019, 'Gone with the Wind', 'Historical Fiction', 15.00, 'yes', 'Margaret Mitchell', 'Macmillan Publishers'),
(1020, 'The Shining', 'Horror', 10.00, 'no', 'Stephen King', 'Doubleday');


    
CREATE TABLE IssueStatus(
	Issue_Id INT PRIMARY KEY,
	Issued_cust  INT,
	Issued_book_name VARCHAR(255),
	Issue_date DATE,
	Isbn_book INT,
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id) ON DELETE CASCADE,
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN) ON DELETE CASCADE);
    

INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(501, 301, 'The Da Vinci Code', '2022-05-01', 1016),
(502, 302, 'To Kill a Mockingbird', '2022-05-05', 1002),
(503, 303, 'Alice''s Adventures in Wonderland', '2022-05-10', 1003),
(504, 304, 'The Great Gatsby', '2022-05-15', 1004),
(505, 305, '1984', '2022-05-20', 1005),
(506, 306, 'Pride and Prejudice', '2022-05-25', 1006),
(507, 307, 'The Hobbit', '2022-05-30', 1007),
(508, 308, 'War and Peace', '2022-06-01', 1008),
(509, 309, 'The Catcher in the Rye', '2022-06-05', 1009),
(510, 310, 'Harry Potter and the Philosopher''s Stone', '2022-06-10', 1010),
(511, 311, 'The Lord of the Rings', '2022-06-15', 1011),
(512, 312, 'The Chronicles of Narnia', '2023-06-20', 1012),
(513, 313, 'The Adventures of Tom Sawyer', '2023-06-25', 1013),
(514, 314, 'Frankenstein', '2023-06-30', 1014),
(515, 315, 'The War of the Worlds', '2023-06-05', 1015);
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(516, 316, 'Gone with the Wind', '2023-07-01', 1019),
(517, 317, 'The Shining', '2023-07-05', 1020),
(518, 318, 'The Alchemist', '2023-07-10', 1018),
(519, 319, 'The Adventures of Tom Sawyer', '2023-07-15', 1013),
(520, 320, 'The War of the Worlds', '2023-07-20', 1015);

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 INT,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id) ON DELETE CASCADE,
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN) ON DELETE CASCADE);
    
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(601, 301, 'The Da Vinci Code', '2022-05-10', 1016),
(602, 302, 'To Kill a Mockingbird', '2022-05-15', 1002),
(603, 303, 'Alice''s Adventures in Wonderland', '2022-05-20', 1003),
(604, 304, 'The Great Gatsby', '2022-05-25', 1004),
(605, 305, '1984', '2022-06-01', 1005),
(606, 306, 'Pride and Prejudice', '2022-06-05', 1006),
(607, 307, 'The Hobbit', '2022-06-10', 1007),
(608, 308, 'War and Peace', '2022-06-15', 1008),
(609, 309, 'The Catcher in the Rye', '2022-06-20', 1009),
(610, 310, 'Harry Potter and the Philosopher''s Stone', '2022-06-25', 1010),
(611, 311, 'The Lord of the Rings', '2022-06-30', 1011),
(612, 312, 'The Chronicles of Narnia', '2023-06-05', 1012),
(613, 313, 'The Adventures of Tom Sawyer', '2023-06-10', 1013),
(614, 314, 'Frankenstein', '2023-06-15', 1014),
(615, 315, 'The War of the Worlds', '2023-06-20', 1015);


#1. Retrieve the book title, category, and rental price of all available books.
SELECT Book_title, Category, Rental_Price FROM Books;
#2. List the employee names and their respective salaries in descendingorder of salary.
SELECT Emp_name, Salary FROM Employee ORDER BY Salary DESC;
#3. Retrieve the book titles and the corresponding customers who haveissued those books.
SELECT Iss.Issued_book_name AS Book_title, C.Customer_name AS Issued_To FROM IssueStatus Iss INNER JOIN Customer C 
ON Iss.Issued_cust=C.Customer_Id;
#4. Display the total count of books in each category.
SELECT Category, COUNT(*) FROM Books GROUP BY Category;
#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name, Position FROM employee WHERE Salary>50000;
#6. List the customer names who registered before 2022-01-01 and havenot issued any books yet.
SELECT C.Customer_name FROM Customer C LEFT JOIN IssueStatus Iss ON C.Customer_Id=Iss.Issued_cust
WHERE C.Reg_date<'2022-01-01'AND Iss.Issue_Id IS NULL;
#7. Display the branch numbers and the total count of employees in eachbranch.
SELECT Branch_no, COUNT(*) AS Tot_employees FROM Employee GROUP BY Branch_no;
#8. Display the names of customers who have issued books in the monthof June 2023.
SELECT C.Customer_name FROM Customer C INNER JOIN  IssueStatus Iss ON C.Customer_Id=Iss.Issued_cust
WHERE Iss.Issue_date >= '2023-06-01' AND Iss.Issue_date < '2023-07-01';
#9. Retrieve book_title from book table containing history. 
SELECT Book_title,Category FROM Books WHERE Category='History';
#10. Retrieve the branch numbers along with the count of employees for branches having more than 5 employees.
SELECT Branch_no, COUNT(*) AS Tot_employees FROM Employee GROUP BY Branch_no HAVING Tot_employees>5;