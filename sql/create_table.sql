\c visual_novel
DROP TABLE IF EXISTS blandlists CASCADE;
DROP TABLE IF EXISTS blandlists_id_seq CASCADE;

CREATE TABLE blandlists
(
    id              SERIAL,
    bland_name      TEXT    NOT NULL,
    bland_furigana  TEXT    NOT NULL,
    url             TEXT,
    twitter_id      TEXT,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS gamelists;
DROP TABLE IF EXISTS gamelists_id_seq;

CREATE TABLE gamelists
(
    id SERIAL,
    game_name       TEXT    NOT NULL,
    game_furigana   TEXT    NOT NULL,
    bland_name      INTEGER NOT NULL,
    launch_day      DATE    NOT NULL,
    platform        TEXT    NOT NULL,
    scenario_writer TEXT    NOT NULL,


    PRIMARY KEY(id),
    FOREIGN KEY(bland_name) REFERENCES blandlists(id) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS gamelists;
DROP TABLE IF EXISTS gamelists_id_seq;

CREATE TABLE gamelists
(
    id SERIAL,
    game_name       TEXT    NOT NULL,
    game_furigana   TEXT    NOT NULL,
    bland_name      INTEGER NOT NULL,
    launch_day      DATE    NOT NULL,
    platform        TEXT    NOT NULL,
    scenario_writer TEXT    NOT NULL,
    

    PRIMARY KEY(id),
    FOREIGN KEY(bland_name) REFERENCES blandlists(id) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);