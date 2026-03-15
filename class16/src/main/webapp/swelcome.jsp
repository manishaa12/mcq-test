<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MCQ App Welcome Student</title>
   
    <style>
       body {
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #2196F3, #E91E63), url('https://source.unsplash.com/1600x900/?education,study') no-repeat center center fixed;
        background-size: cover;
        color: white;
    }

    /* Dashboard container styling */
    .dashboard-container {
        background: rgba(0, 0, 0, 0.7);
        border-radius: 20px;
        padding: 50px;
        width: 700px;
        text-align: center;
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
    }
 /* Header text styling */
    h1 {
        font-size: 36px;
        margin-bottom: 20px;
        text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.7);
    }

    /* Subheading for description */
    p {
        font-size: 18px;
        margin-bottom: 40px;
        text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.6);
    }

    /* Dashboard button styling */
    .dashboard-buttons {
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        gap: 20px;
    }
  .dashboard-button {
        background-color: rgba(255, 255, 255, 0.1);
        border-radius: 10px;
        padding: 25px;
        text-align: center;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        cursor: pointer;
        transition: transform 0.3s, background-color 0.3s;
    }

    .dashboard-button:hover {
        transform: scale(1.05);
        background-color: rgba(255, 255, 255, 0.3);
    }

    .dashboard-button a {
        color: white;
        font-size: 20px;
        text-decoration: none;
        display: block;
        padding: 10px;
    }

    .dashboard-button a:hover {
        color: #FF9800;
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
        <h1>Welcome to Your Dash board</h1>
        <p>Select an option to begin your MCQ practice:</p>
   <h2>Welcome <%=(String)session.getAttribute("us") %></h2>
  
 			    <div class="dashboard-buttons">
           		<div class="dashboard-button">
                <a href="testsub.jsp">Start Practice</a>
                </div>
                
  
           		<div class="dashboard-button">
                <a href="viewres.jsp">View Results</a>
                </div>
       
         
                <div class="dashboard-button">
                <a href="">Review Questions</a>
                </div>    
                <div class="dashboard-button">
                <a href="feedback.html">Feedback</a>
                </div>    
                </div>
 
  <a href="stlogin.html" class="logout-button">Logout</a>
    </div>

</body>

</html>