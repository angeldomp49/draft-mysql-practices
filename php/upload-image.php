<?php
$ANIMAL_TYPE = 1;
$WEATHER_TYPE = 2;

$image = base64_encode($_POST['img']);
$type  = $_POST['type'];
$name_imageable = $_POST['name_imageable'];

try {
    $bdd = new PDO('mysql:host=localhost:3308;dbname=zoologic;charset=utf8;','root','');

} catch (Exception $e) {
    echo 'error';
    $e->getMessage();
}

if($type == $ANIMAL_TYPE){
    $bdd->exec('INSERT INTO imageable VALUES(null, \''.$image.'\',
    (SELECT id FROM animals WHERE name = \''.$name_imageable.'\' LIMITS 1)
    ,\'animal\');');
}
else if($type == $WEATHER_TYPE){
    $bdd->exec('INSERT INTO imageable VALUES(null, \''.$image.'\',
    (SELECT id FROM wheathers WHERE name = \''.$name_imageable.'\' LIMITS 1)
    ,\'wheather\');');
}

