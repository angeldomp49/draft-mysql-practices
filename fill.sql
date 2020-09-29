USE zoologic;

INSERT INTO kinds VALUES(null, 'cat', 'Felis silvestris catus', 'gato domestico');
INSERT INTO kinds VALUES(null, 'dog', 'Canis lupus familiaris', 'perro domestico');
INSERT INTO kinds VALUES(null, 'turtle', 'Testudinata', 'tortuga domestica');
INSERT INTO kinds VALUES(null, 'chicken', 'Gallus gallus domesticus', 'gallina domestica');

INSERT INTO weathers VALUES(null, 'rainy', 'clima lluvioso');
INSERT INTO weathers VALUES(null, 'sunny', 'clima soleado');
INSERT INTO weathers VALUES(null, 'chilly', 'clima frio');
INSERT INTO weathers VALUES(null, 'humid', 'clima humedo');
INSERT INTO weathers VALUES(null, 'dry', 'clima seco');

INSERT INTO foods VALUES(null, 'meat', 'like cown or pork');
INSERT INTO foods VALUES(null, 'corn', 'like tortillas or corncob');
INSERT INTO foods VALUES(null, 'seafood', 'like shrimp');
INSERT INTO foods VALUES(null, 'fruit', 'like pear and apple');
INSERT INTO foods VALUES(null, 'fish', 'like tuna fish');

INSERT INTO habitats VALUES(null, (SELECT id FROM weathers WHERE name = 'sunny')
 , 'chicken house', 100.0, 10);
INSERT INTO habitats VALUES(null, (SELECT id FROM weathers WHERE name = 'dry')
 , 'home', 100.0, 10);
INSERT INTO habitats VALUES(null, (SELECT id FROM weathers WHERE name = 'humid')
 , 'tank', 100.0, 10);

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds WHERE name = 'turtle'),
 'dory', 'f', '1995-10-29',1, 'custome desc');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'dog'),
 'pedro', 'm', '2000-09-01',9, 'description dog');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'dog'),
 'sara', 'f', '1996-10-29',6, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'cat'),
 'camila', 'f', '2006-10-29',4, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'chicken house'),
    (SELECT id FROM kinds    WHERE name = 'chicken'),
 'nicole', 'f', '1997-10-29',7, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'chicken house'),
    (SELECT id FROM kinds    WHERE name = 'chicken'),
 'fernando', 'm', '2001-10-29',2, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'alejandro', 'm', '1996-10-29',1, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'cat'),
 'mauricio', 'm', '1998-10-29',10, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'ricardo', 'm', '2003-10-29',8, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'chicken house'),
    (SELECT id FROM kinds    WHERE name = 'chicken'),
 'fernanda', 'f', '2000-10-29',11, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'dog'),
 'isabel', 'f', '2002-10-29',4, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'samantha', 'f', '2010-10-29',3, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'cat'),
 'tomas', 'm', '2009-10-29',7, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'chicken house'),
    (SELECT id FROM kinds    WHERE name = 'chicken'),
 'ivette', 'f', '2011-10-29',2, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'dog'),
 'vanessa', 'f', '1999-10-29',8, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'home'),
    (SELECT id FROM kinds    WHERE name = 'cat'),
 'antonio', 'm', '2002-10-29',12, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'roberto', 'm', '2008-10-29',7, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'chicken house'),
    (SELECT id FROM kinds    WHERE name = 'chicken'),
 'susana', 'f', '2007-10-29',6, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'dominique', 'm', '2004-10-29',3, 'description cat');

INSERT INTO animals VALUES(null,
    (SELECT id FROM habitats WHERE name = 'tank'),
    (SELECT id FROM kinds    WHERE name = 'turtle'),
 'jordan', 'm', '2005-10-29',5, 'description cat');


-- for insert data in animal_food see the fill.php file--