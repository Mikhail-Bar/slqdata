insert  into character(name) values('Vulrend');
insert  into character(name) values('Werunth');
insert  into character(name) values('Harelath');
insert  into character(name) values('Zuroth');
insert  into character(name) values('Dorath');
insert  into character(name) values('Sharian');
insert  into character(name) values('Maiel');
insert  into character(name) values('Melron');
insert  into character(name) values('Melkorn');
insert  into character(name) values('Meralia');
insert  into character(name) values('Galeron');
insert  into character(name) values('Dalior');
insert  into character(name) values('Oristor');
insert  into character(name) values('Yverath');
insert  into character(name) values('Deraldorion');
insert  into character(name) values('Doriolin');
insert  into character(name) values('Melion');
insert  into character(name) values('Turimbar');
insert  into character(name) values('Turin');
insert  into character(name) values('Reolath');
insert  into character(name) values('Theolas');
insert  into character(name) values('Eoner');
insert  into character(name) values('Eoren');
insert  into character(name) values('Alwund');
insert  into character(name) values('Tarathiel');
insert  into character(name) values('Throk');
insert  into character(name) values('Eldron');
insert  into character(name) values('Eltharien');
insert  into character(name) values('Elthar');
insert  into character(name) values('Relath');
insert  into character(name) values('Garndal');
insert  into character(name) values('Vuldred');
insert  into character(name) values('Njorn');
insert  into character(name) values('Perulian');
insert  into character(name) values('Loruthan');


insert  into race(name) values('Dwarves');
insert  into race(name) values('Elves');
insert  into race(name) values('Humans');
insert  into race(name) values('Goblins');
insert  into race(name) values('Orcs');

create table race (id integer not null primary key autoincrement, name text not null UNIQUE);
ALTER TABLE character add COLUMN race_id integer;

UPDATE character SET race_id = 1 WHERE id%5 = 0;
UPDATE character SET race_id = 2 WHERE id%5 = 1;
UPDATE character SET race_id = 3 WHERE id%5 = 2;
UPDATE character SET race_id = 4 WHERE id%5 = 3;
UPDATE character SET race_id = 5 WHERE id%5 = 4;

create table class (id integer not null primary key autoincrement, name text not null UNIQUE);
ALTER TABLE character add COLUMN class_id integer;


insert  into class(name) values('Warrior');
insert  into class(name) values('Gunslinger');
insert  into class(name) values('Archer');
insert  into class(name) values('Assassin');
insert  into class(name) values('Tank');

UPDATE character SET class_id = 1 WHERE id%5=4;
UPDATE character SET class_id = 2 WHERE id%5=3;
UPDATE character SET class_id = 3 WHERE id%5=2;
UPDATE character SET class_id = 4 WHERE id%5=1;
UPDATE character SET class_id = 5 WHERE id%5=0;

--цена,вес,уникальность,размер

create table item (id integer not null primary key autoincrement, name text not null UNIQUE, price integer default 0, weight REAL, rarity integer CHECK(rarity between 1 and 5) default 1, maximum integer default 1);
ALTER TABLE character add COLUMN item_id integer;
insert  into item(name) values('');

insert  into item(name) values('Adobe');
insert  into item(name) values('Aluminum Ingot');
insert  into item(name) values('Animal Bone');
insert  into item(name) values('Animal Fat');
insert  into item(name) values('Animal Hide');
insert  into item(name) values('Bamboo Stick');
insert  into item(name) values('Beeswax');
insert  into item(name) values('Black Dye');
insert  into item(name) values('Blue Alloy');
insert  into item(name) values('Blue Coral Powder');
insert  into item(name) values('Blue Dye');
insert  into item(name) values('Blue Metal');
insert  into item(name) values('Bolts');
insert  into item(name) values('Brick');
insert  into item(name) values('Bronze Ingot');
insert  into item(name) values('Carved Wood');
insert  into item(name) values('Cattail');
insert  into item(name) values('Cement');
insert  into item(name) values('Charcoal');
insert  into item(name) values('Clay');
insert  into item(name) values('Cloth');
insert  into item(name) values('Coal');
insert  into item(name) values('Copper Ingot');
insert  into item(name) values('Copper Ore');
insert  into item(name) values('Crafted Leather');
insert  into item(name) values('Cursed Wood');
insert  into item(name) values('Duct Tape');
insert  into item(name) values('Electronic Components');
insert  into item(name) values('Empty Can');
insert  into item(name) values('Feather');
insert  into item(name) values('Fertile Soil');
insert  into item(name) values('Firewood');
insert  into item(name) values('Flint');
insert  into item(name) values('Gas');
insert  into item(name) values('Glass');
insert  into item(name) values('Glue');
insert  into item(name) values('Gold Ingot');
insert  into item(name) values('Gold Nugget');
insert  into item(name) values('Gravel');
insert  into item(name) values('Green Dye');
insert  into item(name) values('Hard Skin');
insert  into item(name) values('Hardwood');
insert  into item(name) values('Iron Ingot');
insert  into item(name) values('Iron Ore');
insert  into item(name) values('Jade');
insert  into item(name) values('Large Stone');
insert  into item(name) values('Leather');
insert  into item(name) values('Leather Straps');
insert  into item(name) values('Marble');
insert  into item(name) values('Metal Scraps');
insert  into item(name) values('Metal Shard');
insert  into item(name) values('Metal Wire');
insert  into item(name) values('Monster Scales');
insert  into item(name) values('Nails');
insert  into item(name) values('Orange Dye');
insert  into item(name) values('Paper');
insert  into item(name) values('Plant Fiber');
insert  into item(name) values('Plastic');
insert  into item(name) values('Purple Coral Powder');
insert  into item(name) values('Purple Dye');
insert  into item(name) values('Quartz');
insert  into item(name) values('Red Coral Powder');
insert  into item(name) values('Red Dye');
insert  into item(name) values('Rooftiles');
insert  into item(name) values('Rope');
insert  into item(name) values('Rubber');
insert  into item(name) values('Sand');
insert  into item(name) values('Sharp Stone');
insert  into item(name) values('Silicon');
insert  into item(name) values('Silver Ingot');
insert  into item(name) values('Silver Ore');
insert  into item(name) values('Slate');
insert  into item(name) values('Small Stone');
insert  into item(name) values('Steel Ingot');
insert  into item(name) values('Steel Plates');
insert  into item(name) values('Stick');
insert  into item(name) values('Straws');
insert  into item(name) values('Thread');
insert  into item(name) values('Timber');
insert  into item(name) values('Tin');
insert  into item(name) values('Titanium Dust');
insert  into item(name) values('Titanium Ingot');
insert  into item(name) values('Turquoise');
insert  into item(name) values('Varnish');
insert  into item(name) values('Whetstone');
insert  into item(name) values('White Coral Powder');
insert  into item(name) values('White Dye');
insert  into item(name) values('Wood Log');
insert  into item(name) values('Wood Planks');
insert  into item(name) values('Wool');
insert  into item(name) values('Yellow Coral Powder');
insert  into item(name) values('Yellow Dye');

UPDATE item SET price = random()%1000+1000;
UPDATE item SET weight = (random()%100+100)/10;
UPDATE item SET rarity = abs(random()%5)+1;
UPDATE item SET maximum = abs(random()%15)+1;


create table inventory (id integer not null primary key autoincrement, character_id integer, item_id integer);
--Вывести персонажей, их расы и классы
select count(*) from(
select c.name, r.name, l.name
from character as c
inner join race as r
on(c.race_id=r.id)
inner join class as l
on(c.class_id=l.id));
--Сколько у каждого персонажа вещей в инвентаре?
c.name, count(i.id) from character as c, item as i, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id)
group by c.id;
--У кого из эльфов имя начинается на "T"?
select name from character where name Like'T%'and race_id=2 ;


select c.name from race as r inner join character as c on (r.id = c.race_id)
where c.name like ('t%') and r.name='Elves';
--У кого из воинов самое короткое имя?
select c.name from character as c
inner join class as l
on (c.class_id=l.id)
where l.name='Warrior'
order by length(c.name)
limit 1;
--Вывести список всех людей-лучников
select count(*) from(
select c.name, r.name, cl.name
from character as c, race as r, class as cl
where (c.race_id=r.id)and(c.class_id=cl.id)and(r.name = "Humans") and (cl.name="Archer"));
--Какой класс воинов самый распространенный у гномов?
select c.name, r.name, l.name, count(l.id) as count from character as c
inner join race as r
on(c.race_id=r.id)
inner join class as l
on(c.class_id=l.id)
where r.name='Dwarves'
group by l.name
order by count desc
limit 1;

--Вывести количество персонажей в каждой расе
select r.name, count(c.id) as count
from character as c
inner join race as r
on(c.race_id=r.id)
group by r.id;
--Сколько персонажей не принадлежат к известной расе?
select t.count from(
select r.name, count(c.id) as count
from character as c
left join race as r
on(c.race_id=r.id)
group by r.id) as t
where t.name is null;

select count(c.id) as count
from character as c
left join race as r
on(c.race_id=r.id)
group by r.id
having r.name is null;
--У кого из гномов есть серебро?
select c.name, r.name, i.name
from character as c, item as i, race as r, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id) and (i.name like '%Silver%') and (r.name = 'Dwarves');
--Каждому гному раздать по серебряной руде (Silver ore)
select id from item
where name='Silver Ore';


drop table if exists dwarves;
create temp table dwarves as
select c.id, (select id from item
where name='Silver Ore')
from character as c
inner join race as r
on(c.race_id=r.id)
where r.name='Dwarves';

insert into inventory (character_id, item_id)
select * from dwarves;

--Вывести по 3 самых тяжелых вещи в инвентаре для каждого персонажа
drop table if exists weights;
create temp table weights as
select c.id, c.name, i.name, i.weight
from character as c, item as i, inventory as inv
where (c.id=inv.character_id) and (i.id=inv.item_id)
order by c.name, i.weight desc;
select * from weights as w
where (select count(*) from weights where w.id=id and weight>=w.weight)<=3;

--Удалить из инвентаря вещи, если их количество превышает 30 для одного персонажа


--В базе данных содержатся персонажи игры определенной расы и класса.
--У них есть инвентарь, в котором хранятся вещи

drop table if exists inventory;
drop table if exists character;
drop table if exists race;
drop table if exists class;
drop table if exists item;

CREATE TABLE character (
    id integer not null primary key autoincrement,
    name text not null,
    race_id integer,
    class_id integer);

CREATE TABLE race (
    id integer not null primary key autoincrement,
    name text not null unique);

CREATE TABLE class (
    id integer not null primary key autoincrement,
    name text not null UNIQUE);

CREATE TABLE item (
    id integer not null primary key autoincrement,
    name text not null UNIQUE,
    price integer default 0, weight REAL,
    rarity integer CHECK(rarity between 1 and 5) default 1,
    maximum integer default 1);

CREATE TABLE inventory (
    id integer not null primary key autoincrement,
    character_id integer,
    item_id integer);

select count(*) from
(select c.name, r.name, l.name
from character as c, race as r, class as l
where (c.race_id=r.id)and(c.class_id=l.id));

select count(*) from
(select c.name, r.name, l.name
from character as c, race as r, class as l
where (c.race_id=r.id)and(c.class_id=l.id));

select count(*) from(
select c.name, r.name, l.name
from character as c
inner join race as r
on(c.race_id=r.id)
inner join class as l
on(c.class_id=l.id)
);
--Вывести количество персонажей в каждой расе
select count(c.name) , r.name from character as c , race as r where c.race_id = race_id group by (r.name);


"C:\mysql\bin\mysql.exe" -p --default-character-set=utf8 -u mikhail students <"C:\mysql\mydb\students.sql"

--Максимальная стипендия
select max(stipend) from student;

--Студент с максимальной стипендией
select surname, name, stipend from student
where stipend in (select max(stipend) from student);
--Топ 10 студентов по стипендии
select surname , name , STIPEND  from student order by stipend desc limit 10;
--Сколько студентов имеют стипендию 550?
select count(STIPEND)  from student where stipend = '550';
--Вывести распределение количества студентов по получаемым стипендиям
select count(student_id), stipend from student group by stipend order by count;
--В каком университете больше всего студентов
select univ_name ,count(student_id) as count_s from student, university where student.univ_id = university.univ_id  group by univ_name;
--Какие студенты не зачислены в университет?

--В каком университете нет студентов?
select u.univ_name, count(student_id) as count
from student s
right join university u
on (s.univ_id=u.univ_id)
group by s.univ_id
having count=0;
--Распределение студентов по именам

--Вывести распределение по оценкам
--Все предметы, по которым сдавались экзамены и количество студентов на них
--Из каких городов преподаватели?
--Вывести топ 10 студентов и их средний балл
--Количество студентов с одними пятерками
--https://github.com/KirillovItstep/classworks/tree/main/students