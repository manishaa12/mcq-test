<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MCQ App Welcome Faculty</title>
   
    <style>
      /* General body and background styling */
    body {
        margin: 0;
        padding: 0;
        font-family: 'Verdana', sans-serif;
        background: linear-gradient(135deg, #1e3c72, #2a5298), url('https://source.unsplash.com/1600x900/?education,teaching') no-repeat center center fixed;
        background-size: cover;
        color: #ecf0f1;
        min-height: 100vh;
    }

    /* Dashboard container styling */
    .dashboard-container {
        max-width: 1100px;
        margin: 50px auto;
        padding: 40px;
        background: rgba(30, 44, 74, 0.85); /* Semi-transparent background */
        border-radius: 15px;
        box-shadow: 0 20px 40px rgba(0, 0, 0, 0.5);
    }

/* Heading text styling */
    h1 {
        font-size: 42px;
        text-align: center;
        margin-bottom: 30px;
        color: #ffffff;
        text-shadow: 2px 2px 12px rgba(0, 0, 0, 0.6);
    }

    /* Navigation links styling */
    .nav-links {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-around;
    }

    .nav-links a {
        flex: 1 1 calc(33% - 40px);
        padding: 15px;
        margin: 10px;
        background-color: #34495e;
        color: #ecf0f1;
text-decoration: none;
        text-align: center;
        border-radius: 12px;
        font-size: 18px;
        font-weight: bold;
        transition: transform 0.3s, background-color 0.3s;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
    }

    /* Hover effect for links */
    .nav-links a:hover {
        background-color: #1abc9c;
        transform: translateY(-5px);
    }

    /* Responsive design */
    @media (max-width: 768px) {
        .nav-links a {
            flex: 1 1 100%;
        }
    }

    /* Footer styling */
    footer {
        margin-top: 40px;
        text-align: center;
font-size: 14px;
        color: #95a5a6;
    }
    /* Logout button styling */
    .logout-button {
        background-color: #F44336;
        border-radius: 10px;
        padding: 15px;
        font-size: 18px;
        color: white;
        text-decoration: none;
        display: block;
        width: 100%;
        text-align: center;
        margin-top: 30px;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        transition: background-color 0.3s ease;
    }

    .logout-button:hover {
        background-color: #D32F2F;
    }

       
</style>
      
    
</head>
<body>
<div class="dashboard-container">
        <h1>Faculty Dashboard</h1>
        <div class="nav-links">
        <a href="NewFile.jsp">view profile</a>
            <a href="addque.jsp">Create New Quiz</a>
            <a href="viewques.jsp">View Questions</a>
            <a href="fviewres.jsp">View Student Results</a>
            
            
        </div>
        <a href="flogin.html" class="logout-button">Logout</a>
    </div>
    <br><br>
    <footer>
        &copy; 2024 Online MCQ Practice App. All rights reserved.
    </footer>

</body>

</html>