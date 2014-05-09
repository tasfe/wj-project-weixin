CREATE TABLE twechattoken(
	id INT AUTO_INCREMENT,
	accessToken TEXT,
	expiresIn INT DEFAULT 7200,
	createTime TIMESTAMP NOT NULL,
	PRIMARY KEY(id)
)DEFAULT CHARSET=utf8;

CREATE TABLE twxUserCommon(
	openid VARCHAR(32),
	nickname VARCHAR(30),
	sex INT DEFAULT 0,
	city VARCHAR(20),
	country	VARCHAR(20),
	province VARCHAR(20),
	headimgurl VARCHAR(150),
	PRIMARY KEY(openid)
)DEFAULT CHARSET = utf8;

CREATE TABLE twxUserOI(
	openid VARCHAR(32),
	subscribe INT DEFAULT 0,
	subscribe_time DATETIME,
	user_language VARCHAR(15),
	PRIMARY KEY(openid)
)DEFAULT CHARSET = utf8;

CREATE TABLE twxUserSQ(
	openid VARCHAR(32),
	privilege VARCHAR(120),
	PRIMARY KEY(openid)
)DEFAULT CHARSET = utf8;

CREATE TABLE twxUserBase(
	openid VARCHAR(32),
	last_message_time DATETIME,
	wxlonggitude VARCHAR(30),
	wxlatitude VARCHAR(30),
	last_location_time DATETIME,
	wxUserStatus INT DEFAULT 0,
	PRIMARY KEY(openid)
)DEFAULT CHARSET = utf8;

