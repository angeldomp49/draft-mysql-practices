<?php
$ANIMAL_TYPE = "1";
$WEATHER_TYPE = "2";

$type  = $_POST['type'];
$name_imageable = $_POST['name_imageable'];
$image = $_FILES['image_imageable'];
$name_img = $image['name'];
$mime_img = $image['type'];
$size_img = $image['size'];
try {
    $bdd = new PDO('mysql:host=localhost:3308;dbname=zoologic;charset=utf8;','root','');

} catch (Exception $e) {
    $e->getMessage();
}

ob_start();

readfile($image['tmp_name']);
$data_img = base64_encode(ob_get_contents());
ob_end_clean();

if($type == $ANIMAL_TYPE){
    $bdd->exec(
        "INSERT INTO imageable VALUES(null, '{$name_img}', '{$mime_img}', {$size_img}, '{$data_img}',
            (SELECT id FROM animals WHERE name = '{$name_imageable}'),
        'animal');"
        );
}
else if($type == $WEATHER_TYPE){
    $bdd->exec(
        "INSERT INTO imageable VALUES(null, '{$name_img}', '{$mime_img}', {$size_img}, '{$data_img}',
            (SELECT id FROM weathers WHERE name = '{$name_imageable}'),
        'wheather');"
        );
}
else{
    echo "error";
}
header("Location: fill-imageable-table.php");