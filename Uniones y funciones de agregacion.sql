/* Microdesafio 1 */

select series.title, genres.name from series
inner join genres on genres.id = series.genre_id;


select episodes.title, actors.first_name, actors.last_name from episodes, actors
inner join actor_episode on actors.id = actor_episode.id


/* Microdesafio 2 */

select actors.first_name, actors.last_name, movies.title from actors, movies
inner join actor_movie on actor_movie.id = movies.id
where movies.title like "La guerra%"
group by actors.last_name;


/* Microdesafio 3 */

select movies.title, coalesce(genres.name, 'no tiene género') from movies
left join genres
on movies.genre_id = genres.id;

/* Microdesafio 4 */

select series.title, datediff(series.end_date, series.release_date) as duracion from series;

/* Microdesafio 5 */

SELECT first_name  FROM actors
WHERE LENGTH(first_name) <= 6 
ORDER BY first_name ASC;

/*----------*/

select count(title) as 'episodios' from episodes; 

/*----------*/

select series.title, count(seasons.title)  as 'Temporadas' from series
inner join seasons
on seasons.serie_id = series.id
group by series.title;

/*----------*/

select genres.name, count(movies.title) as 'Total peliculas' from genres
inner join movies
on movies.genre_id = genres.id 
group by genres.name;