-- - Exercici 3
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
-- Has d'obtenir el nom del gènere i el nombre total de pel·lícules d'aquest gènere i ordenar-ho per ordre descendent de nombre total de pel·lícules.  

SELECT ge.genere_name, COUNT(mo.movie_genere_id) as numero_peliculas FROM tb_genere as ge JOIN tb_movie as mo WHERE ge.genere_id = mo.movie_genere_id GROUP BY ge.genere_name ORDER BY numero_peliculas DESC;
