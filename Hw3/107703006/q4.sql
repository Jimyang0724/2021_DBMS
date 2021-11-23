SELECT DISTINCT	P.name
FROM	people AS P, titles AS T, akas AS A, crew AS C
WHERE	T.genres LIKE '%Action%'
		AND T.type = 'movie'
		AND T.premiered BETWEEN 1991 AND 2000
		AND T.title_id = A.title_id
		AND A.region = 'JP'
		AND T.title_id = C.title_id
		AND C.category = 'actress'
		AND C.person_id = P.person_id
ORDER BY	P.name;