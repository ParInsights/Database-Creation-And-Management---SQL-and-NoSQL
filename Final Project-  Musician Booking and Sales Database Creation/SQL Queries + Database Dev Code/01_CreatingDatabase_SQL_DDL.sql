--Create table artist
create table artist
(
	ArtistID int identity,
	FirstName VARCHAR (20) not null,
	LastName VARCHAR (20) not null,
	Genre VARCHAR (20) not null,
	Label VARCHAR (20) not null,
	--Create constraint on table artist
	constraint PK_artist PRIMARY KEY(ArtistID)
)
--End creating table for artist

--Create table for website

create table website_table
 (
 Browser_URL VARCHAR(40),
 PageBanner VARCHAR (25),
 Contact_Num VARCHAR(15),
 ArtistBio VARCHAR(100),
 ArtistImg VARCHAR(15),
 ArtistID int NOT NULL,
 	--Create constraint on table artist
 constraint PK_BrowserURL primary key(Browser_URL),
 constraint FKArtistID  foreign key (ArtistID) references artist(ArtistID)
 )
 --end creating table for website 


--create table for product 
 create table Product
(
	ProductID int identity,
	ProductName VARCHAR(100),
	ProductPrice DECIMAL(10,2),
	Units int,
	Browser_URL VARCHAR(40) NOT NULL,
--Create Constraints on table product
	constraint PK_Product primary key(ProductID),
	constraint FK1_Product  foreign key (Browser_URL) references website_table(Browser_URL)
)

--end creating table for product

--Create Table for Performances

create table Performances
 (
	 PerformanceID int identity,
	 ArtistID int NOT NULL,
	 Name VARCHAR(40),
	 Location VARCHAR(40),
	 Price DECIMAL(7,2),
	 Rules VARCHAR(400),
	 --Create contraints for table performances 
	 constraint PK_Performances primary key(PerformanceID),
	 constraint FKPerformerID foreign key (ArtistID) references artist(ArtistID)
);
--End Creating table performance 


--Create table MusicTitles

create table MusicTitles
 (
 	TitleID int identity,
 	MusicName VARCHAR(40),
	--Create constraints for table musictitles 
 	constraint PK_MusicTitles primary key(TitleID)
 );
 --End creating table Music Titles 


 --Create table Musicsales 
 create table MusicSales
 (
	 SaleID int identity,
	 ArtistID int NOT NULL,
	 Pub_Name VARCHAR(40),
	 TitleID int NOT NULL,
	 Price DECIMAL(7,2),
	 Pub_Date DATE,
	--create constraints music sales 
	 constraint PK_MusicSales primary key(SaleID),
	 constraint FK1_MusicSales foreign key (ArtistID) references artist(ArtistID),
	 constraint FK2_MusicSales foreign key (TitleID) references MusicTitles(TitleID)
);

--end creating Music Sales
