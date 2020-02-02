go
create procedure assignJob (@roomID smallint,@staffID smallint,@result bit output)
as
begin
declare @roomHotelID UNIQUEIDENTIFIER = (select HotelID from Room where RoomID = @roomID);
declare @staffHotelID UNIQUEIDENTIFIER = (select HotelID from Staff where StaffID = @staffID);
if(@roomHotelID = @staffHotelID)
begin
	INSERT INTO JobAssignment values(@roomID,@staffID);
	set @result = 1;
end
else
begin
	set @result = 0;
end

end



go
create procedure fireStaff (@staffID smallint)
as
begin
UPDATE Staff set staffStatus = 0 where StaffID = @staffID;
end



go
create procedure getAvailableRoomsByHotelName (@hotelName varchar(20))
as
begin
select HotelName, RoomID,RoomNumber,RoomFloor from Room r inner join Hotel h on
r.HotelID=h.HotelID where (h.HotelName=@hotelName and r.RoomStatus=0)
end



go
create procedure getCustomerInfoByHotelName (@hotelName varchar(20))
as
begin
select c.CustomerID, FirstName+' '+LastName as 'FullName' ,IdentifacitonNumber,Gender,Adress,City,ZipCode,Country,PhoneNumber,MailAdress from Customer c inner join Hotel h on
c.HotelID =h.HotelID inner join Customer_Person cp on
c.CustomerID=cp.CustomerID inner join PersonalInfo pinf on
cp.PersonInfoID=pinf.PersonalInfoID where h.HotelName =@hotelName;
end


go
create procedure getAgentInfoByHotelName (@hotelName varchar(20))
as
begin
select a.AgentCustomerID, HotelName, CountOfCustomer, AgentName,AgentWebsite, FirstName+' '+LastName as 'FullName' ,IdentifacitonNumber,Gender,Adress,City,ZipCode,Country,PhoneNumber,MailAdress from Agent a inner join Customer c on
a.AgentCustomerID = c.CustomerID inner join Hotel h on
c.HotelID =h.HotelID inner join Customer_Person cp on
c.CustomerID=cp.CustomerID inner join PersonalInfo pinf on
cp.PersonInfoID=pinf.PersonalInfoID where h.HotelName =@hotelName;
end


go
create procedure getGuestInfoByHotelName (@hotelName varchar(20))
as
begin
select g.GuestCustomerID, HotelName, CountOfCustomer,BookingWay, FirstName+' '+LastName as 'FullName' ,IdentifacitonNumber,Gender,Adress,City,ZipCode,Country,PhoneNumber,MailAdress from Guest g inner join Customer c on
g.GuestCustomerID = c.CustomerID inner join Hotel h on
c.HotelID =h.HotelID inner join Customer_Person cp on
c.CustomerID=cp.CustomerID inner join PersonalInfo pinf on
cp.PersonInfoID=pinf.PersonalInfoID where h.HotelName =@hotelName;
end

go
create procedure getRoomIdByRoomNumber (@hotelName varchar(20),@roomNumber smallint)
as
begin
select RoomID from Room r inner join Hotel h on
r.HotelID = h.HotelID where(h.HotelName=@hotelName and r.RoomNumber=@roomNumber);
end

go
create procedure getBookingsByHotel (@hotelName varchar(20))
as
begin
select b.BookingID, HotelName, RoomNumber, DateFrom, DateTo, TotalDay,RoomPrice  from Booking b inner join Hotel h
on b.HotelID = h.HotelID inner join  BookedRoom br on
b.BookingID = br.BookingID inner join Room r on
br.RoomID = r.RoomID inner join RoomType rt on
r.RoomTypeID = rt.RoomTypeID where HotelName=@hotelName order by b.BookingID,RoomNumber;
end


go
create procedure getAllRoomsByHotel (@hotelName varchar(20))
as
begin
select RoomID ,HotelName, RoomNumber, RoomFloor, RoomTypeName ,RoomDescription,RoomStatus from Room r inner join RoomType rt on
r.RoomTypeID=rt.RoomTypeID inner join Hotel h on
r.HotelID = h.HotelID where h.HotelName=@hotelName order by RoomNumber
end



go
create procedure getStaffInfoByHotel (@hotelName varchar(20))
as
begin
select StaffID ,HotelName, PositionName, FirstName + ' ' + LastName as 'FullName', IdentifacitonNumber, Gender ,City ,Country,PhoneNumber,StaffStatus from Staff s inner join PersonalInfo pinf on
s.StaffPersonalInfoID = pinf.PersonalInfoID inner join Position p on
s.StaffPositionID = p.PositionID inner join hotel h on 
s.HotelID = h.HotelID where HotelName = @hotelName order by PositionName
end

go
create procedure getactiveStaffInfoByHotel (@hotelName varchar(20))
as
begin
select StaffID ,HotelName, PositionName, FirstName + ' ' + LastName as 'FullName', IdentifacitonNumber, Gender ,City ,Country,PhoneNumber,StaffStatus from Staff s inner join PersonalInfo pinf on
s.StaffPersonalInfoID = pinf.PersonalInfoID inner join Position p on
s.StaffPositionID = p.PositionID inner join hotel h on 
s.HotelID = h.HotelID where (HotelName = @hotelName and staffStatus=1) order by PositionName
end


go
create procedure getRestaurantsByHotel (@hotelName varchar(20))
as
begin
select  RestaurantID,HotelName, RestaurantType, RestaurantCapacity from Restaurant r inner join Hotel h on
r.HotelID = h.HotelID where h.HotelName = @hotelName order by RestaurantID
end

go
create procedure getAssignmentsByHotel (@hotelName varchar(20))
as
begin
select ja.StaffID,ja.RoomID, RoomNumber, FirstName + ' ' + LastName as 'StaffName' , PositionName   from JobAssignment ja inner join Staff s on 
ja.StaffID=s.StaffID inner join Room r on
ja.RoomID=r.RoomID inner join Position p on
s.StaffPositionID = p.PositionID inner join PersonalInfo pinf on
s.StaffPersonalInfoID=pinf.PersonalInfoID inner join Hotel h on 
s.HotelID=h.HotelID where HotelName =@hotelName
end 




go
create procedure getBillsByHotel (@hotelName varchar(20))
as
begin
select BillNo ,HotelName,p.BookingID, BillDescription, PaymentType, BillAmount from Bill b inner join Payment p on
b.PaymentID = p.PaymentID inner join Booking bk on
p.BookingID = bk.BookingID inner join Hotel h on
bk.HotelID = h.HotelID where HotelName = @hotelName order by BillNo
end


