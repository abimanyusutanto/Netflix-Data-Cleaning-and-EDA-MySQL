-- Netflix EDA

select *
from netflix3;

select `type`, count(`type`) total
from netflix3
group by `type`;

# Query shows that total count for movie is higher than tv show

select country, `type`, count(`type`) total
from netflix3
where `type` = "TV Show"
group by country, `type`
order by total desc;

# Query shows that that most TV SHow released between 2018-2021 are made from pakistan

select country, `type`, count(`type`) total
from netflix3
where `type` = "Movie"
group by country, `type`
order by total desc;

# Query shows that that most movie released between 2018-2021 are made from United States

select director, count(director) total_netflix_shows
from netflix3
where director != "Not Given"
group by director
order by total_movie desc;

# Query shows that Suhas Kadav makes the most netflix show from year 2018-2021

select listed_in, count(listed_in) total
from netflix3
group by listed_in
order by total desc;

# Query shows that Kid's TV are the most released genre from year 2018-2021

select rating, count(rating) total
from netflix3
group by rating
order by total desc;

# Query shows that TV-MA is the most released show rating from 2018-2021.

select
  left(date_added, 4) AS year_added,
  sum(`type` = 'Movie') AS total_movie_released,
  sum(`type` = 'TV Show') AS total_tv_show_released
from netflix3
group by left(date_added, 4)
order by year_added;

# Query shows how many movies and tv shows release per year start from 2018 to 2021

select rating, count(rating) total
from netflix3
group by rating
order by total desc;

# This query shows the most ratings released on netflix in the range of 2018-2021

(select title, release_year, `type`
from netflix3
where `type` = 'TV Show'
order by release_year asc
limit 5)
union
(select title, release_year, `type`
from netflix3
where `type` = 'Movie'
order by release_year asc
limit 5)
order by release_year;

# Query shows the top 5 oldest tv shows and movies released on netflix between 2018-2021






























