DELIMITER %%
CREATE procedure evenNumbers(`range` int)
BEGIN
    declare var int default 0;
    create table even_numbers
    (
		var int
    );
	WHILE var < `range` DO
        set var = var + 2;
        insert into even_numbers values (var);
    END WHILE;
select * from even_numbers;
END%%
DELIMITER ;

call evenNumbers(10);