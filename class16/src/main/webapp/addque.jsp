<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mcqapp</title>
<style>
      /* General body styling */
   
     body {
        margin: 0;
        padding: 0;
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #6e7f80, #3e5151), url('https://source.unsplash.com/1600x900/?education,learning') no-repeat center center fixed;
        background-size: cover;
        color: #f0f0f0;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    /* Form container styling */
    .question-form-container {
        background: rgba(0, 0, 0, 0.7); /* Semi-transparent overlay */
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 15px 25px rgba(0, 0, 0, 0.5);
        width: 90%;
        max-width: 600px;
    }

    /* Header styling */
    h1 {
        text-align: center;
        font-size: 28px;
        margin-bottom: 20px;
        color: #ffcc00;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
    }

    /* Input and textarea styling */
   .question-form-container input[type="text"],
    .question-form-container input[type="submit"],
    .question-form-container textarea,
    .question-form-container select {
        width: 100%;
        padding: 7px;
        margin: 8px 0;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        background: #34495e;
        color: #ecf0f1;
    }


    /* Submit button styling */
    .question-form-container input[type="submit"] {
        width: 100%;
        padding: 6px;
        background-color: #1abc9c;
        border: none;
        border-radius: 8px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.3s;
    }

    .question-form-container input[type="submit"]:hover {
        background-color: #16a085;
        transform: translateY(-2px);
    }
    .question-form-container input[type="Reset"] {
        width: 100%;
        padding: 6px;
        background-color: #1abc9c;
        border: none;
        border-radius: 8px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s, transform 0.3s;
    }
    
    .question-form-container input[type="Reset"]:hover {
        background-color: #16a085;
        transform: translateY(-2px);
    }

    /* Link styling */
    .question-form-container p {
        text-align: center;
        margin-top: 20px;
    }

    .question-form-container a {
        color: #1abc9c;
        text-decoration: none;
    }

    .question-form-container a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
     <div class="question-form-container">
        <h1>Create New Practice Question</h1>
        <form action=addquestion.jsp method=post>
        <tr><td>Subject</td><td>
         <select name=sb><option>java<option>c<option>oracle<option>os<option>aptitude</select></td></tr>
        
             
             <tr>
  <td><b>Question:</b></td>
  <td>
    <textarea name="qt" placeholder="Enter your question here..." required></textarea>
  </td>
</tr>
             
           <tr><td>Option1:</td><td><input type=text name=op1 placeholder="Enter option 1" required></td></tr>
       <tr><td>Option2:</td><td><input type=text name=op2  placeholder="Enter option 2" required> </td></tr>
       <tr><td>Option3:</td><td><input type=text name=op3  placeholder="Enter option 3" required></td></tr>
       <tr><td>Option4:</td><td><input type=text name=op4  placeholder="Enter option 4" required></td></tr>
           
       <tr><td><b>Answer:</b></td><td><input type=text name=ans placeholder="Enter your answer" required></td></tr>
       <tr><td>Level:</td><td><select name=l><option>Easy<option>Medium<option>Hard</select></td></tr>
            
          <tr><td><input type=reset value="Reset" style="width: 50%; padding: 6px; border-radius: 9px; border: 1px solid grey; box-sizing: border-box;"></td><td><input type=submit value="AddQue" align="right" style="width: 50%; padding: 6px; border-radius: 9px; border: 1px solid grey;box-sizing: border-box;"></td></tr>
           
          
     
     
        
        
    
  
   </form>
</body>
</html>