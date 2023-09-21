-- - Exercici 4
-- Realitza la següent consulta sobre la base de dades acabada de crear: 
-- Has d'obtenir, per a cada persona, el seu nom i el nombre màxim de rols diferents que ha tingut en una mateixa pel·lícula. 
-- Posteriorment, mostra únicament aquelles persones que hagin assumit més d'un rol en una mateixa pel·lícula.

SELECT (SELECT DISTINCT person_name FROM tb_person AS pe WHERE pe.person_id = mp.person_id) AS person_name , COUNT(role_id) AS num_rol_movie FROM tb_movie_person AS mp 
GROUP BY person_id, movie_id HAVING num_rol_movie > 1;