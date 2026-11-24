<!DOCTYPE html>
<html>
<head>
    <title>Student Feedback Portal</title>
    <style>
        body {
            font-family: Arial;
            background: #eaf2f8;
            text-align: center;
            padding: 40px;
        }
        .container {
            background: white;
            padding: 30px;
            width: 350px;
            margin: auto;
            border-radius: 10px;
        }
        input, textarea {
            width: 90%;
            padding: 10px;
            margin: 10px;
        }
        button {
            background: #007bff;
            color: white;
            padding: 12px 25px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Feedback Portal</h2>

        <form action="success.jsp" method="post">
            <input type="text" name="name"
                   placeholder="Enter Student Name" required>

            <input type="email" name="email"
                   placeholder="Enter Email" required>

            <textarea name="feedback"
                      placeholder="Enter Your Feedback"
                      required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>

        <p><a href="health.jsp">Check Application Health</a></p>
    </div>
</body>
</html>