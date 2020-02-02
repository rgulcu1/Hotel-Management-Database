
 CREATE TABLE Hotel(
HotelID  UNIQUEIDENTIFIER  NOT  NULL,
HotelName varchar(20),
HotelAdress varchar(50),
HotelCity varchar(20),
HotelCountry varchar(15),
HotelZipCode char(5) ,
HotelPhoneNumber char(11) UNIQUE,
HotelFaxNumber char(11) UNIQUE,
HotelEmailAdress varchar(30) UNIQUE,
HotelWebsiteAdress varchar(30) UNIQUE default 'www.myhotel.com',

CONSTRAINT Hotel_PK PRIMARY KEY(HotelID),
CONSTRAINT checkHotelMail CHECK (HotelEmailAdress LIKE '%__@__%'));


CREATE TABLE Restaurant(
RestaurantID  UNIQUEIDENTIFIER NOT NULL default newid(),
HotelID UNIQUEIDENTIFIER NOT NULL,
RestaurantType varchar(10),
RestaurantCapacity smallint,

CONSTRAINT Restaurant_PK PRIMARY KEY(RestaurantID),
CONSTRAINT Restaurant_FK FOREIGN KEY(HotelID) REFERENCES Hotel(HotelID),
CONSTRAINT checkRestaurantType CHECK (RestaurantType IN('Steak','Chinese','Turkish','Fast Food','Mexican','Italian','Fish'))); 




CREATE TABLE RoomType(
RoomTypeID  UNIQUEIDENTIFIER NOT NULL,
RoomTypeName varchar(20),
RoomDescription varchar(100),

CONSTRAINT RoomType_PK PRIMARY KEY(RoomTypeID),
CONSTRAINT checkRoomType CHECK (RoomTypeName IN('Single','Double','Triple','Quad','Queen','King','Twin','Double-double','Studio','Suite')));



CREATE TABLE Room(
RoomID smallint IDENTITY(2000,1) NOT NULL,
HotelID UNIQUEIDENTIFIER NOT NULL,
RoomTypeID UNIQUEIDENTIFIER NOT NULL,
RoomNumber smallint,
RoomFloor tinyint,
RoomStatus bit,

CONSTRAINT Room_PK PRIMARY KEY(RoomID),
CONSTRAINT Room_FK1 FOREIGN KEY(HotelID) REFERENCES Hotel(HotelID),
CONSTRAINT Room_FK2 FOREIGN KEY(RoomTypeID) REFERENCES RoomType(RoomTypeID),
CONSTRAINT checkFloor CHECK (RoomFloor >=0 AND RoomFloor <40));




CREATE TABLE Position(
PositionID UNIQUEIDENTIFIER NOT NULL,
PositionName varchar(15) ,
PositionDescription varchar(100),

CONSTRAINT Position_PK PRIMARY KEY(PositionID));



CREATE TABLE PersonalInfo(
PersonalInfoID smallint  IDENTITY(3000,1) NOT NULL,
FirstName varchar(15),
LastName varchar(15),
IdentifacitonNumber char(11) UNIQUE,
Gender varchar(6),
Adress varchar(50),
City varchar(30),
ZipCode char(5),
Country varchar(30),
PhoneNumber char(14) UNIQUE,
MailAdress varchar(40) UNIQUE,

CONSTRAINT PersonelInfo_PK PRIMARY KEY(PersonalInfoID),
CONSTRAINT checkPersonelMail CHECK (MailAdress LIKE '%__@__%'),
CONSTRAINT checkGender CHECK (Gender IN('Male','Female')));




CREATE TABLE Staff(
StaffID smallint  IDENTITY(500,1) NOT NULL,
HotelID  UNIQUEIDENTIFIER NOT NULL,
StaffPersonalInfoID smallint NOT NULL,
StaffPositionID UNIQUEIDENTIFIER NOT NULL,
staffStatus bit default 1,

CONSTRAINT Staff_PK PRIMARY KEY(StaffID),
CONSTRAINT Staff_FK1 FOREIGN KEY(HotelID) REFERENCES Hotel(HotelID),
CONSTRAINT Staff_FK2 FOREIGN KEY(StaffPersonalInfoID) REFERENCES PersonalInfo(PersonalInfoID),
CONSTRAINT Staff_FK3 FOREIGN KEY(StaffPositionID) REFERENCES Position(PositionID));




CREATE TABLE JobAssignment(
RoomID smallint NOT NULL,
StaffID smallint NOT NULL,

CONSTRAINT JobAssignment_PK PRIMARY KEY(RoomID,StaffID),
CONSTRAINT JobAssignment_FK1 FOREIGN KEY(RoomID) REFERENCES Room(RoomID),
CONSTRAINT JobAssignment_FK2 FOREIGN KEY(StaffID) REFERENCES Staff(StaffID));



CREATE TABLE Customer(
CustomerID UNIQUEIDENTIFIER NOT NULL,
HotelID UNIQUEIDENTIFIER NOT NULL,
CountOfCustomer tinyint,

CONSTRAINT Customer_PK PRIMARY KEY(CustomerID),
CONSTRAINT Customer_FK1 FOREIGN KEY(HotelID) REFERENCES Hotel(HotelID));



CREATE TABLE Guest(
GuestCustomerID UNIQUEIDENTIFIER NOT NULL,
BookingWay varchar(15),

CONSTRAINT Guest_PK PRIMARY KEY(GuestCustomerID),
CONSTRAINT Guest_FK FOREIGN KEY(GuestCustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT bookingWayCheck CHECK(BookingWay IN('Web Site','Phone','Mobile App')));



CREATE TABLE Agent(
AgentCustomerID UNIQUEIDENTIFIER NOT NULL,
AgentName varchar(20),
AgentWebsite varchar(30),

CONSTRAINT Agent_PK PRIMARY KEY(AgentCustomerID),
CONSTRAINT Agent_FK FOREIGN KEY(AgentCustomerID) REFERENCES Customer(CustomerID));


CREATE TABLE Customer_Person(
CustomerID UNIQUEIDENTIFIER NOT NULL,
PersonInfoID smallint NOT NULL,

CONSTRAINT Person_PK PRIMARY KEY(CustomerID,PersonInfoID),
CONSTRAINT Person_FK1 FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
CONSTRAINT Person_FK2 FOREIGN KEY(PersonInfoID) REFERENCES PersonalInfo(PersonalInfoID));


CREATE TABLE Booking(
BookingID UNIQUEIDENTIFIER NOT NULL,
HotelID UNIQUEIDENTIFIER NOT NULL,
CustomerID UNIQUEIDENTIFIER NOT NULL,
DateFrom date,
DateTo date,
BookedRoomCount tinyint,
BookingDescription varchar(100),
TotalDay as (Datediff(Day,DateFrom,DateTo)),

CONSTRAINT Booking_PK PRIMARY KEY(BookingID),
CONSTRAINT Booking_FK1 FOREIGN KEY(HotelID) REFERENCES Hotel(HotelID),
CONSTRAINT Booking_FK2 FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID));

 

CREATE TABLE BookedRoom(
BookingID UNIQUEIDENTIFIER NOT NULL,
RoomID smallint NOT NULL,
RoomPrice smallmoney,

CONSTRAINT BookedRoom_PK PRIMARY KEY(BookingID,RoomID),
CONSTRAINT BookedRoom_FK1 FOREIGN KEY(BookingID) REFERENCES Booking(BookingID),
CONSTRAINT BookedRoom_FK2 FOREIGN KEY(RoomID) REFERENCES Room(RoomID));
--CHECK((select RoomStatus from Room where Room.RoomID = RoomID) = 0)


CREATE TABLE Payment(
PaymentID UNIQUEIDENTIFIER NOT NULL,
BookingID UNIQUEIDENTIFIER NOT NULL,
PaymentType varchar(15) CHECK(PaymentType IN('Credit Card','Cash','PayPal','Bank Transfer')),

CONSTRAINT Payment_PK PRIMARY KEY(PaymentID),
CONSTRAINT Payment_FK FOREIGN KEY(BookingID) REFERENCES Booking(BookingID));

CREATE TABLE Bill(
BillNo UNIQUEIDENTIFIER NOT NULL default newID(),
PaymentID UNIQUEIDENTIFIER NOT NULL,
BillDescription varchar(50),
BillAmount smallmoney,

CONSTRAINT Bill_PK PRIMARY KEY(BillNo,PaymentID),
CONSTRAINT Bill_FK FOREIGN KEY(PaymentID) REFERENCES Payment(PaymentID));


GO
CREATE TRIGGER calculatePrice
ON Bill
AFTER INSERT
AS
BEGIN
	declare @bookingID UNIQUEIDENTIFIER = (select BookingID from Payment where PaymentID = (select PaymentID FROM inserted)); 
	declare @totalDay int = (select TotalDay from Booking where BookingID = @bookingID);
	declare @totalRoomPrice smallmoney = (select sum(RoomPrice) from BookedRoom where BookedRoom.BookingID = @bookingID);
	declare @totalPrice smallmoney = @totalRoomPrice * @totalDay;
	UPDATE Bill set BillAmount=@totalPrice where BillNo=(select BillNo from inserted);
END
GO

GO
CREATE TRIGGER fillRomm
ON BookedRoom
AFTER INSERT
AS
BEGIN
	UPDATE Room set RoomStatus=1 where RoomID = (select RoomID from inserted);
END
GO

CREATE TRIGGER freeRoom
ON BookedRoom
AFTER DELETE
AS
BEGIN
	UPDATE Room set RoomStatus=0 where RoomID = (select RoomID from deleted);
END
GO





