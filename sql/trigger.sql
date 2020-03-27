CREATE TRIGGER set_timestamp
BEFORE UPDATE ON visual_novel.bland_list
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON visual_novel.game_list
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON visual_novel.creater_list
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();

CREATE TRIGGER set_timestamp
BEFORE UPDATE ON visual_novel.work_infomations
FOR EACH ROW
EXECUTE PROCEDURE trigger_set_timestamp();