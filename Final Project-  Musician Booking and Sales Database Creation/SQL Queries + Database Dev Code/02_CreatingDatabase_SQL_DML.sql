--Alter performances table column name (due to error in initital entry/execution)

alter table dbo.Performances
	ADD TYPE varchar(20);
--Insert data---

--insert data into Artist table--
insert into artist (FirstName,LastName,Genre,Label) values ('Billy','Power','Punk','Tooth & Nail Records');

insert into artist (FirstName,LastName,Genre,Label) values ('Ed','Power','Punk','Tooth & Nail Records');

insert into artist (FirstName,LastName,Genre,Label) values ('Stephen','Keech','Metalcore','Solid State');

insert into artist (FirstName,LastName,Genre,Label) values ('Jimmy','Ryan','Christian metal','Solid State');

insert into artist (FirstName,LastName,Genre,Label) values ('Nicholas','Moore','Post-hardcore','InVogue');

insert into artist (FirstName,LastName,Genre,Label) values('Anthony','Damschroder','Alternative metal','Rise');

insert into artist (FirstName,LastName,Genre,Label) values ('Larry','Farkas','Christian metal','Vengeance Rising');

insert into artist (FirstName,LastName,Genre,Label) values ('Eli','Prinsen','Christian metal','Intense');

insert into artist (FirstName,LastName,Genre,Label) values ('Bruce','Swift','heavy metal','Intense');

insert into artist (FirstName,LastName,Genre,Label) values ('Gleen','Mancaruso','christian rock','Joshua');

--query check on artist table-- 

select * from artist;

--Insert into website table 
insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/billypower','ToothNail Banner','9123412345','He is member of Blenderhead band','billy.jpg','2');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/edcari','ToothNail Banner','7208912345','He is guitar player of Blenderhead band','edi.jpg','3');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/stephen','SolidState Banner','7123412345','He is member of HASTE THE DAY','stephen.jpg','4');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/jimmy','SolidState Banner','9468372567','He is member of HASTE THE DAY','jimmy.jpg','5');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('www.facebook.com/beforetheireyesband','Before there Eyes Banner','9198972567','He is member of Before there eyes post hardcore band','moore.jpg','6');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/anthony','Eyes Banner','7298972567','He is member of Before there eyes post hardcore band','anthony.jpg','7');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/larry','DieBanner','7298971234','He is member of Die happy band','larry.jpg','8');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/eli','sacredWarriorBanner','9256781234','He is member of Sacred Warrior band','eli.jpg','9');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/bruce','sacredWarriorBanner','5676781234','He is member of Sacred Warrior band','bruce.jpg','10');

insert into website_table(Browser_URL,PageBanner,Contact_Num,ArtistBio,ArtistImg,ArtistID) values 
	('http://www.mymusics.com/gleen','DieBanner','7256781234','He is member of Die happy band','gleen.jpg','1');


--query the website table 

select * from website_table


--Insert data into Product table 
insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('T-Shirt','50','10','http://www.mymusics.com/stephen');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('T-Shirt','350','5','http://www.mymusics.com/larry');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('Headband','100','15','http://www.mymusics.com/larry');

insert into Product(ProductName,ProductPrice,Units,Browser_URL)values ('Headband','150','10','http://www.mymusics.com/billypower');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('Poster','25','100','http://www.mymusics.com/billypower');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('Poster','10','1000','http://www.mymusics.com/gleen');

insert into Product(ProductName,ProductPrice,Units,Browser_URL)values ('Headband','50','100','http://www.mymusics.com/gleen');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('T-Shirt','200','10','http://www.mymusics.com/gleen');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('T-Shirt','250','100','http://www.mymusics.com/anthony');

insert into Product(ProductName,ProductPrice,Units,Browser_URL) values ('T-Shirt','50','100','http://www.mymusics.com/eli');

--query product table 

select * from Product


--Insert data into performances table 

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Vocals','2','Ninety Pound Wuss','America','100','Enjoy Tooth and Nail songs by Billy');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Bass','2','Roadside Monument','America','1000','Enjoy Tooth and Nail songs by Billy');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Guitar','3',' Ninety Pound Wuss','New York','500','Enjoy Tooth and Nail songs by Carrigan');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('lead-vocals','4','The Anti–Mother Tour','Indianapolis','500','Enjoy Haste the days songs by Keech');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('clean-vocals','5','Napalm & Noise Tour','Indianapolis','700','Enjoy Haste the days songs by Jimmy');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('lead singer','6','Spring Break Your Heart Tour','California','2000','Enjoy BEFORE THE EYES songs by Nicholas Moore');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Drumer','7','Shipwreck in the sand Tour','New York','1000','Enjoy BEFORE THE EYES songs by Anthony Damschroder');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Drum and Guitar','7','One Moment Management Tour','Oceana','3000','Enjoy BEFORE THE EYES songs by Anthony Damschroder');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Guitarist','4','Saints and Sinners Tour','Johannesburg','1500','Enjoy Haste the day songs by Keech');

insert into Performances(TYPE,ArtistID,Name,Location,Price,Rules) values ('Keyboard and vocal','5','Scream the Prayer Tour','Cape town','2500','Enjoy Haste the day songs by Jimmy');

--Query Performance table 

select * from Performances


--Insert data into MusicTitle table
insert into MusicTitles(MusicName) values ('Prime Candidate for Burnout');

insert into MusicTitles(MusicName) values ('Burning Bridges');

insert into MusicTitles(MusicName) values ('When Everything Falls');

insert into MusicTitles(MusicName) values ('Pressure the Hinges');

insert into MusicTitles(MusicName) values ('Its a Punk Rock Christmas');

insert into MusicTitles(MusicName) values ('The Dawn of My Death');

insert into MusicTitles(MusicName) values ('Untouchable');

insert into MusicTitles(MusicName) values ('The Hi-Fi Horizon');

insert into MusicTitles(MusicName) values ('Rebellion');

insert into MusicTitles(MusicName) values ('Visions of Hell');

--query music titles 
select * from MusicTitles


--insert data into music sales 
insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('2','Tooth & Nail Records','1','200.50',('19940117'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('4',' Solid State Records','2','500',('20040527'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('4',' Solid State Records','3','600',('20050610'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('5',' Solid State Records','4','250',('20070223'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('5',' Solid State Records','5','750',('20081127'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('6','InVogue Records','6','750',('20081028'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('7','InVogue Records','7','1050',('20100316'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('7','InVogue Records','8','1500',('20121112'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('8','Master Command Records','9','1000',('20011207'));

insert into MusicSales(ArtistID,PUB_NAME,TITLEID,PRICE,PUB_DATE) values ('9','Die Happy Records','10','400',('20000807'));

--query music sales table

select * from MusicSales


--Queries for data manipulation

/* Select all columns and all rows from one table */
select * from artist;

/* Select 5 columns and all rows from one table */

	select ArtistID, FirstName, LastName, Genre, Label
	from artist;



/*Create views*/

--Create view called BuyPoster 

Create view BuyPoster_view as 
	select * 
	from dbo.Product
	where ProductName='Poster';

--Query View BuyPoster

Select 
	* from dbo.Product
	where ProductName='Poster'; 


--Create Performers_View to see the name and information of performers 
create view  Performers_view as
	 select p.Name,p.Location,p.Price,a.FirstName,a.LastName,a.artistID
	 from Performances p inner join artist a
	 on p.artistID=a.artistID;

--Query performers view 
Select
	p.Name,p.Location,p.Price,a.FirstName,a.LastName,a.artistID
	from Performances p inner join artist a
	on p.artistID=a.artistID
	order by artistID asc; 


/*Need to update the data */

--query before the update 
select * from MusicSales;

--update price by increasing 5* price already set for music sales 
	update musicsales set price=price+5*price;
	select * from MusicSales;
