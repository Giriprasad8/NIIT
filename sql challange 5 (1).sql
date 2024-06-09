use world;

-- task 1 display all columns in country, name and population of uae,uk,as

select * from country;
select (select count(*) from country) as total_rows;
select name, population
from country
where code in ('USA', 'GBR', 'ARE');

-- task 2 continent and sum of population

select continent, (select sum(population)from country c2
where c2.continent = c1.continent) as total_population
from country c1
group by continent
order by total_population desc;

-- task 3  Display country names in the European continent where the spoken language is French

select c.name
from country c
where c.continent = 'Europe' and c.code in (select cl.countrycode from countrylanguage cl
where cl.language = 'French');

-- task 4 name,continent and higest population

select name, continent, population
from country c
where population = (select max(population)from country
where continent = c.continent);




