<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>NextWork - Love Your Job</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      color: #333;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      text-align: center;
      padding: 20px;
    }
    .container {
      max-width: 600px;
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    h1 {
      font-size: 2rem;
      color: #ff7f50;
      margin-bottom: 10px;
    }
    p {
      font-size: 1rem;
      line-height: 1.5;
      margin-bottom: 20px;
    }
    .email-form {
      display: flex;
      flex-direction: column;
      gap: 10px;
    }
    input[type="email"] {
      padding: 10px;
      font-size: 1rem;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      padding: 10px;
      font-size: 1rem;
      border: none;
      border-radius: 5px;
      background-color: #ff7f50;
      color: white;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    button:hover {
      background-color: #ff5722;
    }
    .message {
      font-size: 0.9rem;
      color: #28a745;
      margin-top: 10px;
    }
    .error {
      color: #dc3545;
    }
    footer {
      margin-top: 20px;
      font-size: 0.8rem;
      color: #666;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>NextWork - You Should Be in a Job You Love</h1>
    <p>Building the best online learning experience to switch careers and upskill.<br>
      Starting with AWS certifications.</p>
    <form class="email-form" id="emailForm" action="submitEmail" method="POST">
      <input type="email" id="email" name="email" placeholder="Enter your email" required />
      <button type="submit">Join the Waitlist</button>
      <p class="message" id="message"></p>
    </form>
    <footer>NextWork journey starting point 🚀</footer>
  </div>

  <script>
    const form = document.getElementById('emailForm');
    const message = document.getElementById('message');

    form.addEventListener('submit', function (e) {
      e.preventDefault();
      const email = document.getElementById('email').value;

      if (validateEmail(email)) {
        message.textContent = "You're on the list 😎";
        message.className = "message";
      } else {
        message.textContent = "Oh snap! That email didn't work, give it another go.";
        message.className = "message error";
      }
    });

    function validateEmail(email) {
      const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return re.test(email);
    }
  </script>
</body>
</html>
