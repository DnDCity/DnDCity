
drop table class_level_order;
drop function next_class_level_seqn;

drop table class_level_seqn;

create table if not exists class_level_seqn (
  character_id int not null UNIQUE PRIMARY KEY,
  seqn int not null default 1
);

CREATE OR REPLACE FUNCTION set_class_level_seqn() RETURNS trigger AS $$
  BEGIN
    update class_level_seqn set seqn = coalesce(seqn,0)+1 where character_id = NEW.character_id returning seqn into NEW.seq;
    IF NOT FOUND THEN
      insert into class_level_seqn (character_id) values (NEW.character_id) returning seqn into NEW.seq;
    END IF;
    RETURN NEW;
  END;
$$ LANGUAGE plpgsql;

-- ALTER TABLE class_levels ADD COLUMN seq int;
-- ALTER TABLE class_levels ALTER COLUMN class_level SET DEFAULT 1

CREATE TRIGGER set_class_level_seq_trigger BEFORE INSERT ON class_levels
    FOR EACH ROW EXECUTE PROCEDURE set_class_level_seqn();

