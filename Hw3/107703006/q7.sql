SELECT DISTINCT	P.name
FROM	people AS P, crew AS C, ratings AS R
WHERE	C.category = 'composer'
		AND P.person_id = C.person_id
		AND R.title_id = C.title_id
		AND (R.rating > 8)
GROUP BY P.person_id
HAVING	COUNT(*) > 10
ORDER BY P.name;