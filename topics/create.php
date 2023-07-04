<?php
require "../includes/header.php";
require "../config/config.php";

// Check if the user is logged in
if (!isset($_SESSION['username'])) {
    header("location: " . APPURL);
    exit();
}

if (isset($_POST['submit'])) {
    // Check if any required fields are empty
    if (empty($_POST['title']) || empty($_POST['category']) || empty($_POST['body'])) {
        echo "<script>alert('One or more inputs are empty');</script>";
    } else {
        $title = $_POST['title'];
        $category = $_POST['category'];
        $body = $_POST['body'];
        $user_name = $_SESSION['name'];
        $user_image = $_SESSION['user_image'];

        // Check if an image was uploaded
        if (!empty($_FILES['image']['tmp_name'])) {
            // Specify the destination directory to save the uploaded image
            $uploadDir = 'upload/';
            $fileName = $_FILES['image']['name'];
            $destination = $uploadDir . $fileName;

            // Move the uploaded image to the desired location
            if (move_uploaded_file($_FILES['image']['tmp_name'], $destination)) {
                $user_image = $destination;
            } else {
                echo "<script>alert('Failed to move the uploaded image.');</script>";
            }
        }

        $insert = $conn->prepare("INSERT INTO topic (title, category, body, user_name, user_image) VALUES (:title, :category, :body, :user_name, :user_image)");
        $insert->execute([
            ":title" => $title,
            ":category" => $category,
            ":body" => $body,
            ":user_name" => $user_name,
            ":user_image" => $user_image,
        ]);

        header("location: " . APPURL);
        exit();
    }
}
?>
    <div class="container">
		<div class="row">
			<div class="col">
				<div class="main-col">
					<div class="block">
						<h1 class="pull-left">Maak een onderwerp aan</h1>
						<h4 class="pull-right"></h4>
						<div class="clearfix"></div>
						<hr>
						<form role="form" method="POST" action="create.php">
							<div class="form-group">
								<label>hoofdonderwerp</label>
								<input type="text" class="form-control" name="title" placeholder="Enter Post Title">
							</div>
							<div class="form-group">
								<label>Categorie</label>
								<select name="category"class="form-control">
									<option value="Gaming">PC</option>
									<option value="playstation" >Playstation</option>
									<option value="xbox" >xbox</option>
							</select>
							</div>
								<div class="form-group">
									<label>Topic box</label>
									
									<textarea id="body" rows="10" cols="80" class="form-control" name="body"></textarea>
									<script>CKEDITOR.replace('body');</script>
								</div>
							<button type="submit" name="submit" class="btn btn-danger">Create</button>
						</form>
					</div>
				</div>
			</div>
			<?php require "../includes/footer.php"; ?>
