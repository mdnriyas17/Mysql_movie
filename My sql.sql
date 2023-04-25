//--------------------------------------------------------------------CREATING A DATABASE

CREATE DATABASE IMDB

//-------------------------------------------------------------------CREATING A MOVIE TABLE

CREATE TABLE `Movies` (`ID` PRIMARY KEY, 
`Title` VARCHAR(255),
 `Director`VARCHAR(255),
  `Release Date`DATE(255), 
  `Productions`VARCHAR(255)
  )


//-----------------------------------------------------------------INSERTING DATA INTO MOVIE TABLE

INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('1', 'Leo', 'Lokesh Kanagaraj', '19.10.2023', 'Seven Screen Studio');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('2', 'Ponniyin Selvan', 'Maniratnam', '30.09.2022', 'LYCA Productions');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('3', 'Vikram', 'Lokesh Kanagaraj', '03.06.2022', 'RKFI Productions');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('4', 'Viduthalai', 'Vetrimaaran', '31.03.2023', 'RS Infotainment');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('5', '96', 'C.Premkumar', '04.10.2018', 'Madras Enterprises');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('6', 'Thunivu', 'H. Vinoth', '10.01.2023', 'Zee Studios');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('7', 'Master', 'Lokesh Kanagaraj', '13.01.2021', 'Seven Screen Studios');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('8', 'Lift','Vineeth Varaprasad','01.10.2021','Ekaa Entertainment');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('9', 'Doctor', 'Nelson', '09.10.2019', 'Sivakarthikeyan Productions');
INSERT INTO `movietable` (`ID`, `Title`, `Director`, `Release Date`, `Productions`) VALUES ('10', 'Indru Netru Naalai', 'Ravikumar' '26.06.2015','Thirukumaran Entertainment and Studio Green');


//---------------------------------------------------------------------CREATING GENRE TABLE

CREATE TABLE `Genre`(ID SERIAL PRIMARY KEY,
 Movie_ID INTEGER REFERENCES movietable(ID),
  Genre VARCHAR(255) );


//-------------------------------------------------------------------INSERING DATA INTO GENRE TABLE

INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('1','1', 'Action', 'Thriller');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('2','2','Fantasy','Historical');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('3','3','Action', 'Thriller');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('4','4','Action', 'Romance');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('5','5','Love','Romance');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('6','6','Action', 'Drama');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('7','7','Action', 'Comedy');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('8','8','Horror','Thriller');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('9','9','Comedy','Action');
INSERT INTO `Genre`(`ID`,`Movie_ID`,`Genre`) VALUES('10','10','Science Fiction','Romance');


//------------------------------------------------------------------------CREATING MEDIA TABLE

CREATE TABLE `Media_Table`( ID SERIAL PRIMARY KEY, Movie_ID INTEGER REFERENCES movies(ID), Type VARCHAR(255),URL VARCHAR(255));


//---------------------------------------------------------------------INSERING DATA INTO MEDIA TABLE

INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('1','1','Image','https://i.ytimg.com/vi/qN3wfuPYTI4/maxresdefault.jpg');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('2','2','Video','https://youtu.be/EnhS3matIoU');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('3','3','Image','https://img1.hotstarext.com/image/upload/f_auto,t_hcdl/sources/r1/cms/prod/6237/1296237-h-5662015305e4');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('4','4','Video','https://youtu.be/GYeSfq_bj_M');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('5','5','Image','https://upload.wikimedia.org/wikipedia/en/c/c4/%2796_film_poster.jpg');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('6','6','Video','https://youtu.be/jnBZboK17_A');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('7','7','Image','https://upload.wikimedia.org/wikipedia/en/5/53/Master_2021_poster.jpg');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('8','8','Video','https://youtu.be/6uFSJLQA_jA');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('9','9','Image','https://m.media-amazon.com/images/M/MV5BM2I0OGFlMjQtZDlkMy00YzMzLWJmZGUtNzc3ZDc4YTAyOGM3XkEyXkFqcGdeQXVyMTA5MjQ4MDg4._V1_FMjpg_UX1000_.jpg');
INSERT INTO `Media_Table`(ID,Movie_ID,Type,URL) VALUES('10','10','Video','https://youtu.be/6YnVOsmfBQU');


//---------------------------------------------------------------------------CREATING USER TABLE

CREATE TABLE `User_Table`(ID SERIAL PRIMARY KEY,USER VARCHAR(255));


//------------------------------------------------------------------------INSERING DATA INTO USER TABLE

INSERT INTO `User_Table`(ID,UserName) VALUES('1','Lokesh Kanagaraj');
INSERT INTO `User_Table`(ID,UserName) VALUES('2','Vetrimaaran');
INSERT INTO `User_Table`(ID,UserName) VALUES('3','Karthik Subburaj');
INSERT INTO `User_Table`(ID,UserName) VALUES('4','H. Vinoth');
INSERT INTO `User_Table`(ID,UserName) VALUES('5','Pa. Ranjith');
INSERT INTO `User_Table`(ID,UserName) VALUES('6','ManiRatnam');
INSERT INTO `User_Table`(ID,UserName) VALUES('7','Shankar');
INSERT INTO `User_Table`(ID,UserName) VALUES('8','K.S. Ravikumar');
INSERT INTO `User_Table`(ID,UserName) VALUES('9','Vikraman');
INSERT INTO `User_Table`(ID,UserName) VALUES('10','Balumahendra');
INSERT INTO `User_Table`(ID,UserName) VALUES('12','Myskkin');
INSERT INTO `User_Table`(ID,UserName) VALUES('13','Ram');
INSERT INTO `User_Table`(ID,UserName) VALUES('14','Gautam Vasudev Menon');
INSERT INTO `User_Table`(ID,UserName) VALUES('15','Thiagarajan Kumararaja');



//----------------------------------------------------------------------------CREATING REVIEW TABLE

CREATE TABLE `Review`(ID SERIAL PRIMARY KEY,User_ID INTEGER(255) REFERENCES usertable(ID), Movie_ID INTEGER(255) REFERENCES movietable(ID),Rating INTEGER(255), Review VARCHAR(255));


//-------------------------------------------------------------------------INSERING DATA INTO REVIEW TABLE

INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('1','1','1','5','Waiting for witnessing the negative shade of THALAPATHY');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('2','2','2','5','Pride of Tamil Industry');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('3','3','3','5','Seeing aandavar on his swag after a long gap was literally No words!!');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('4','4','4','4','Another Wonderful Execution from Vetrimaaran');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('5','5','5','5','Highly reletable journey which takes us back to school life and love');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('6','6','6','3','Expected More than this, but it's okay to witness THALA after a break');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('7','7','7','4','Unexpected combo THALAPATHY vs VJS, both of them made justice to the film');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('8','8','8','3','Best Horror film after so many days, asusual kavin on his style!');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('9','9','9','4','Full fun guaranteed, SK on diff style was another plus');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('10','10','10','4','Bestest Sci-Fi ever made in tamil and Indian Cinema');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('11','11','9','2','Was okay that's it');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('12','12','8','5','Unexpected climax and special credits for Kavin');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('13','13','7','4','Superb execution with balanced script');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('14','14','6','2','expectation was high, maybe that's what made this movie less enjoyable one');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('15','15','5','5','School love was always Outstanding one');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('16','14','4','4','Vetri just did justice to his fans, soori's another dimension was unbelievable!');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('17','13','3','5','Made our industry worthier after the flops of huge star films');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('18','12','2','3','Maybe the script was slow I guess');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('19','11','1','4','Waiting was terrifying, maybe the highest gross film in india is loading');
INSERT INTO `Review`(ID,User_ID,Movie_ID,Rating,Review) VALUES('20','10','10','4','Love and comedy worked out well for vishnu vishal, enjoyable one');


//-------------------------------------------------------------------------------CREATING ARTIST TABLE

CREATE TABLE `Artist_Table`(ID SERIAL PRIMARY KEY,NAME VARCHAR(255),SKILLS VARCHAR(255));


//---------------------------------------------------------------------------INSERING DATA INTO ARTIST TABLE

INSERT INTO `artist_table`(ID,Name) VALUES('1','Vijay');
INSERT INTO `artist_table`(ID,Name) VALUES('2','Ajith');
INSERT INTO `artist_table`(ID,Name) VALUES('3','Kamal');
INSERT INTO `artist_table`(ID,Name) VALUES('4','Vikram');
INSERT INTO `artist_table`(ID,Name) VALUES('5','Karthi');
INSERT INTO `artist_table`(ID,Name) VALUES('6','Siva Karthikeyan');
INSERT INTO `artist_table`(ID,Name) VALUES('7','Vijay Sethupathi');


//-------------------------------------------------------------------------------CREATING SKILLS TABLE

CREATE TABLE `Skills_Table`(ID SERIAL PRIMARY KEY,Artist_ID INTEGER(255) REFERENCES artisttable(ID),SKILLS VARCHAR(255))


//----------------------------------------------------------------------------INSERING DATA INTO SKILLS TABLE

INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('1','1','Acting,Dancing,Stunt,Singing');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('5','2','Acting,Stunt');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('7','3','Acting,Stunt,Direction,Singing,Lyricist');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('9','4','Singing,Acting,Stunt');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('12','5','Dancing,Singing,Acting');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('15','6','Dancing,Singing,Acting,Lyricist');
INSERT INTO `skills_table`(ID,Artist_ID,Skills) VALUES('18','7','Acting,Singing');

//-------------------------------------------------------------------------------CREATING ROLES TABLE

CREATE TABLE `Roles`(ID SERIAL PRIMARY KEY,Artist_ID INTEGER(255) REFERENCES artisttable(ID), Movie_ID INTEGER(255) REFERENCES movietable(ID),Roles VARCHAR(255));


//----------------------------------------------------------------------------INSERING DATA INTO ROLES TABLE

INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('1','1','1','Leo');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('2','1','7','JD');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('5','2','6','DarkDevil')
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('6','2','6','Micheal Jackson')
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('7','3','3','Karnan');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('8','3','3','Agent Vikram');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('9','3','3','Ghost');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('10','4','2','Aadhithya Karikalan');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('11','5','2','Vandhiyathevan');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('12','5','1','Dilli');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('12','5','3','Dilli');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('13','6','9','Varun');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('13','6','9','Doctor');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('15','7','3','Sandhanam');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('16','7','4','Vaathiyar');
INSERT INTO `Roles`(ID,Artist_ID,Movie_ID,Roles) VALUES('16','7','7','Bhavani';
