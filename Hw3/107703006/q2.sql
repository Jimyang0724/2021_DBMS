SELECT	AVG(rating)
FROM	ratings AS R, crew AS C, people AS P, titles AS T
WHERE	R.title_id = C.title_id
		AND C.person_id = P.person_id
		AND P.name = 'Robert Downey Jr.'
		AND T.title_id = C.title_id
		AND T.type = 'movie';