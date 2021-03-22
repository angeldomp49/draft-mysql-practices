

-- by default if you use an empty variable you get null but nothing error --

SET @number1 = 24;
SET @text1 = "this is text";

SELECT @number1, @text1;

SELECT @number1 := 24, @text1 := "this is text";

-- use --

SELECT publish_datetime FROM comments WHERE id = @number1;

SET @info_for_get = "id, publish_datetime";

SELECT @info_for_get FROM comments;

-- bad uses --

SET @table_name = "comments";

SELECT id, content, FROM @table_name;
