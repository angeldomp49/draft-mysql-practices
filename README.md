La base de datos de nombre zoologic está constituida de las siguientes tablas:
-animals
-habitats
-weathers
-kinds
-foods
-animal-foods (aux)
-imageable   (aux)

un animal pertenece a un habitat
un animal pertenece a una especie
un animal tiene varios alimentos
un animal tiene varias imagenes

un habitat tiene varios animales
un habitat pertenece a un clima

un clima tiene varias habitats
un clima tiene varias imagenes

una especie tiene varios animales

un alimento tiene varios animales
un alimento pertenece a varios animales

De esta manera las relaciones son:

animal ->belongs to one: habitat
animal ->belongs to one: kind
animal ->has many: food
animal ->belongs to many: food
animal ->has many: image

habitat ->has many: animal
habitat ->belongs to one: weather

weather ->has many: habitat
weather ->has many: image

kind ->has many: animal

food ->has many: animal
food ->belongs to many: animal

Por convención la clave primaria de una determinada tabla se guarda como clave
extranjera en la o las tablas que le pertenecen, en este caso la clave primaria de
la tabla kinds guarda su clave primaria como clave extranjera en la tabla animals.
En el caso de las tablas a las cuales les pertenecen varios elementos de otra tabla
y a su vez a los elementos de la segunda tabla les pertenecen varios elementos de la primer tabla usamos una tabla auxiliar que almacena las claves primarias de cada respectivo elemento de la primer tabla con las claves primarias de los elementos de 
la segunda tabla que le pertenecen.

animal-food tiene un campo con el siguiente aspecto:

clave foranea de la primer tabla <-> clave foranea de la segunda tabla.

Estructuras.

animals:

id:                  primary key (bigint unsigned not null autoincrement)
name:                varchar(100)
sex:                 char(1)
birthday:            date
age:                 int
description:         text
habitat_id:          foreign key (bigint unsigned not null)
kind_id:             foreign key (bigint unsigned not null)

habitats:

id:                  primary key (bigint unsigned not null autoincrement)
name:                varchar(100)
area:                decimal(5,5)
inhabitats:          int
weather_id:          foreign key (bigint unsigned not null)

weathers:  

id:                  primary key (bigint unsigned not null autoincrement)
name:                varchar(100)
description:         text

kinds:

id:                  primary key (bigint unsigned not null autoincrement)
name:                varchar(100)
latin_name:          varchar(100)
description:         text

foods:

id:                  primary key (bigint unsigned not null autoincrement)
name:                varchar(100)
description:         text

animal-food:

animal_id:           foreign key (bigint unsigned not null)
food_id:             foreign key (bigint unsigned not null)

imagable:

id:                  primary key (bigint unsigned not null autoincrement)
photography:         mediumblob
imagable_id:         foreign key (bigint unsigned not null)
imagable_type:       varchar(100)


Como práctica para las vistas materializadas se van a crear de este tipo usando consultas que hagan referencia a claves foraneas,
además se va a tratar de medir la velocidad de respuesta,
por último se van a usar indices para ver si hay un cambio,
además se va a incluir práctica para busquedas con indices de texto FULLTEXT