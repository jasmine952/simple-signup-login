<?php

$is_invalid = false;

if ($_SERVER["REQUEST_METHOD"] === "POST"){
	$mysqli = require __DIR__ . "/database.php";

	$sql = sprintf("SELECT * FROM user 
							WHERE email = '%s'", 

							$mysqli -> 

	real_escape_string($_POST["email"]));

	$result = $mysqli -> query($sql);

	$user = $result -> fetch_assoc();

		if ($user) {

			if (password_verify($_POST["password"], $user["password_hash"])) {

				session_start();
				session_regenerate_id(); 

				$_SESSION["user_id"] = $user["id"];

				header("location: index.php");

				exit;
	}
}

	$is_invalid = true;
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/dark.min.css"> 
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
	<script src="https://unpkg.com/just-validate@latest/dist/just-validate.production.min.js" defer></script>
	<script src="/js/validation.js" defer></script>

</head>
<style>
  .fas.fa-envelop {
    font-size: 1px;
    color: white;
  }
  .fas.fa-key {
    font-size: 1px;
    color: white;
  }
</style>

<body>
	
	<?php include 'navbar.php'; ?>
	<h1>Login</h1>
	<?php if ($is_invalid) : ?>
	<em> Invalid Login </em>
	<?php endif; ?>
	
	<form method="post">
		<span class="fas fa-envelope"></span>
		<label for="email"> Email </label>
		<input type="email" placeholder="Enter your email address" name="email" id="email" value="<?= htmlspecialchars($_POST["email"] ?? " ") ?>">

		<i class="fas fa-lock"></i>
		<label for="password"> Password </label>
		<input type="password" placeholder="Enter your password" name="password" id="password">
		
	<button>Log in</button>
	
	</form>

</body>
</html>