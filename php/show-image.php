<?php

try{
    $bdd = new PDO('mysql:host=localhost:3308;dbname=zoologic;charset=utf8;','root','');
}
catch(Exception $e){
    $e->getMessage();
}

$response = $bdd->query('SELECT data from imageable Where id = 3;');

while($item = $response->fetch()){
?>
    <img src= "data:image/jpg;base64,<?php echo $item['data'] ?>" />
<?php
}