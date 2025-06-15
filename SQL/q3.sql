DELIMITER //
CREATE PROCEDURE UPDATE_LEADERS_SCORE(IN in_School_ID INTEGER, IN in_Leader_Score INTEGER)
BEGIN
	UPDATE chicago_public_schools
    SET Leaders_Score = in_Leader_Score
    WHERE School_ID = in_School_ID;
    
    IF (in_Leader_Score >= 80 AND in_Leader_Score <= 99) THEN
    	UPDATE chicago_public_schools
        SET Leaders_Icon = "Very Strong"
        WHERE School_ID = in_School_ID;
    ELSEIF (in_Leader_Score >= 60 AND in_Leader_Score <= 79) THEN
    	UPDATE chicago_public_schools
        SET Leaders_Icon = "Strong"
        WHERE School_ID = in_School_ID;
    ELSEIF (in_Leader_Score >= 40 AND in_Leader_Score <= 59) THEN
    	UPDATE chicago_public_schools
        SET Leaders_Icon = "Average"
        WHERE School_ID = in_School_ID;
    ELSEIF (in_Leader_Score >= 20 AND in_Leader_Score <= 39) THEN
    	UPDATE chicago_public_schools
        SET Leaders_Icon = "Weak"
        WHERE School_ID = in_School_ID;
    ELSEIF (in_Leader_Score >= 0 AND in_Leader_Score <= 19) THEN
    	UPDATE chicago_public_schools
        SET Leaders_Icon = "Very weak"
        WHERE School_ID = in_School_ID;
    ELSE
    	UPDATE chicago_public_schools
        SET Leaders_Icon = Leaders_Icon
        WHERE School_ID = in_School_ID;
    END IF;
END //
DELIMITER ;