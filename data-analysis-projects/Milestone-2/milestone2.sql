CREATE SCHEMA milestone_project2;

-- step 3 & 4 answer-- 
select * from bird_data limit 5;
select * from city_weather limit 5;

-- step 6 answer --
-- merge on nearest city and city, and bird date and city date --

-- step 7 answer -- 
-- left join -- 

-- step 9 -- 

select bird.id, bird.altitude, bird.date_time, bird.device_info_serial, bird.direction, bird.latitude, bird.longitude, bird.speed_2d, bird.bird_name, bird.nearest_city, bird.country, city.avg_temp
from bird_data bird
left join city_weather city on bird.date = city.date
and bird.nearest_city = city.city
order by id;

