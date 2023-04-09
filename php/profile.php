<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
   // connect to mongodb
   
   //require "C:/xampp/phpMyAdmin/vendor/autoload.php";
   $m = new MongoDB\Driver\Manager("mongodb+srv://sanjay0001:122333abbccc@cluster0.s8nvo.mongodb.net/");   

   $redis=new Redis();
   $redis->connect('localhost',6379);
   $f=true;
   if($redis){
      if($redis->get($_POST['email'])!="1"){
         $response = array('status'=>"no user");
         $f=false;
      }
   }
   
   if($_POST['status']=="read" && $f){
      $filter = ['email' => $_POST['email']];
      $options = ['limit' => 1];
      $query = new MongoDB\Driver\Query($filter,$options);
      $cursor=$m->executeQuery('guvi.users', $query);
      // $cursor=(array) $cursor;
      $flag=true;
      foreach($cursor as $document) {
         //print_r($document);
         $document=(array) $document;
         //print_r($document);
         $flag=false;
         $fname=$document['first_name'];
         $lname=$document['last_name'];
         $mobilenumber=$document['mobile_number'];
         $address=$document['address'];
         $dob=$document['dob'];
         $gender=$document['gender'];
         $country=$document['country'];
         $response =  array('status' => 'success', 'first_name' => $fname,'last_name' => $lname,'mobile_number' => $mobilenumber,'address' => $address,'country' => $country,'dob' => $dob,'gender' => $gender);  
      }
      if($flag){
         $response =  array('status' => 'error','message'=>"data not found" );
      }
   }else if($f){

      $filter = ['email' => $_POST['email']];
      $options = ['limit' => 1];
      $query = new MongoDB\Driver\Query($filter,$options);
      $cursor=$m->executeQuery('guvi.users', $query);
      $user_present=false;
      foreach($cursor as $document) {
         $document=(array) $document;
         $user_present=true;
      }
      if($user_present){
         $bulkWrite = new MongoDB\Driver\BulkWrite;
         $filter = ['email' => $_POST['email']];
         //$doc = ['name' => 'John', 'dob'=>"03-09-2023",'age' => 33,'phone'=>"0987654321",'email'=>"test@gmail.com",'college'=>'Rajalakshmi Institute of Technology','degree'=>"B.Tech",'dept'=>"Computer Science and Engineering"];
      
         $update = ['$set' => ['first_name' => $_POST['fname'],'last_name' => $_POST['lname'],'email' => $_POST['email'],'age' => $_POST['age'],'mobile_number' => $_POST['number'],'address' => $_POST['address'],'country' => $_POST['country'],'dob' => $_POST['dob'],'gender' => $_POST['gender']]];
         $options = ['multi' => false, 'upsert' => false];
         $bulkWrite->update($filter, $update, $options);
         $m->executeBulkWrite('guvi.users', $bulkWrite); 
         $response =  array('status' => 'success', 'message' => 'Updated successfully.');
      }
      else{
         $bulkWrite = new MongoDB\Driver\BulkWrite;
         $doc = ['first_name' => $_POST['fname'],'last_name' => $_POST['lname'],'email' => $_POST['email'],'age' => $_POST['age'],'mobile_number' => $_POST['number'],'address' => $_POST['address'],'country' => $_POST['country'],'dob' => $_POST['dob'],'gender' => $_POST['gender']];
         $bulkWrite->insert($doc);
         $m->executeBulkWrite('guvi.users', $bulkWrite);
         $response =  array('status' => 'success', 'message' => 'created successfully.');
      }   
   }

   header('Content-type: application/json');
   echo json_encode($response);
   
}
?>