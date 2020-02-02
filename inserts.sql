DECLARE @hotel1 UNIQUEIDENTIFIER = newid(),
		@hotel2 UNIQUEIDENTIFIER = newid(),
		@hotel3 UNIQUEIDENTIFIER = newid();

DECLARE @single UNIQUEIDENTIFIER = newid(),
		@double UNIQUEIDENTIFIER = newid(),
		@triple UNIQUEIDENTIFIER = newid(),
		@quad UNIQUEIDENTIFIER = newid(),
		@queen UNIQUEIDENTIFIER = newid(),
		@king UNIQUEIDENTIFIER = newid(),
		@twin UNIQUEIDENTIFIER = newid(),
		@doubleDouble UNIQUEIDENTIFIER = newid(),
		@studio UNIQUEIDENTIFIER = newid(),
		@suite UNIQUEIDENTIFIER = newid();

DECLARE @houseKeeper UNIQUEIDENTIFIER = newid(),
		@superVisor UNIQUEIDENTIFIER = newid(),
		@bellBoy UNIQUEIDENTIFIER = newid(),
		@security UNIQUEIDENTIFIER = newid(),
		@valet UNIQUEIDENTIFIER = newid(),
		@waiter UNIQUEIDENTIFIER = newid(),
		@chef UNIQUEIDENTIFIER = newid(),
		@manager UNIQUEIDENTIFIER = newid(),
		@receptionist UNIQUEIDENTIFIER = newid(),
		@barman UNIQUEIDENTIFIER = newid();


DECLARE @customer1 UNIQUEIDENTIFIER = newid(),
		@customer2 UNIQUEIDENTIFIER = newid(),
		@customer3 UNIQUEIDENTIFIER = newid(),
		@customer4 UNIQUEIDENTIFIER = newid(),
		@customer5 UNIQUEIDENTIFIER = newid(),
		@customer6 UNIQUEIDENTIFIER = newid(),
		@customer7 UNIQUEIDENTIFIER = newid(),
		@customer8 UNIQUEIDENTIFIER = newid(),
		@customer9 UNIQUEIDENTIFIER = newid(),
		@customer10 UNIQUEIDENTIFIER = newid();

DECLARE @booking1 UNIQUEIDENTIFIER = newid(),
		@booking2 UNIQUEIDENTIFIER = newid(),
		@booking3 UNIQUEIDENTIFIER = newid(),
		@booking4 UNIQUEIDENTIFIER = newid(),
		@booking5 UNIQUEIDENTIFIER = newid(),
		@booking6 UNIQUEIDENTIFIER = newid(),
		@booking7 UNIQUEIDENTIFIER = newid(),
		@booking8 UNIQUEIDENTIFIER = newid(),
		@booking9 UNIQUEIDENTIFIER = newid(),
		@booking10 UNIQUEIDENTIFIER = newid();

DECLARE @payment1 UNIQUEIDENTIFIER = newid(),
		@payment2 UNIQUEIDENTIFIER = newid(),
		@payment3 UNIQUEIDENTIFIER = newid(),
		@payment4 UNIQUEIDENTIFIER = newid(),
		@payment5 UNIQUEIDENTIFIER = newid(),
		@payment6 UNIQUEIDENTIFIER = newid(),
		@payment7 UNIQUEIDENTIFIER = newid(),
		@payment8 UNIQUEIDENTIFIER = newid(),
		@payment9 UNIQUEIDENTIFIER = newid(),
		@payment10 UNIQUEIDENTIFIER = newid();

		


--hotel insert
INSERT INTO Hotel values(@hotel1,'Porto Bello','Akdeniz Bulvarý No 12 Konyaaltý','Antalya','Turkey','07070','02422594041','02425418765','portobello@gmail.com','www.portobello.com');
INSERT INTO Hotel values(@hotel2,'Latayna Palm Hotel','Meydankavaðý Caddesi No 21','Antalya','Turkey','07200','02423120136','02423125689','lataynapalm@gmail.com','www.latanyapalm.com');
INSERT INTO Hotel values(@hotel3,'Voyage Bodrum','Bardakçý Koyu Bodrum','Muðla','Turkey','48400','02523164443','02523464445','voyagebodrum@gmail.com','www.voyagebodrum.com');

--Restaurant insert
INSERT INTO Restaurant values(default,@hotel1,'Mexican',100);
INSERT INTO Restaurant values(default,@hotel1,'Turkish',300);
INSERT INTO Restaurant values(default,@hotel1,'Chinese',150);
INSERT INTO Restaurant values(default,@hotel2,'Fast Food',200);
INSERT INTO Restaurant values(default,@hotel2,'Chinese',180);
INSERT INTO Restaurant values(default,@hotel2,'Italian',120);
INSERT INTO Restaurant values(default,@hotel2,'Turkish',300);
INSERT INTO Restaurant values(default,@hotel2,'Steak',150);
INSERT INTO Restaurant values(default,@hotel3,'Italian',150);
INSERT INTO Restaurant values(default,@hotel3,'Mexican',120);
INSERT INTO Restaurant values(default,@hotel3,'Turkish',400);
INSERT INTO Restaurant values(default,@hotel3,'Chinese',200);
INSERT INTO Restaurant values(default,@hotel3,'Steak',350);
INSERT INTO Restaurant values(default,@hotel3,'Fast Food',400);

--insert RomType
INSERT INTO RoomType values(@single,'Single','A room assigned to one person.May have one or more beds');
INSERT INTO RoomType values(@double,'Double','Aroom assigned two people.May have one or more beds');
INSERT INTO RoomType values(@triple,'Triple','A room assigned three pople.May have two or more beds.');
INSERT INTO RoomType values(@quad,'Quad','A room assigned four people.May have two or more beds');
INSERT INTO RoomType values(@queen,'Queen','A room with a queen-sized bed.May be occupied by one ord more people.');
INSERT INTO RoomType values (@king,'King','A room with a king-sized bed.May be occupied by one or more people.');
INSERT INTO RoomType values(@twin,'Twin','A room with two beds.May be occupied by one or more people.');
INSERT INTO RoomType values (@doubleDouble,'Double-double','A room with two double bed..May be occupied by one or more people.');
INSERT INTO RoomType values(@studio,'Studio','A room with a studio bed- acouch the can be converted into bed.May also have an additional bed.');
INSERT INTO RoomType values (@suite,'Suite','A pariour or living room connected to one or more bedrooms');

--Room insert
INSERT INTO Room values(@hotel1,@single,101,1,0);
INSERT INTO Room values(@hotel1,@single,102,1,0);
INSERT INTO Room values(@hotel1,@double,103,1,0);
INSERT INTO Room values(@hotel1,@double,104,1,0);
INSERT INTO Room values(@hotel1,@double,105,1,0);
INSERT INTO Room values(@hotel1,@double,201,2,0);
INSERT INTO Room values(@hotel1,@double,202,2,0);
INSERT INTO Room values(@hotel1,@triple,203,2,0);
INSERT INTO Room values(@hotel1,@triple,204,2,0);
INSERT INTO Room values(@hotel1,@triple,205,2,0);
INSERT INTO Room values(@hotel1,@quad,301,3,0);
INSERT INTO Room values(@hotel1,@queen,302,3,0);
INSERT INTO Room values(@hotel1,@king,303,3,0);
INSERT INTO Room values(@hotel1,@twin,304,3,0);
INSERT INTO Room values(@hotel1,@doubleDouble,305,3,0);
INSERT INTO Room values(@hotel1,@suite,401,4,0);
INSERT INTO Room values(@hotel2,@single,101,1,0);
INSERT INTO Room values(@hotel2,@single,102,1,0);
INSERT INTO Room values(@hotel2,@double,103,1,0);
INSERT INTO Room values(@hotel2,@double,104,1,0);
INSERT INTO Room values(@hotel2,@double,105,1,0);
INSERT INTO Room values(@hotel2,@double,201,2,0);
INSERT INTO Room values(@hotel2,@double,202,2,0);
INSERT INTO Room values(@hotel2,@triple,203,2,0);
INSERT INTO Room values(@hotel2,@triple,204,2,0);
INSERT INTO Room values(@hotel2,@triple,205,2,0);
INSERT INTO Room values(@hotel2,@quad,301,3,0);
INSERT INTO Room values(@hotel2,@queen,302,3,0);
INSERT INTO Room values(@hotel2,@king,303,3,0);
INSERT INTO Room values(@hotel2,@twin,304,3,0);
INSERT INTO Room values(@hotel2,@doubleDouble,305,3,0);
INSERT INTO Room values(@hotel2,@suite,401,4,0);
INSERT INTO Room values(@hotel3,@single,101,1,0);
INSERT INTO Room values(@hotel3,@single,102,1,0);
INSERT INTO Room values(@hotel3,@double,103,1,0);
INSERT INTO Room values(@hotel3,@double,104,1,0);
INSERT INTO Room values(@hotel3,@double,105,1,0);
INSERT INTO Room values(@hotel3,@double,201,2,0);
INSERT INTO Room values(@hotel3,@double,202,2,0);
INSERT INTO Room values(@hotel3,@triple,203,2,0);
INSERT INTO Room values(@hotel3,@triple,204,2,0);
INSERT INTO Room values(@hotel3,@triple,205,2,0);
INSERT INTO Room values(@hotel3,@quad,301,3,0);
INSERT INTO Room values(@hotel3,@queen,302,3,0);
INSERT INTO Room values(@hotel3,@king,303,3,0);
INSERT INTO Room values(@hotel3,@twin,304,3,0);
INSERT INTO Room values(@hotel3,@doubleDouble,305,3,0);


--Position insert
INSERT INTO Position values(@houseKeeper,'HouseKeeper','Clean corridors, lobbies, stairways,elevators, and lunges as well as guest rooms.');
INSERT INTO Position values(@superVisor,'Supervisor','Supervise operations in all hotel departmants.');
INSERT INTO Position values(@bellBoy,'Bell Hop','Duties often include opening the front door,moving luggages and responding to the guest''s need.');
INSERT INTO Position values(@security,'Security','Protects hotel guests, other staffs and properties.');
INSERT INTO Position values(@valet,'Valet','Parking the guest''s cars.');
INSERT INTO Position values(@waiter,'Waiter','Provide the perfect service Experience for every guest.');
INSERT INTO Position values(@chef,'Chef','Cooks guest''s orders according to their prefe.');
INSERT INTO Position values(@manager,'Manager','Manage all hotel operations and all staffs.');
INSERT INTO Position values(@receptionist,'Receptionist','Welcome guests as they arrive hotel and do check-in operaitons.');
INSERT INTO Position values(@barman,'Barman','Interact with customers,take orders for drinks and snacks.');

--PersonelInfo insert
INSERT INTO PersonalInfo VALUES('Josh','Russell','712-02-3420','Male','Fair Crossroad','Hayward',72101,'Czech Republic','6-807-482-0881','Josh_Russell3264@kideod.biz');
INSERT INTO PersonalInfo VALUES('Mike','Chappell','662-80-4260','Male','Bicknell  Grove','Wien',18818,'Poland','8-807-112-3541','Mike_Chappell3813@sveldo.biz');
INSERT INTO PersonalInfo VALUES('Roger','Grady','526-70-5762','Male','Blackwall  Pass','Fayetteville',25925,'Namibia','8-721-337-6143','Roger_Grady6211@acrit.org');
INSERT INTO PersonalInfo VALUES('Barney','Saunders','683-11-3253','Male','Cheltenham  Hill','Chicago',88588,'Solomon Islands','2-461-477-6565','Barney_Saunders4940@supunk.biz');
INSERT INTO PersonalInfo VALUES('Tom','Overson','714-57-5855','Male','Carolina  Pass','Arlington',99029,'San Marino','1-380-156-4272','Tom_Overson7898@irrepsy.com');
INSERT INTO PersonalInfo VALUES('Hayden','Ulyatt','846-43-8266','Male','Ellerslie Hill','Fullerton',30268,'Singapore','3-543-135-6715','Hayden_Ulyatt1702@hourpy.biz');
INSERT INTO PersonalInfo VALUES('Holly','Edwards','066-52-4471','Female','Belmore  Route','Phoenix',61769,'Maldives','5-067-181-6336','Holly_Edwards9278@bretoux.com');
INSERT INTO PersonalInfo VALUES('Rocco','James','170-87-2577','Male','Bingham   Street','Wien',25050,'Colombia','0-100-015-6470','Rocco_James2810@ubusive.com');
INSERT INTO PersonalInfo VALUES('Rick','Nicholls','036-05-6523','Male','Amwell    Drive','Hollywood',34945,'Bahrain','5-205-626-6241','Rick_Nicholls4772@deons.tech');
INSERT INTO PersonalInfo VALUES('Anthony','Willson','228-57-3063','Male','Aspen Rue','San Diego',37663,'Lebanon','6-273-028-8825','Anthony_Willson4662@grannar.com');
INSERT INTO PersonalInfo VALUES('Maxwell','Nelson','432-56-0512','Male','Camelot   Vale','Bakersfield',59536,'Turkmenistan','1-873-213-8023','Maxwell_Nelson505@acrit.org');
INSERT INTO PersonalInfo VALUES('Josh','Andersson','220-12-2686','Male','Glenwood Alley','Portland',81643,'Samoa','7-313-460-8214','Josh_Andersson2810@jiman.org');
INSERT INTO PersonalInfo VALUES('Chuck','Blackburn','835-18-8378','Male','Canal  Rue','Lancaster',55255,'Korea, South','1-144-616-3712','Chuck_Blackburn7964@deons.tech');
INSERT INTO PersonalInfo VALUES('Ramon','Ebbs','462-66-1577','Male','East Avenue','Long Beach',74388,'Burundi','3-773-067-2010','Ramon_Ebbs7787@yahoo.com');
INSERT INTO PersonalInfo VALUES('Maxwell','Little','086-38-2658','Male','Victoria  Pass','Irving',90430,'San Marino','0-178-824-8663','Maxwell_Little2441@cispeto.com');
INSERT INTO PersonalInfo VALUES('Lucas','Robinson','157-25-5230','Male','Central  Grove','Miami',17252,'Algeria','5-180-526-1850','Lucas_Robinson80@deavo.com');
INSERT INTO PersonalInfo VALUES('Bart','Dunbar','840-41-8553','Male','Boadicea   Crossroad','Las Vegas',12097,'Fiji','4-557-045-6333','Bart_Dunbar7975@vetan.org');
INSERT INTO PersonalInfo VALUES('Willow','Olson','706-27-3586','Female','Collins  Way','Jacksonville',81981,'Swaziland','2-854-316-8626','Willow_Olson7228@famism.biz');
INSERT INTO PersonalInfo VALUES('Barney','Wren','072-57-1610','Male','Cockspur  Alley','Murfreesboro',27570,'Bahrain','0-441-700-2400','Barney_Wren375@infotech44.tech');
INSERT INTO PersonalInfo VALUES('Carmella','Garner','254-27-4100','Female','Queen Caroline   Grove','Washington',53394,'Philippines','4-426-145-2085','Carmella_Garner7953@corti.com');
INSERT INTO PersonalInfo VALUES('Gwenyth','Oakley','034-34-0714','Female','Queen Caroline   Vale','Lancaster',60546,'Panama','8-845-453-4063','Gwenyth_Oakley4231@acrit.org');
INSERT INTO PersonalInfo VALUES('Olivia','Vernon','274-30-7013','Female','Arlington  Tunnel','San Bernardino',15540,'Haiti','5-436-701-5058','Olivia_Vernon4382@nimogy.biz');
INSERT INTO PersonalInfo VALUES('Mary','West','075-12-1150','Female','Thomas More   Vale','Philadelphia',58186,'Iceland','5-826-884-8501','Mary_West3618@typill.biz');
INSERT INTO PersonalInfo VALUES('Lorraine','Bentley','170-04-2814','Female','Commercial  Way','Berlin',82075,'Fiji','7-542-443-6447','Lorraine_Bentley9528@yahoo.com');
INSERT INTO PersonalInfo VALUES('Enoch','Phillips','454-13-6353','Male','Bolingbroke  Street','Worcester',31505,'Kiribati','8-703-727-8860','Enoch_Phillips5413@mafthy.com');
INSERT INTO PersonalInfo VALUES('Stacy','Hilton','160-28-3650','Female','Chart   Lane','Madrid',44024,'Singapore','1-257-085-8066','Stacy_Hilton5359@acrit.org');
INSERT INTO PersonalInfo VALUES('Wade','Booth','001-84-4885','Male','Fieldstone Route','Bridgeport',52413,'Togo','5-558-286-1846','Wade_Booth233@grannar.com');
INSERT INTO PersonalInfo VALUES('Leslie','Hunt','372-67-1455','Female','Longman   Boulevard','New York',58602,'Colombia','3-471-862-0737','Leslie_Hunt2451@joiniaa.com');
INSERT INTO PersonalInfo VALUES('Cassidy','Gordon','667-05-3683','Female','Oxford Route','El Paso',35888,'Tuvalu','2-323-460-8507','Cassidy_Gordon4491@joiniaa.com');
INSERT INTO PersonalInfo VALUES('Doug','Rodgers','708-05-0458','Male','Bigland  Walk','Portland',69356,'Latvia','1-585-713-0656','Doug_Rodgers2626@extex.org');
INSERT INTO PersonalInfo VALUES('Cedrick','Rothwell','030-13-8262','Male','Liverpool  Route','Dallas',84832,'Korea, South','0-816-733-1840','Cedrick_Rothwell2052@kideod.biz');
INSERT INTO PersonalInfo VALUES('Joseph','Whitehouse','704-73-6451','Male','Clerkenwell Boulevard','Venice',53176,'Qatar','3-725-271-0752','Joseph_Whitehouse1978@muall.tech');
INSERT INTO PersonalInfo VALUES('Cristal','Potts','743-72-0873','Female','Blomfield  Avenue','Worcester',28726,'Malawi','1-355-212-4560','Cristal_Potts6693@nanoff.biz');
INSERT INTO PersonalInfo VALUES('Meredith','Wilcox','234-37-4552','Female','Union  Tunnel','Glendale',35642,'South Africa','3-550-706-3550','Meredith_Wilcox7821@sveldo.biz');
INSERT INTO PersonalInfo VALUES('Jack','Ring','675-21-0725','Male','Eldon  Boulevard','Springfield',76480,'Sweden','5-315-050-6658','Jack_Ring8558@brety.org');
INSERT INTO PersonalInfo VALUES('Joseph','Marshall','470-64-1843','Male','Bletchley   Avenue','Lyon',26717,'Vatican City','0-864-304-3250','Joseph_Marshall8978@bauros.biz');
INSERT INTO PersonalInfo VALUES('Wade','Carpenter','472-44-3843','Male','Liverpool  Boulevard','Rochester',33252,'Afghanistan','6-418-802-2483','Wade_Carpenter8133@atink.com');
INSERT INTO PersonalInfo VALUES('Emery','Johnson','216-65-7675','Female','Meadow Road','Lincoln',41742,'San Marino','2-802-342-2024','Emery_Johnson6877@grannar.com');
INSERT INTO PersonalInfo VALUES('George','Walton','001-31-4488','Male','Longmoore   Boulevard','Tokyo',84199,'Colombia','2-151-710-8507','George_Walton6104@corti.com');
INSERT INTO PersonalInfo VALUES('David','Eastwood','700-18-7806','Male','Chatsworth  Route','Murfreesboro',28449,'Bulgaria','2-202-487-6601','David_Eastwood5080@ubusive.com');
INSERT INTO PersonalInfo VALUES('Vicky','Powell','875-41-8623','Female','Collins  Avenue','Washington',21944,'Barbados','3-405-347-5283','Vicky_Powell3805@twace.org');
INSERT INTO PersonalInfo VALUES('Sylvia','Wright','674-04-7662','Female','Cave   Lane','St. Louis',34532,'Bhutan','3-526-026-4412','Sylvia_Wright3777@womeona.net');
INSERT INTO PersonalInfo VALUES('Rae','Pearce','405-85-7015','Female','Durnford  Route','Colorado Springs',73316,'Austria','2-058-770-2382','Rae_Pearce9816@bungar.biz');
INSERT INTO PersonalInfo VALUES('Jamie','Truscott','760-27-6365','Female','Berriman  Vale','Tallahassee',86601,'Bhutan','6-728-388-6636','Jamie_Truscott1447@bulaffy.com');
INSERT INTO PersonalInfo VALUES('Alex','Farrow','805-46-6404','Female','Gathorne   Boulevard','St. Louis',74434,'Qatar','0-554-162-1288','Alex_Farrow3102@hourpy.biz');
INSERT INTO PersonalInfo VALUES('Andrea','Yang','373-20-6368','Female','Capeners  Route','Los Angeles',12123,'Bangladesh','4-845-527-6358','Andrea_Yang3739@grannar.com');
INSERT INTO PersonalInfo VALUES('Russel','Sherry','781-45-8483','Male','Sherwood  Hill','Colorado Springs',49567,'Indonesia','3-134-234-0141','Russel_Sherry9717@muall.tech');
INSERT INTO PersonalInfo VALUES('Mark','Fox','846-33-4404','Male','Collingwood  Tunnel','San Francisco',40446,'Iraq','8-855-112-1228','Mark_Fox157@extex.org');
INSERT INTO PersonalInfo VALUES('Eduardo','Hooper','703-08-0047','Male','Adelaide  Lane','San Antonio',82449,'Korea, South','5-721-804-1553','Eduardo_Hooper4709@nanoff.biz');
INSERT INTO PersonalInfo VALUES('Caleb','Moreno','555-61-8227','Male','Camley   Pass','Indianapolis',81283,'Myanmar','2-482-162-8738','Caleb_Moreno8194@elnee.tech');

--insert Staff
INSERT INTO Staff values(@hotel1,3000,@houseKeeper,default);
INSERT INTO Staff values(@hotel1,3001,@security,default);
INSERT INTO Staff values(@hotel1,3002,@bellBoy,default);
INSERT INTO Staff values(@hotel1,3003,@receptionist,default);
INSERT INTO Staff values(@hotel1,3004,@chef,default);
INSERT INTO Staff values(@hotel1,3005,@houseKeeper,default);
INSERT INTO Staff values(@hotel1,3006,@waiter,default);
INSERT INTO Staff values(@hotel1,3007,@manager,default);
INSERT INTO Staff values(@hotel1,3008,@barman,default);
INSERT INTO Staff values(@hotel1,3009,@superVisor,default);
INSERT INTO Staff values(@hotel2,3010,@houseKeeper,default);
INSERT INTO Staff values(@hotel2,3011,@security,default);
INSERT INTO Staff values(@hotel2,3012,@bellBoy,default);
INSERT INTO Staff values(@hotel2,3013,@receptionist,default);
INSERT INTO Staff values(@hotel2,3014,@chef,default);
INSERT INTO Staff values(@hotel2,3015,@houseKeeper,default);
INSERT INTO Staff values(@hotel2,3016,@waiter,default);
INSERT INTO Staff values(@hotel2,3017,@manager,default);
INSERT INTO Staff values(@hotel2,3018,@barman,default);
INSERT INTO Staff values(@hotel2,3019,@superVisor,default);
INSERT INTO Staff values(@hotel3,3020,@houseKeeper,default);
INSERT INTO Staff values(@hotel3,3021,@security,default);
INSERT INTO Staff values(@hotel3,3022,@bellBoy,default);
INSERT INTO Staff values(@hotel3,3023,@receptionist,default);
INSERT INTO Staff values(@hotel3,3024,@chef,default);
INSERT INTO Staff values(@hotel3,3025,@houseKeeper,default);
INSERT INTO Staff values(@hotel3,3026,@waiter,default);
INSERT INTO Staff values(@hotel3,3027,@manager,default);
INSERT INTO Staff values(@hotel3,3028,@barman,default);
INSERT INTO Staff values(@hotel3,3029,@superVisor,default);

--JobAssignment insert
INSERT INTO JobAssignment values(2000,500);
INSERT INTO JobAssignment values(2001,500);
INSERT INTO JobAssignment values(2004,500);
INSERT INTO JobAssignment values(2004,505);
INSERT INTO JobAssignment values(2005,505);
INSERT INTO JobAssignment values(2017,510);
INSERT INTO JobAssignment values(2020,510);
INSERT INTO JobAssignment values(2020,515);
INSERT INTO JobAssignment values(2043,520);
INSERT INTO JobAssignment values(2045,520);
INSERT INTO JobAssignment values(2043,525);




INSERT INTO Customer values(@customer1,@hotel1,2);
INSERT INTO Customer values(@customer2,@hotel1,1);
INSERT INTO Customer values(@customer3,@hotel1,3);
INSERT INTO Customer values(@customer4,@hotel2,2);
INSERT INTO Customer values(@customer5,@hotel2,4);
INSERT INTO Customer values(@customer6,@hotel2,1);
INSERT INTO Customer values(@customer7,@hotel3,2);
INSERT INTO Customer values(@customer8,@hotel3,2);
INSERT INTO Customer values(@customer9,@hotel3,1);
INSERT INTO Customer values(@customer10,@hotel3,2);

INSERT INTO Guest values(@customer1,'Web Site');
INSERT INTO Guest values(@customer2,'Phone');
INSERT INTO Guest values(@customer5,'Mobile App');
INSERT INTO Guest values(@customer7,'Web Site');
INSERT INTO Guest values(@customer9,'Phone');


INSERT INTO Agent values(@customer3,'trivago','www.trivago.com');
INSERT INTO Agent values(@customer4,'Gün Truizm','www.gunturizm.com');
INSERT INTO Agent values(@customer6,'Gülcü Acenta','www.gulcuacenta.com');
INSERT INTO Agent values(@customer8,'Dönmez Tur','www.donmeztur.com');
INSERT INTO Agent values(@customer10,'Seyranlar','www.seyranlar.com');

INSERT INTO Customer_Person values(@customer1,3030); 
INSERT INTO Customer_Person values(@customer1,3031); 
INSERT INTO Customer_Person values(@customer2,3032); 
INSERT INTO Customer_Person values(@customer3,3033); 
INSERT INTO Customer_Person values(@customer3,3034); 
INSERT INTO Customer_Person values(@customer3,3035); 
INSERT INTO Customer_Person values(@customer4,3036); 
INSERT INTO Customer_Person values(@customer4,3037); 
INSERT INTO Customer_Person values(@customer5,3038); 
INSERT INTO Customer_Person values(@customer5,3039); 
INSERT INTO Customer_Person values(@customer5,3040); 
INSERT INTO Customer_Person values(@customer5,3041); 
INSERT INTO Customer_Person values(@customer6,3042); 
INSERT INTO Customer_Person values(@customer7,3043); 
INSERT INTO Customer_Person values(@customer7,3044); 
INSERT INTO Customer_Person values(@customer8,3045); 
INSERT INTO Customer_Person values(@customer8,3046); 
INSERT INTO Customer_Person values(@customer9,3047); 
INSERT INTO Customer_Person values(@customer10,3048); 
INSERT INTO Customer_Person values(@customer10,3049); 

INSERT INTO Booking values(@booking1,@hotel1,@customer1,'2019-01-14','2019-01-25',2,'A good description');
INSERT INTO Booking values(@booking2,@hotel1,@customer2,'2019-03-24','2019-03-29',1,'A good description');
INSERT INTO Booking values(@booking3,@hotel1,@customer3,'2018-05-03','2018-05-12',2,'A good description');
INSERT INTO Booking values(@booking4,@hotel2,@customer4,'2018-10-25','2018-11-02',1,'A good description');
INSERT INTO Booking values(@booking5,@hotel2,@customer5,'2019-10-24','2019-10-27',1,'A good description');
INSERT INTO Booking values(@booking6,@hotel2,@customer6,'2019-10-03','2019-10-07',2,'A good description');
INSERT INTO Booking values(@booking7,@hotel3,@customer7,'2019-09-14','2019-09-25',2,'A good description');
INSERT INTO Booking values(@booking8,@hotel3,@customer8,'2019-08-18','2019-08-25',2,'A good description');
INSERT INTO Booking values(@booking9,@hotel3,@customer9,'2019-06-18','2019-06-20',2,'A good description');
INSERT INTO Booking values(@booking10,@hotel3,@customer10,'2019-01-14','2019-02-01',2,'A good description');

INSERT INTO BookedRoom values(@booking1,2000,100);
INSERT INTO BookedRoom values(@booking1,2004,130);
INSERT INTO BookedRoom values(@booking2,2003,200);
INSERT INTO BookedRoom values(@booking3,2007,180);
INSERT INTO BookedRoom values(@booking3,2008,120);
INSERT INTO BookedRoom values(@booking4,2012,200);
INSERT INTO BookedRoom values(@booking5,2013,150);
INSERT INTO BookedRoom values(@booking6,2014,170);
INSERT INTO BookedRoom values(@booking6,2017,140);
INSERT INTO BookedRoom values(@booking7,2020,160);
INSERT INTO BookedRoom values(@booking7,2021,200);
INSERT INTO BookedRoom values(@booking8,2022,210);
INSERT INTO BookedRoom values(@booking8,2023,220);
INSERT INTO BookedRoom values(@booking9,2024,250);
INSERT INTO BookedRoom values(@booking9,2026,270);
INSERT INTO BookedRoom values(@booking10,2027,290);
INSERT INTO BookedRoom values(@booking10,2028,400);

INSERT INTO Payment values(@payment1,@booking1,'Credit Card');
INSERT INTO Payment values(@payment2,@booking2,'Cash');
INSERT INTO Payment values(@payment3,@booking3,'PayPal');
INSERT INTO Payment values(@payment4,@booking4,'Credit Card');
INSERT INTO Payment values(@payment5,@booking5,'Bank Transfer');
INSERT INTO Payment values(@payment6,@booking6,'Cash');
INSERT INTO Payment values(@payment7,@booking7,'Paypal');
INSERT INTO Payment values(@payment8,@booking8,'Credit Card');
INSERT INTO Payment values(@payment9,@booking9,'Bank Transfer');
INSERT INTO Payment values(@payment10,@booking10,'Credit Card');


INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment1,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment2,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment3,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment4,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment5,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment6,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment7,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment8,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment9,'a good Description');
INSERT INTO Bill(BillNo,PaymentID,BillDescription) values(default,@payment10,'a good Description');





select * from Bill

