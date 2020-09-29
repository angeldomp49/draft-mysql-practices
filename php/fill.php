<?php
$animal_name = $_POST['name'];

try {
    $bdd = new PDO('mysql:host=localhost:3308;dbname=zoologic;charset=utf8;','root','');

} catch (Exception $e) {
    echo 'error';
    $e->getMessage();
}

if(isset($_POST['meat'])){
    $bdd->exec(
        'INSERT INTO animal_food VALUES(
            (SELECT id FROM animals WHERE name=\''.$animal_name.'\'),
            (SELECT id FROM foods WHERE name=\''.'meat'.'\')
        );'
    );
    
}
if(isset($_POST['corn'])){
    $bdd->exec(
        'INSERT INTO animal_food VALUES(
            (SELECT id FROM animals WHERE name=\''.$animal_name.'\'),
            (SELECT id FROM foods WHERE name=\''.'corn'.'\')
        );'
    );
}
if(isset($_POST['seafood'])){
    $bdd->exec(
        'INSERT INTO animal_food VALUES(
            (SELECT id FROM animals WHERE name=\''.$animal_name.'\'),
            (SELECT id FROM foods WHERE name=\''.'seafood'.'\')
        );'
    );
}
if(isset($_POST['fruit'])){
    $bdd->exec(
        'INSERT INTO animal_food VALUES(
            (SELECT id FROM animals WHERE name=\''.$animal_name.'\'),
            (SELECT id FROM foods WHERE name=\''.'fruit'.'\')
        );'
    );
}
if(isset($_POST['fish'])){
    $bdd->exec(
        'INSERT INTO animal_food VALUES(
            (SELECT id FROM animals WHERE name=\''.$animal_name.'\'),
            (SELECT id FROM foods WHERE name=\''.'fish'.'\')
        );'
    );
}

echo 'all right';