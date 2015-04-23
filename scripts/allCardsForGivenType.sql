DELIMITER //
CREATE PROCEDURE allCards (IN typeName VARCHAR(20))
BEGIN
	IF (typeName = 'Fate' or typeName = 'fate') THEN
		SELECT * FROM acts;
		SELECT * FROM attachments;
		SELECT * FROM followers;
		SELECT * FROM rings;
		SELECT * FROM monk_shugenja_attachments;
	END IF;
	IF (typeName = 'Dynasty' or typeName = 'dynasty') THEN
		SELECT * FROM personalities;
		SELECT * FROM events;
		SELECT * FROM holdings;
		SELECT * FROM regions;
	END IF;
	IF (typeName = 'Neither' or typeName = 'neither') THEN
		SELECT * FROM strongholds;
		SELECT * FROM winds;
		SELECT * FROM senseis;
	END IF;
	IF (typeName = 'All' or typeName = 'all') THEN
		SELECT * FROM acts;
		SELECT * FROM attachments;
		SELECT * FROM followers;
		SELECT * FROM rings;
		SELECT * FROM monk_shugenja_attachments;
		SELECT * FROM personalities;
		SELECT * FROM events;
		SELECT * FROM holdings;
		SELECT * FROM regions;
		SELECT * FROM strongholds;
		SELECT * FROM winds;
		SELECT * FROM senseis;
	END IF;
END //
DELIMITER ; 