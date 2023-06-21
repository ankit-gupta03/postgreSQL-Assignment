CREATE TABLE competition (
	team_name VARCHAR(5),
	team_count INT
)

INSERT INTO competition values ('A',10);
INSERT INTO competition values ('B',20);
INSERT INTO competition values ('C',30);
INSERT INTO competition values ('D',9);
INSERT INTO competition values ('E',7);
INSERT INTO competition values ('F',2);
INSERT INTO competition values ('G',3);

SELECT * from competition WHERE team_count > 5
