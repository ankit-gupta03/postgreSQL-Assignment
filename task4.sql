create table tournament(
 tournament_pincode INT PRIMARY KEY,
 tournament_type VARCHAR(50)
)
insert into tournament values(1,'Open');
insert into tournament values(2,'Close');
insert into tournament values(3,'Close');
insert into tournament values(4,'Open');

select * from tournament where tournament_type = 'Open'