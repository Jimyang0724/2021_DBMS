SELECT DISTINCT	P.name
FROM	(people JOIN crew ON people.person_id = crew.person_id) AS P,
		(people JOIN crew ON people.person_id = crew.person_id) AS JL
WHERE	JL.name = 'Jennifer Lawrence'
		AND JL.title_id = P.title_id
ORDER BY P.name;