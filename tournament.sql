-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

Drop DATABASE tournament;
CREATE DATABASE tournament;

\c tournament

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    winner integer references players(id) ON DELETE CASCADE,
    loser integer references players(id) ON DELETE CASCADE
);

CREATE VIEW playersWins AS 
 select players.id, players.name,count(matches.winner) as wins
            from players full outer join matches
            on players.id = matches.winner
            group by players.id
            order by wins DESC;
