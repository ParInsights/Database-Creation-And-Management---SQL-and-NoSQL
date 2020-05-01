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

