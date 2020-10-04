
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="upload-image.php" method="post" enctype="multipart/form-data">
        <input type="text" id="name_imageable"   name="name_imageable">
        <select            id="type"             name="type">
            <option value="1">animal</option>
            <option value="2">weather</option>
        </select>
        <label for="image_imageable">Select your image: </label>
        <input type="file"  id="image_imageable" name="image_imageable" accept="image/png, image/jpg, image/jpeg">
        <input type="submit" value="enviar">
    </form>
</body>
</html>