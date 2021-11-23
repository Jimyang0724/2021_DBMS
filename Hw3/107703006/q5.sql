SELECT DISTINCT	count(DISTINCT C.person_id)
FROM	crew AS C
WHERE	C.category = 'actress'
		AND EXISTS(
			SELECT	*
			FROM	people AS P1,crew AS C1
			WHERE	C1.title_id = C.title_id
					AND C1.person_id = P1.person_id
					AND P1.name = 'Robert Downey Jr.');