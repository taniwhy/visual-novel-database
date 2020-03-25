\c visual_novel

DROP TABLE IF EXISTS bland_list CASCADE;
DROP TABLE IF EXISTS bland_list_id_seq CASCADE;
CREATE TABLE bland_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    bland_name          TEXT        NOT NULL,
    bland_furigana      TEXT        NOT NULL,
    bland_url           TEXT,
    twitter_id          TEXT,

    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS game_list CASCADE;
DROP TABLE IF EXISTS game_list_id_seq CASCADE;
CREATE TABLE game_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    game_name           TEXT        NOT NULL,
    game_furigana       TEXT        NOT NULL,
    bland_name          INTEGER     NOT NULL,
    launch_day          DATE        NOT NULL,
    platform            TEXT        NOT NULL,
    lasted_ver          TEXT        NOT NULL,
    price               INTEGER     NOT NULL,
    lasted_patch_day    TIMESTAMP,
    is_adult_only       BOOLEAN     NOT NULL,
    site_url            TEXT,
    twitter_id          TEXT,


    PRIMARY KEY(id),
    FOREIGN KEY(bland_name) REFERENCES bland_list(id) 
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

DROP TABLE IF EXISTS creater_list CASCADE;
DROP TABLE IF EXISTS creater_list_id_seq CASCADE;
CREATE TABLE creater_list
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    creater_name        TEXT        NOT NULL,
    creaters_furigana   TEXT        NOT NULL,
    twitter_id          TEXT,
    gender              BOOLEAN,

    PRIMARY KEY(id) 
);

DROP TABLE IF EXISTS work_infomations CASCADE;
DROP TABLE IF EXISTS work_infomations_id_seq CASCADE;
CREATE TABLE work_infomations
(
    id                  SERIAL,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    game                INTEGER     NOT NULL,
    creater             INTEGER     NOT NULL,
    job                 INTEGER     NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(game) REFERENCES game_list(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    FOREIGN KEY(creater) REFERENCES creater_list(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

