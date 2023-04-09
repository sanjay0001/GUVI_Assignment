<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  // Retrieve form data
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = $_POST['password'];
  
  // Validate form data
  if (empty($name) || empty($email) || empty($password)) {
    $response = array('status' => 'error', 'error' => 'Please fill in all required fields.');
  } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $response = array('status' => 'error', 'error' => 'Please enter a valid email address.');
  } else {
    // Connect to database using mysqli
    $conn = mysqli_connect('localhost', 'root', '', 'guvi','4306');
    if (!$conn) {
      $response = array('status' => 'error', 'error' => 'Connection failed: ' . mysqli_connect_error());
    } else {
      // Prepare SQL statement
      $stmt = mysqli_prepare($conn, "SELECT * FROM user WHERE email = ?");
      mysqli_stmt_bind_param($stmt, "s", $email);
      mysqli_stmt_execute($stmt);
      $result = mysqli_stmt_get_result($stmt);
      
      // Check if email is already registered
      if (mysqli_num_rows($result) > 0) {
        $response = array('status' => 'error', 'error' => 'Email address is already registered.');
      } else {
        // Hash password
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        
        // Prepare SQL statement to insert new user
        $stmt = mysqli_prepare($conn, "INSERT INTO user (name, email, password) VALUES (?, ?, ?)");
        mysqli_stmt_bind_param($stmt, "sss", $name, $email, $hashedPassword);
        mysqli_stmt_execute($stmt);
        
        // Check if insertion was successful
        if (mysqli_affected_rows($conn) > 0) {
          $response = array('status' => 'success', 'message' => 'Registration successful.');
        } else {
          $response = array('status' => 'error', 'error' => 'Registration failed.');
        }
      }
      
      mysqli_stmt_close($stmt); // Close prepared statement
      mysqli_close($conn); // Close database connection
    }
  }
  
  // Return JSON response to client
  header('Content-type: application/json');
  echo json_encode($response);
}

?>