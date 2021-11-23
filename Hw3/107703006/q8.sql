SELECT DISTINCT	actor.name, actor.born, actress.name
FROM	(people JOIN crew ON people.person_id = crew.person_id) AS actor,
		(people JOIN crew ON people.person_id = crew.person_id) AS actress
WHERE	actor.category = 'actor'
		AND actress.category = 'actress'
		AND actor.title_id = actress.title_id
		AND actor.born = actress.born
ORDER BY actor.born, actress.name, actor.name;