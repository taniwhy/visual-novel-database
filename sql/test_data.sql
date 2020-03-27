INSERT INTO visual_novel.bland_list(bland_name, bland_furigana)
    VALUES('test1', 'test1');

INSERT INTO visual_novel.bland_list(bland_name, bland_furigana)
    VALUES('test2', 'test2');

INSERT INTO visual_novel.game_list(
    game_name,
    game_furigana,  
    bland_name,       
    launch_day,     
    platform,      
    lasted_ver,  
    price,   
    lasted_patch_day, 
    is_adult_only)
    VALUES(
        'test2',
        'test2',
        1,
        now(),
        'test2',
        'test2',
        1000,
        now(),
        TRUE
        );
