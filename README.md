# Online Examination System

A web-based MCQ exam application built with Java Servlets, JSP and MySQL. Students log in, attempt a timed test, and get their score instantly.

## Features
- User login
- MCQ exam with a countdown timer
- Automatic grading: answers are checked against answer keys stored in the database
- Result page that shows the score instantly

## Tech Stack
- **Backend:** Java Servlets, JSP
- **Frontend:** HTML5, CSS3, JavaScript
- **Database:** MySQL
- **IDE:** Eclipse

## How to Run
1. Clone the repo: `git clone https://github.com/manishaa12/mcq-test.git`
2. Create a MySQL database and the required tables (users, questions, answers).
3. Update the DB username and password in the connection file.
4. Import the project in Eclipse as a Maven project and run it on Apache Tomcat.
5. Open `http://localhost:8080/class16` in your browser.

## Testing
Tested scoring with multiple answer combinations (all correct, all wrong, partial, unattempted) and fixed bugs that produced wrong results.

## Screenshots
(Add 2-3 screenshots: login page, exam page, result page)

## Author
Manisha Mirdha
