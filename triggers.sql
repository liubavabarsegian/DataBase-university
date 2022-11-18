CREATE FUNCTION positive_semester() RETURNS trigger AS $positive_semester$
    BEGIN
        -- Проверить, что указаны имя сотрудника и зарплата
        IF NEW.semester <= 0 THEN
            RAISE EXCEPTION 'semester cannot be a negative value';
        END IF;
        RETURN NEW;
    END;
$positive_semester$ LANGUAGE plpgsql;	
CREATE FUNCTION positive_group() RETURNS trigger AS $positive_group$
    BEGIN
        -- Проверить, что указаны имя сотрудника и зарплата
        IF NEW.group_number <= 0 THEN
            RAISE EXCEPTION 'group number cannot be a negative value';
        END IF;
        RETURN NEW;
    END;

$positive_group$ LANGUAGE plpgsql;

CREATE TRIGGER positive_semester BEFORE INSERT OR UPDATE ON student
    FOR EACH ROW EXECUTE FUNCTION positive_semester();
	
CREATE TRIGGER positive_group BEFORE INSERT OR UPDATE ON student
    FOR EACH ROW EXECUTE FUNCTION positive_group();	
	