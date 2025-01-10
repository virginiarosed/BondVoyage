<?php
session_start(); // Start the session

// Destroy the session to log out the user
session_destroy();

// Redirect to the login page
header("Location: bv_adminlogin.html");
exit();
?>
