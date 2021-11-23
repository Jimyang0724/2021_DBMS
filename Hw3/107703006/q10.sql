WITH title_id_JL AS (
	SELECT	title_id
	FROM	people JOIN crew ON people.person_id = crew.person_id
	WHERE	name = 'Jennifer Lawrence'
)
SELECT DISTINCT	name
FROM	people
WHERE	NOT EXISTS(
				(	
					SELECT	title_id
					FROM	title_id_JL
				)
				EXCEPT
				(
					SELECT 	title_id
					FROM	crew
					WHERE	crew.person_id = people.person_id
				))
ORDER BY name;