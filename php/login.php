<?php
// Check if the form was submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  // Get form data
  $email = $_POST['email'];
  $password = $_POST['password'];
  
  // Validate form data
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    // Invalid email address
    $response = array('status' => 'error', 'error' => 'Invalid email address');
    echo json_encode($response);
    exit;
  }
  
  // Connect to database
  $conn = new mysqli('localhost', 'root', '', 'guvi','4306');
  
  // Prepare SQL statement
  $stmt = $conn->prepare('SELECT user_id, name, email, password FROM user WHERE email = ?');
  $stmt->bind_param('s', $email);
  
  // Execute SQL statement
  $stmt->execute();
  
  // Get result
  $result = $stmt->get_result();
  
  // Check if user exists
  if ($result->num_rows == 1) {
    // User exists
    $row = $result->fetch_assoc();
    
    // Verify password
    if (password_verify($password, $row['password'])) {
      // Password correct
      // Create user data array
      $user_data = array(
        'user_id' => $row['user_id'],
        'name' => $row['name'],
        'email' => $row['email']
      );
      
      // Encode user data as JSON
      $user_data_json = json_encode($user_data);
      
      // Store user data in local storage
      //echo "<script>localStorage.setItem('user_data', '$user_data_json');</script>";
      // Return success response
      $response = array('status' => 'success', 'message' => $user_data);
      $redis=new Redis();
      $redis->connect('localhost',6379);
      if($redis){
          $redis->setex($email,7200,1);
      }


      echo json_encode($response);
      exit;
    }
  }
  
  // Invalid email or password
  $response = array('status' => 'error', 'error' => 'Invalid email or password');
  echo json_encode($response);
  exit;
}
?>
