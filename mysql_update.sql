/* Release 3.22 */

ALTER TABLE book ADD type VARCHAR(16) NOT NULL DEFAULT 'Book';
ALTER TABLE cd ADD type VARCHAR(16) NOT NULL DEFAULT 'CD';
ALTER TABLE dvd ADD type VARCHAR(16) NOT NULL DEFAULT 'DVD';
ALTER TABLE videogame ADD type VARCHAR(16) NOT NULL DEFAULT 'Video Game';

/* Release 3.23 */

CREATE TABLE member_history
(
	memberid	 VARCHAR(16) NOT NULL,
	item_oid	 INTEGER NOT NULL,
	copyid		 VARCHAR(64) NOT NULL,
	reserved_date	 VARCHAR(32) NOT NULL,
	duedate		 VARCHAR(32) NOT NULL,
	returned_date	 VARCHAR(32) NOT NULL,
	myoid		 INTEGER PRIMARY KEY AUTO_INCREMENT,
	reserved_by	 VARCHAR(128) NOT NULL,
	type		 VARCHAR(16) NOT NULL,
	item_id		 VARCHAR(32) NOT NULL,
	FOREIGN KEY(memberid) REFERENCES member(memberid) ON DELETE CASCADE
);

GRANT DELETE, SELECT, UPDATE ON xbook_db.* TO xbook_admin@localhost IDENTIFIED BY "xbook_admin";
