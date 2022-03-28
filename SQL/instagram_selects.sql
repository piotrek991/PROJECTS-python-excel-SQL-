 select username, created_at 
     from users 
     order by created_at DESC LIMIT 5;
+---------------------+---------------------+
| username            | created_at          |
+---------------------+---------------------+
| Justina.Gaylord27   | 2017-05-04 16:32:16 |
| Travon.Waters       | 2017-04-30 13:26:14 |
| Milford_Gleichner42 | 2017-04-30 07:50:51 |
| Hailee26            | 2017-04-29 18:53:40 |
| Maxwell.Halvorson   | 2017-04-18 02:32:44 |


select dayname(created_at) as DAY, count(id) as ILE 
    from users 
    group by DAY 
    order by ILE DESC LIMIT 2;
    
+----------+-----+
| DAY      | ILE |
+----------+-----+
| Thursday |  16 |
| Sunday   |  16 |
+----------+-----+

select 
    username
    from photos 
    right join users on
    users.id = photos.user_id
    WHERE photos.id is NULL;
    
+---------------------+
| username            |
+---------------------+
| Aniya_Hackett       |
| Bartholome.Bernhard |
| Bethany20           |
| Darby_Herzog        |
| David.Osinski47     |
| Duane60             |
| Esmeralda.Mraz57    |
| Esther.Zulauf61     |
| Franco_Keebler64    |
| Hulda.Macejkovic    |
| Jaclyn81            |
| Janelle.Nikolaus81  |
| Jessyca_West        |
| Julien_Schmidt      |
| Kasandra_Homenick   |
| Leslie67            |
| Linnea59            |
| Maxwell.Halvorson   |
| Mckenna17           |
| Mike.Auer39         |
| Morgan.Kassulke     |
| Nia_Haag            |
| Ollie_Ledner37      |
| Pearl7              |
| Rocio33             |
| Tierra.Trantow      |
+---------------------+


select users.username, 
    count(likes.user_id) as total
    from photos
    inner join likes on
        photos.id = likes.photo_id
    inner join users on
        photos.user_id = users.id
    group by users.id, photos.id
    order by total DESC LIMIT 1;
    
+---------------+-------+
| username      | total |
+---------------+-------+
| Zack_Kemmer93 |    48 |
+---------------+-------+

select username, 
    count(photos.id) as total_posts
    from users 
    left join photos on
    users.id = photos.user_id
    group by users.id
    order by total_posts DESC LIMIT 5;
    
+---------------------+-------------+
| username            | total_posts |
+---------------------+-------------+
| Eveline95           |          12 |
| Clint27             |          11 |
| Cesar93             |          10 |
| Delfina_VonRueden68 |           9 |
| Aurelie71           |           8 |
+---------------------+-------------+

select tag_name, 
    count(tag_id) as total
    from tags
    left join photo_tags on
    tags.id = photo_tags.tag_id
    group by tags.id
    order by total DESC LIMIT 5;

+----------+-------+
| tag_name | total |
+----------+-------+
| smile    |    59 |
| beach    |    42 |
| party    |    39 |
| fun      |    38 |
| food     |    24 |
+----------+-------+

select username,
    count(users.id) as total
    from users
    join likes on
    users.id = likes.user_id
    group by users.id
    HAVING total = (select count(*) from photos);

+--------------------+-------+
| username           | total |
+--------------------+-------+
| Aniya_Hackett      |   257 |
| Jaclyn81           |   257 |
| Rocio33            |   257 |
| Maxwell.Halvorson  |   257 |
| Ollie_Ledner37     |   257 |
| Mckenna17          |   257 |
| Duane60            |   257 |
| Julien_Schmidt     |   257 |
| Mike.Auer39        |   257 |
| Nia_Haag           |   257 |
| Leslie67           |   257 |
| Janelle.Nikolaus81 |   257 |
| Bethany20          |   257 |
+--------------------+-------+









    


    
    
    
    