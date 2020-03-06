<?php
  $utel = $_POST['username'];
  $upsd = $_POST['password'];
  $link = mysqli_connect('localhost', 'root', 'root', 'student');
  $sql = "SELECT * FROM `user` WHERE `name`='$utel' AND `passwor`='$upsd'";
  $res = mysqli_query($link, $sql);
  $row = mysqli_fetch_assoc($res);
  mysqli_close($link);
  if ($row) {
    $arr = array("message" => "登录成功", "code" => 1);
  } else {
    $arr = array("message" => "登录失败", "code" => 0);
  }
  print_r(json_encode($arr));
?>
