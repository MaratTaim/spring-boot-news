-- BEGIN EXECUTE IMMEDIATE 'DROP TABLE NEWS_BOOT'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF;END;
-- BEGIN EXECUTE IMMEDIATE 'DROP TABLE users'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF;END;
-- BEGIN EXECUTE IMMEDIATE 'DROP TABLE authorities'; EXCEPTION WHEN OTHERS THEN IF SQLCODE != -942 THEN RAISE; END IF;END;


CREATE TABLE NEWS_BOOT (
  ID NUMBER(10) not null primary key,
  BRIEF VARCHAR2(512),
  CONTENT VARCHAR2(1024),
  N_DATE VARCHAR2(10) NOT NULL ,
  DEL NUMBER(1),
  TITLE VARCHAR2(100) NOT NULL
);

create table users(
    username varchar2(50) not null primary key,
    password varchar2(50) not null,
    enabled number(1) not null
);

create table authorities (
    username varchar2(50) not null,
    authority varchar2(50) not null,
    constraint fk_authorities_users foreign key(username) references users(username)
);


