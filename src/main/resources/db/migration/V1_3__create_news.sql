INSERT INTO NEWS_BOOT(ID,TITLE,BRIEF,CONTENT,N_DATE)
VALUES (HIBERNATE_SEQUENCE.nextval,'Title migration','Migration','Migration is V1_3_create_news.sql',TO_CHAR(SYSDATE,'DD/MM/YYYY'));