
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="upload-image.php" method="post" enctype="multipart/form-data">
        <select name="type" id="type">
            <option value="1">animal</option>
            <option value="2">weather</option>
        </select>
        <label for="img">Select your image</label>
        <input type="file" name="img" id="img">
    </form>
</body>
</html>