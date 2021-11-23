SELECT	premiered, COUNT(*)
FROM	titles
WHERE	genres LIKE '%Comedy%' 
		AND type='movie'
		AND premiered IS NOT NULL
GROUP BY	premiered
HAVING	COUNT(*)>0;