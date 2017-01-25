--Procedure statements at the bottom of the script

USE MASTER
GO

--Drops  LibraryProj Database and then Creates it

DROP DATABASE LibraryProj
GO

CREATE DATABASE LibraryProj
GO

USE LibraryProj
GO

--Table and Field Creation

Create Table BOOK(BookID int NOT NULL PRIMARY KEY, Title varchar(100) NULL, PublisherName varchar(100) NULL)
Create Table BOOK_AUTHORS(BookID int NOT NULL, AuthorName varchar(100) NULL)
Create Table PUBLISHER(Name varchar(100) PRIMARY KEY NOT NULL, Address varchar(100) NULL, Phone varchar(50) NULL)
Create Table BOOK_COPIES(BookID int NOT NULL, BranchID int NOT NULL, No_Of_Copies int NULL)
Create Table BOOK_LOANS(BookID int NOT NULL, BranchID int NOT NULL, CardNo int NOT NULL, DateOut date NULL, DueDate date NULL)
Create Table LIBRARY_BRANCH(BranchID int PRIMARY KEY NOT NULL, BranchName varchar(100) NULL, Address varchar(100) NULL)
Create Table BORROWER(CardNo int PRIMARY KEY NOT NULL, Name varchar(100) NULL, Address varchar(100) NULL, Phone varchar(50) NULL)
GO

--Record Creation

INSERT INTO BOOK
VALUES 
	  (1,  'The Lost Tribe', 'Green Publishing')
	 ,(2,  'Shamanism for Dummies', 'Supernatural Inc.')
	 ,(3,  'The Brown Mile', 'SooperDooper')
	 ,(4,  'The Frog Whisperer', 'Green Publishing')
	 ,(5,  'Misery', 'Viking')
	 ,(6,  'Flamingo Bingo', 'SooperDooper')
	 ,(7,  'Tango Tornados... and More!', 'SooperDooper')
	 ,(8,  'Famous foods of the Bermuda Triangle', 'Supernatural Inc.')
	 ,(9,  'Venus Flytrap Caretaking Vol. 14', 'HowToDoItPub')
	 ,(10, 'Mall Ninjas: The Swordening', 'SooperDooper')
	 ,(11, 'Never Eat Shredded Wheat', 'Green Publishing')
	 ,(12, 'Bananarama!', 'Green Publishing')
	 ,(13, 'My Cat is Better than Your Cat', 'Cats Cats Cats!')
	 ,(14, 'Brew Butter Beer- Today!', 'Supernatural Inc.')
	 ,(15, 'The Pog Delusion', 'Slammerz LLC')
	 ,(16, 'Please Read Me!', 'Green Publishing')
	 ,(17, '10 Key for 10 Year Olds', 'SooperDooper')
	 ,(18, 'Debt Cemetary: Managing Your Student Loans', 'Green Publishing')
	 ,(19, 'Don Trumpote', 'Insert Political Joke Here LLC')
	 ,(20, 'Out of Names', 'Green Publishing')
	 

INSERT INTO BOOK_AUTHORS
VALUES 
	  (1,  'Mark Lee')
	 ,(2,  'Ryan Nix')
	 ,(3,  'Gavin Sphing')
	 ,(4,  'Steve McSteam')
	 ,(5,  'Stephen King')
	 ,(6,  'Don Waters')
	 ,(7,  'Don Waters')
	 ,(8,  'Ryan Nix')
	 ,(9,  'Crystal Jenks')
	 ,(10, 'Don Waters')
	 ,(11, 'Monica Yocum')
	 ,(12, 'Kristy Hansen')
	 ,(13, 'Freddy Feline')
	 ,(14, 'Ryan Nix')
	 ,(15, 'Gary PogChamp')
	 ,(16, 'Monica Yocum')
	 ,(17, 'Don Waters')
	 ,(18, 'Gavin Sphing')
	 ,(19, 'John Laffer')
	 ,(20, 'Monica Yocum')

	 
Insert into PUBLISHER
VALUES 
	  ('Green Publishing', '123 Green Blvd. La Verne, CA 91750', '(909) 596-0788')
	 ,('SuperNatural Inc.', '666 Spooky Way Jacksonville, FL 56665', '(666) 666-6666')
	 ,('SooperDooper', '3862 Arrow Highway Tempe AZ 48267', '(365) 966-3962')
	 ,('Viking', '2588 42nd St STE K New York, NY 84746', '(822) 455-6778')
	 ,('HowToDoItPub', '3212 Brick Rd Austin TX 38556', '(708) 209-4885')
	 ,('Cats Cats Cats!', '320 Feline Way Tacoma WA 95674', '(450) 390-0930')
	 ,('Slammerz LLC', '808 Honolulu Ave Unit A Honolulu HI 99998', '(808)800-0808')
	 ,('Insert Political Joke Here LLC', '5555 MudSling Rd Carson NV 64987', '(755) 656-3947')

	 
Insert Into BOOK_COPIES
VALUES 
	  (1, 101, 10)
	 ,(1, 201,  5)
	 ,(1, 301, 15)
	 ,(1, 401,  5)
	 ,(2, 101,  5)
	 ,(2, 201,  9)
	 ,(2, 301,  3)
	 ,(2, 401, 25)
	 ,(3, 101,  4)
	 ,(3, 201,  7)
	 ,(3, 301,  8)
	 ,(3, 401, 16)
	 ,(4, 101,  4)
	 ,(4, 201,  5)
	 ,(4, 301, 21)
	 ,(4, 401,  4)
	 ,(5, 101,  5)
	 ,(5, 201,  6)
	 ,(5, 301,  9)
	 ,(5, 401, 15)
	 ,(6, 101,  5)
	 ,(6, 201,  6)
	 ,(6, 301,  4)
	 ,(6, 401,  7)
	 ,(7, 101,  5)
	 ,(7, 201, 15)
	 ,(7, 301,  4)
	 ,(7, 401,  9)
	 ,(8, 101,  7)
	 ,(8, 201,  4)
	 ,(8, 301,  9)
	 ,(8, 401, 12)
	 ,(9, 101, 14)
	 ,(9, 201, 10)
	 ,(9, 301,  4)
	 ,(9, 401,  8)
	 ,(10, 101, 5)
	 ,(10, 201, 6)
	 ,(10, 301, 9)
	 ,(10, 401,11)
	 ,(11, 101, 5)
	 ,(11, 201,15)
	 ,(11, 301, 5)
	 ,(11, 401, 5)
	 ,(12, 101, 5)
	 ,(12, 201, 9)
	 ,(12, 301, 3)
	 ,(12, 401,25)
	 ,(13, 101, 4)
	 ,(13, 201, 7)
	 ,(13, 301, 8)
	 ,(13, 401,16)
	 ,(14, 101, 4)
	 ,(14, 201, 5)
	 ,(14, 301,21)
	 ,(14, 401, 4)
	 ,(15, 101, 5)
	 ,(15, 201, 6)
	 ,(15, 301, 9)
	 ,(15, 401,15)
	 ,(16, 101, 5)
	 ,(16, 201, 6)
	 ,(16, 301, 4)
	 ,(16, 401, 7)
	 ,(17, 101, 5)
	 ,(17, 201,15)
	 ,(17, 301, 4)
	 ,(17, 401, 9)
	 ,(18, 101, 7)
	 ,(18, 201, 4)
	 ,(18, 301, 9)
	 ,(18, 401,12)
	 ,(19, 101,14)
	 ,(19, 201,10)
	 ,(19, 301, 4)
	 ,(19, 401, 8)
	 ,(20, 101, 5)
	 ,(20, 201, 6)
	 ,(20, 301, 9)
	 ,(20, 401,11)

	 
Insert Into BOOK_LOANS
VALUES 
	  (1, 101, 501,  '2017-01-11', '2017-02-11')
	 ,(5, 101, 500,  '2017-01-12', '2017-02-12')
	 ,(6, 101, 503,  '2016-12-09', '2017-01-09')
	 ,(9, 101, 502,  '2017-01-05', '2017-02-05')
	 ,(15, 101, 506, '2017-01-11', '2017-02-11')
	 ,(12, 101, 507, '2017-01-08', '2017-02-08')
	 ,(2, 101, 504,  '2016-12-25',  '2017-12-2')
	 ,(3, 101, 501,  '2016-12-25', '2017-01-25')
	 ,(7, 101, 510,  '2017-01-15', '2017-02-15')
	 ,(8, 101, 509,  '2017-01-03', '2017-02-03')
	 ,(17, 201, 505, '2017-01-17', '2017-02-17')
	 ,(18, 201, 504, '2017-01-10', '2017-02-10')
	 ,(19, 201, 508, '2017-01-01', '2017-02-01')
	 ,(12, 201, 500, '2017-01-20', '2017-02-20')
	 ,(13, 201, 501, '2017-01-19', '2017-02-19')
	 ,(10, 201, 502, '2017-01-12', '2017-02-12')
	 ,(9, 201, 503,  '2017-01-05', '2017-02-05')
	 ,(4, 201, 509,  '2016-12-29', '2017-01-29')
	 ,(11, 201, 514, '2017-01-15', '2017-02-15')
	 ,(16, 201, 510, '2017-01-22', '2017-02-22')
	 ,(3, 301, 515,  '2017-01-10', '2017-02-10')
	 ,(19, 301, 501, '2017-01-03', '2017-02-03')
	 ,(14, 301, 502, '2017-01-19', '2017-02-19')
	 ,(20, 301, 503, '2017-01-21', '2017-02-21')
	 ,(6, 301, 505,  '2017-01-03', '2017-02-03')
	 ,(2, 301, 506,  '2017-01-02', '2017-02-02')
	 ,(1, 301, 508,  '2017-01-17', '2017-02-17')
	 ,(7, 301, 515,  '2017-01-19', '2017-02-19')
	 ,(12, 301, 510, '2017-01-23', '2017-02-23')
	 ,(10, 301, 505, '2017-01-18', '2017-02-18')
	 ,(11, 301, 508, '2017-01-12', '2017-02-12')
	 ,(14, 301, 503, '2017-01-06', '2017-02-06')
	 ,(4, 301, 500,  '2017-01-20', '2017-02-20')
	 ,(11, 401, 501, '2017-01-22', '2017-02-22')
	 ,(15, 401, 502, '2017-01-08', '2017-02-08')
	 ,(10, 401, 508, '2017-01-09', '2017-02-09')
	 ,(3, 401, 511,  '2017-01-12', '2017-02-12')
	 ,(8, 401, 501,  '2017-01-02', '2017-02-02')
	 ,(3, 401, 503,  '2017-01-09', '2017-02-09')
	 ,(17, 401, 503, '2017-01-14', '2017-02-14')
	 ,(4, 401, 501,  '2017-01-20', '2017-02-20')
	 ,(18, 401, 500, '2017-01-16', '2017-02-16')
	 ,(2, 401, 511,  '2017-01-18', '2017-02-18')
	 ,(7, 401, 512,  '2017-01-20', '2017-02-20')
	 ,(9, 401, 515,  '2017-01-10', '2017-02-10')
	 ,(9, 401, 501,  '2017-01-13', '2017-02-13')
	 ,(20, 401, 500, '2017-01-17', '2017-02-17')
	 ,(2, 401, 503,  '2017-01-14', '2017-02-14')
	 ,(1, 101, 510,  '2017-01-15', '2017-02-15')
	 ,(14, 201, 511, '2017-01-19', '2017-02-19')
	 ,(18, 201, 501, '2017-01-21', '2017-02-21')
	 ,(15, 301, 501, '2017-01-09', '2017-02-09')

Insert Into LIBRARY_BRANCH
VALUES 
	  (101, 'Sharpstown', '123 Alphabet Way Yonkers NY 10476')
	 ,(201, 'Central', '404 Lost Rd Eugene OR 97401')
	 ,(301, 'Live Oak', '321 Golden Way Thousand Oaks CA 91230')
	 ,(401, 'Copper Creek', '555 Copper Creek Rd Mariposa CA 91542')

Insert Into BORROWER
VALUES 
	  (500, 'Jean Cimmons', '111 Kiss St Ontario CA 91726', '(505) 555-6666')
	 ,(501, 'Steve Law', '510 Aspen Way Aspen CO 97645', '(909) 232-5857')
	 ,(502, 'Joe Blow', '808 Honolulu Ave Honolulu HI 80808', '(808) 888-0808')
	 ,(503, 'Marcy Darcy', '444 Married Lane Detroit MI 77466', '(323) 505-7676')
	 ,(504, 'Steve Zappa', '200 Moustache Lane Palmdale CA 91520', '(971) 800-0800')
	 ,(505, 'Sean Combs', '100 Money St Miami FL 75890', '(709) 555-3433')
	 ,(506, 'Edmund Mcmillen', '4204 Ocean Way Santa Cruz CA 92460', '(980) 396-0784')
	 ,(507, 'Susan Miller', '320 Mountain Ave Shasta CA 93885', '(445) 975-3687')
	 ,(508, 'Jacob Levine', '3113 Lemonwood Ave Sand Dimas CA 91755', '(909) 59-2771')
	 ,(509, 'Samantha Shields', '4299 Misty St Boulder CO 85466', '(432) 966-4490')
	 ,(510, 'Sean Suit', '600 Big Money Ln Los Angeles CA 90210', '(960) 450-3499')
	 ,(511, 'Ethan Klein', '400 Big Tree Ave Hacienda Heights CA 91338', '(950) 399-0933')
	 ,(512, 'Jane Yost', '560 Big Blue Rd Blue River OR 97446', '(531) 596-3837')
	 ,(513, 'Steve Swarm', '333 Stone Circle Pl Olympia WA 95573', '(757) 640-3888')
	 ,(514, 'Janey Gunn', '4999 Smith st Madison WI 38388', '(429) 857-3387')
	 ,(515, 'Anya Katz', '6337 NE 27th Ave Portland OR 97211', '(503) 555-5556')

--Code to assign foriegn keys

USE LibraryProj
GO

ALTER TABLE BOOK
	ADD CONSTRAINT FK_BOOK_PUBLISHER FOREIGN KEY (PublisherName)
	REFERENCES PUBLISHER (Name)
	
ALTER TABLE BOOK_AUTHORS
	ADD CONSTRAINT FK_BOOK_AUTHORS FOREIGN KEY (BookID)
	REFERENCES Book (BookID)
	
ALTER TABLE BOOK_COPIES
	ADD CONSTRAINT FK_BOOK_COPIES_BookID FOREIGN KEY (BookID)
	REFERENCES Book (BookID)
	
ALTER TABLE BOOK_COPIES
	ADD CONSTRAINT FK_BOOK_COPIES_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH (BranchID)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_BookID FOREIGN KEY (BookID)
	REFERENCES BOOK (BookID)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_CardNo FOREIGN KEY (CardNo)
	REFERENCES BORROWER (CardNo)
	
ALTER TABLE BOOK_LOANS
	ADD CONSTRAINT FK_BOOK_LOANS_BranchID FOREIGN KEY (BranchID)
	REFERENCES LIBRARY_BRANCH (BranchID)
GO

/*
Start of Queries 1-8

 1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"? */

CREATE PROCEDURE spNUM1
	AS
	SELECT Book.Title, BOOK_COPIES.No_Of_Copies, LIBRARY_BRANCH.BranchName
	FROM BOOK_COPIES 
	INNER JOIN BOOK ON BOOK.BookID = BOOK_COPIES.BookID
	INNER JOIN LIBRARY_BRANCH ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
	WHERE BOOK_COPIES.BranchID = 101 AND BOOK_COPIES.BookID = 1
GO

/* 2. How many copies of the book titled The Lost Tribe are owned by each library branch? */

CREATE PROCEDURE spNUM2
	AS
	SELECT LB.BranchName, B.Title, BC.No_Of_Copies
	FROM BOOK_COPIES AS BC INNER JOIN LIBRARY_BRANCH AS LB
	ON BC.BranchID = LB.BranchID INNER JOIN BOOK AS B
	ON B.BookID = BC.BookID WHERE BC.BookID = 1
GO

/* 3. Retrieve the names of all borrowers who do not have any books checked out. */

CREATE PROCEDURE spNUM3
	AS
	SELECT BO.Name
	FROM BORROWER AS BO LEFT JOIN BOOK_LOANS AS BL
	ON BO.CardNo = BL.CardNo WHERE BL.BookID IS NULL
GO

/* 4.   For   each   book   that   is   loaned   out   from   the   "Sharpstown"   branch   and   whose   DueDate   is   today,
retrieve the book title, the borrower's name, and the borrower's address (Please note that today's date is 2017-01-25).  */

CREATE PROCEDURE spNUM4
	AS
	SELECT B.Title, BO.Name, BO.Address
	FROM Book AS B INNER JOIN BOOK_LOANS AS BL ON B.BookID = BL.BookID
	INNER JOIN BORROWER AS BO ON BL.CardNo = BO.CardNo
	WHERE BL.DueDate = CAST (CURRENT_TIMESTAMP AS DATE) AND BL.BranchID = 101
GO

/* 5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch. */

CREATE PROCEDURE spNUM5 
	AS
	SELECT LB.BranchName, COUNT (BL.BookID) AS "Number of Checkouts"
	FROM BOOK_LOANS AS BL INNER JOIN LIBRARY_BRANCH AS LB
	ON BL.BranchID = LB.BranchID
	GROUP BY LB.BranchName
GO

/* 6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out. */

CREATE PROCEDURE spNUM6
	AS
	SELECT BOR.Name, BOR.[Address], COUNT (BL.BookID) AS "Number of Checkouts"
	FROM BOOK_LOANS AS BL INNER JOIN BORROWER AS BOR
	ON BL.CardNo = BOR.CardNo GROUP BY BOR.Name, BOR.[Address] HAVING COUNT (BL.BookID) > 5
GO

/* 7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central" */

CREATE PROCEDURE spNUM7
	AS
	SELECT B.Title, BC.No_Of_Copies
	FROM BOOK AS B INNER JOIN BOOK_COPIES AS BC
	ON B.BookID = BC.BookID INNER JOIN BOOK_AUTHORS AS BKA
	ON B.BookID = BKA.BookID WHERE BKA.AuthorName = 'Stephen King' AND BC.BranchID = 201
GO

/* 8. Create a stored procedure that will execute one or more of those queries, based on user choice.
For this query, since All previous queries are already stored procedures, I will do a variation on spNUM7.
In this variation, we are looking for the number of books written by Don Waters that are
available at library branch Sharpstown. */    

CREATE PROCEDURE spNUM8
	AS
	SELECT B.Title, BC.No_Of_Copies
	FROM BOOK AS B INNER JOIN BOOK_COPIES AS BC
	ON B.BookID = BC.BookID INNER JOIN BOOK_AUTHORS AS BKA
	ON B.BookID = BKA.BookID 
	WHERE BKA.AuthorName = 'Don Waters' AND BC.BranchID = 101
GO	