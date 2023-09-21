-- - Exercici 6
-- Fes la següent operació sobre la base de dades acabada de crear:  
-- Elimina la pel·lícula "La Gran Familia Española" de la base de dades.


-- Per a fer aquest exercici primer s'han d'eliminar les claus foranes

DELETE FROM tb_movie_person WHERE movie_id IN (SELECT movie_id FROM tb_movie WHERE movie_title LIKE 'La Gran Familia Española');

-- Despres ja podrem eliminar la pel·lícula

DELETE FROM tb_movie WHERE movie_title LIKE 'La Gran Familia Española';