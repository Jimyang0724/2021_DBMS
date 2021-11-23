SELECT DISTINCT	P.name, P.born
FROM	people AS P, titles AS T, crew AS C
WHERE	C.category = 'actor'
		AND T.title_id = C.title_id
		AND P.person_id = C.person_id
		AND (T.premiered-P.born <= 20)
		AND (T.premiered-P.born >= 0)
ORDER BY P.name;