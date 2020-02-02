CREATE VIEW showBookings as
select top 100 percent  b.BookingID, HotelName, RoomNumber, DateFrom, DateTo, TotalDay,RoomPrice  from Booking b inner join Hotel h
on b.HotelID = h.HotelID inner join  BookedRoom br on
b.BookingID = br.BookingID inner join Room r on
br.RoomID = r.RoomID inner join RoomType rt on
r.RoomTypeID = rt.RoomTypeID order by b.BookingID,RoomNumber;
go



CREATE VIEW showRooms as
select top 100 percent  HotelName,RoomNumber,RoomFloor,RoomTypeName,RoomStatus from Room r inner join Hotel h
on r.HotelID = h.HotelID inner join RoomType rt on
r.RoomTypeID = rt.RoomTypeID order by HotelName
go

CREATE VIEW showStaffs as
select top 100 percent HotelName , PositionName as 'Staff Poisiton' , FirstName +' '+ LastName as 'Staff Full Name' , Gender, PhoneNumber from Staff s inner join Hotel h on 
s.HotelID = h.HotelID inner join Position p on
s.StaffPositionID = p.PositionID inner join PersonalInfo pinf on
s.StaffPersonalInfoID = pinf.PersonalInfoID order by HotelName,PositionName
