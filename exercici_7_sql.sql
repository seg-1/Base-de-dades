-- - Exercici 7
-- Realitza la següent operació sobre la base de dades acabada de crear: 
-- Canvia el gènere de la pel·lícula "Ocho apellidos catalanes" perquè consti com a comèdia i no com a romàntica.

UPDATE tb_movie AS mo JOIN tb_genere AS ge SET mo.movie_genere_id = ge.genere_id WHERE ge.genere_name LIKE 'Comedia' AND mo.movie_title LIKE 'Ocho apellidos catalanes';