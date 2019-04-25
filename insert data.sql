-- Data for table customers
INSERT INTO CUSTOMER (CID, cEmail, cPhone) values
(1001, 'MMArtinez@gmail.com', '856-650-9392'),
(1002, 'RichJeff@gmail.com', '609-636-1052'),
(1003, 'TabbyV@gmail.com', '817-436-4495'),
(1004, 'LordCurry@gmail.com', '214-878-8270'),
(1005, 'CarrJ@gmail.com', '520-229-1321'),
(1006, 'CarrieB@gmail.com', '520-789-7184'),
(1007, 'DwightW@gmail.com', '618-298-1856'),
(1008, 'KatieBr@gmail.com', '773-956-1564'),
(1009, 'SehllWest@gmail.com', '617-823-3067'),
(1010, 'StellaJ@gmail.com', '646-963-9210'),
(1011, 'XLMIndustry@gmail.com', '646-763-0389'),
(1012, 'VENCorporation@gmail.com', '310-652-1214'),
(1013, 'REQGroup@gmail.com', '213-966-4910'),
(1014, 'NEONetwork@gmail.com', '320-217-2197'),
(1015, 'WTCBrothers@gmail.com', '320-282-1013'),
(1016, 'AleOli@gmail.com', '828-271-4727'),
(1017, 'MargaritaW@gmail.com', '936-573-1271'),
(1018, 'RodHoll@gmail.com', '601-208-8248'),
(1019, 'WalterD@gmail.com', '646-963-9210'),
(1020, 'CortezG@gmail.com', '936-573-1271');

-- Data for private individuals
INSERT INTO PRIVATEINDIVIDUAL (CID, PFIRSTNAME, PLASTNAME, PADDRESS, PDATEJOINED) values
(1001, 'Maureen', 'Martinez', '363 Saint Francis Way', '2003-08-11'),
(1002, 'Jeff', 'Richardson', '894 Harter Street', '2012-07-15'),
(1003, 'Tabitha', 'Vargas', '4844 Bloomfield Way', NULL),
(1004, 'Lyle', 'Curry', '3866 Lynn Ogden Lane', NULL),
(1005, 'Jimmy', 'Carr', '3699 Thomas Street','2009-09-09'),
(1006, 'Carrie', 'Burns', '1980 Prospect Valley Road', NULL),
(1007, 'Dwight', 'Walton', '2245 Thompson Drive','2003-03-03'),
(1008, 'Katie', 'Brown', '448 Birch  Street', NULL),
(1009, 'Shelley', 'West', '340 Trymore Road','2004-04-08'),
(1010, 'Stella', 'Jacobs', '842 Prospect Street',NULL),
(1016, 'Alejandro',	'Oliver' ,'1379 Michael Street','2002-11-11'),
(1017, 'Margarita',	'Ward', '2274 Wilkinson Court','2004-05-21'),
(1018, 'Roderick','Holloway', '3553 Lunetta Street','2001-09-09'),
(1019, 'Walter', 'Dixon', '2879 Bloomfield Way',NULL),
(1020, 'Gene','Cortez', '638 West Street','2006-05-08');


-- Data for corporations
INSERT INTO CORPORATION (CID, CORPNAME,MAILING_ADDRESS,BILLING_ADDRESS,VEHICLE_PICKUP,VEHICLE_DROPOFF) values
(1011, 'XLM Industry', '2045 Davisson Street','452 Veltri Drive',null,null),
(1012, 'VEN Corporation','1742 Richards Avenue','3259 Jacobs Street','1013 Shingleton Road','4094 Brighton Circle Road'),
(1013, 'REQ Group','3427 Woodside Circle',null,'4093 Pinewood Avenue','1034 Meadow Lane'),
(1014, 'NEO Network','753 Joyce Street',null,null,null),
(1015, 'WTC Brothers','3516 Blackwell Street','2788 Station Street','4142 Lakewood Drive','322 Dane Street');

-- Data for appointments
INSERT INTO APPOINTMENT (cID, aDateTime) values
(1001, '2018-01-01'),
(1002, '2018-03-23'),
(1005, '2018-06-13'),
(1007, '2018-03-09'),
(1009, '2017-07-29'),
(1011, '2017-11-12'),
(1012, '2017-12-03'),
(1015, '2017-05-16'),
(1016, '2017-04-10'),
(1017, '2018-02-21'),
(1018, '2017-05-01'),
(1020, '2018-04-20');

-- Active user IDs
INSERT INTO ACTIVE (CID) values
(1001),
(1002),
(1005),
(1007),
(1009),
(1011),
(1012),
(1015),
(1016),
(1017),
(1018),
(1020);

-- Prospective customers and their refferals 
INSERT INTO PROSPECTIVECUSTOMER (CID, DATEREFERRED, CID_REFERRED) values
(1003, '2018-02-08', 1001),
(1004, '2018-04-05', 1001),
(1006, '2018-01-03', 1005),
(1008, '2017-05-19', 1012),
(1010, '2017-08-21', 1015),
(1013, '2017-10-14', 1001),
(1014, '2018-01-29', 1002),
(1019, '2018-02-24', 1018);

-- Make sure that the points they have makes sense try to base off of when they joined 
INSERT INTO STEADYCUSTOMER (CID, LOYALTYPOINTS) values
(1001, 4),
(1007, 0),
(1012, 21),
(1016, 13),
(1018, 8);

-- Figure out a good cost for annual fee
INSERT INTO PREMIERCUSTOMER (CID, ANNUALFEE) values
(1002, 85),
(1005, 100),
(1009, 75),
(1011, 70),
(1015, 65),
(1017, 70),
(1020, 65);

-- Should we track free oil change in this?
INSERT INTO REFERREDCUSTOMERINSTANCE (CID, REFERRED_CID) values
(1005, 1006),
(1015, 1010),
(1002, 1014);

-- Think we can find the total amount they paid using ((ANNUALFEE * 12) - (REFERREDCUSTOMERINSTANCE* 50))? Not sure.
INSERT INTO MONTHLYPAYMENT (CID, REFERRED_ID, TOTAL_PAID) values
(1002, 1014, 35),
(1005, 1006, 50),
(1015, 1010, 15);

-- Add more names 
INSERT INTO SPECIALNAME (SPECIALNAME) values
('Spring Special'),
('Summer Special'),
('Fall Special');

-- Took out special details and added an ID and Contact number to special
-- Are specials unique to each customer? Should date be when it is sent or the expire date?
-- Might need to add a status attribute to prospective since they are considered dead customer after 3 contacts
INSERT INTO SPECIAL (SPECIALNAME, SPECIALDATE, cID) values
('Spring Special', '2018-02-01', 1003),
('Spring Special', '2018-01-31', 1013),
('Summer Special', '2017-08-27', 1010),
('Fall Special', '2017-10-18', 1008);

-- Employee data
INSERT INTO EMPLOYEE (EMPLOYEEID, EMPLOYEENAME, EMPLOYEEADDRESS, EMPLOYEEEMAIL) values
(100, 'Lloyd Caldwell', '4928 Waldeck Street', 'LloydCald@gmail.com'),
(101, 'Ervin Bridges', '4688 Linden Avenue', 'eBridge@gmail.com'),
(102, 'Felicia Butler', '502 Filbert Street', 'feliciaB@gmail.com'),
(103, 'Ollie Moore', '4870 Cimmaron Road', 'ollieMoo@gmail.com'),
(104, 'Blanche Fletcher', '1071 Tori Lane', 'blancheFl@gmail.com'),
(105, 'Maria White', '1295 Park Avenue', 'marieW@gmail.com'),
(106, 'Adam Vega', '1513 McDowell Street', 'adamVe@gmail.com'),
(107, 'Jose Sims', '1637 Joyce Street', 'Joses@gmail.com'),
(108, 'Jessica Ball', '2469 Dancing Dove Lane', 'JessicaB@gmail.com'),
(109, 'Ruby Rowe', '970 Snowbird Lane', 'RRowe@gmail.com'),
(110, 'Earnest Jensen', '208 Upland Avenue', 'JensenE@gmail.com');

-- Mechanics data
INSERT INTO MECHANIC (EMPLOYEEID2) values
(101),
(102),
(104),
(105),
(106),
(107),
(108),
(110);

-- Technician data
INSERT INTO TECHNICIAN (EMPLOYEEID) values
(103),
(109);

-- Add more skill names
INSERT INTO SKILLS (SKILLNAME) values
('Brake Repair and Replacement'),
('Oil Change'),
('Tire Alignment'),
('Air Filter Replacement'),
('Battery Replacement'),
('Engine Rebuild'),
('Spark Plug Replacement'),
('Suspension System');

-- Added a date learned class
-- Update after adding more skill names
INSERT INTO SKILLDETAILS (SKILLNAME2, EMPLOYEEID3, DATELEARNED) values
('Brake Repair and Replacement', 101, '2000-03-29'),
('Tire Alignment', 101, '2000-02-18'),
('Oil Change', 101, '2000-05-19'),
('Brake Repair and Replacement', 102, '2002-12-12'),
('Air Filter Replacement', 102, '2002-09-01'),
('Oil Change', 104, '2004-07-29'),
('Brake Repair and Replacement', 104, '2004-09-09'),
('Oil Change', 105, '2005-01-18'),
('Tire Alignment', 105, '2005-06-01'),
('Air Filter Replacement', 105, '2005-01-29'),
('Engine Rebuild', 106, '2009-07-25'),
('Suspension System' ,106, '2010-01-29'),
('Spark Plug Replacement', 107, '2012-03-01'),
('Battery Replacement', 107, '2012-08-25'),
('Suspension System', 107, '2012-12-02'),
('Battery Replacement', 108, '2013-01-02'),
('Engine Rebuild', 108, '2013-07-25'),
('Spark Plug Replacement', 110, '2014-06-25'),
('Battery Replacement', 110, '2014-09-13'),
('Tire Alignment', 110, '2014-10-21'),
('Tire Alignment', 107, '2013-10-29');

-- Changed Enddate to accept null value since they can stil be learning
INSERT INTO MENTORING (mentorID, mStartDate, mEndDate, mSkill, mentoreeID) values
(101,'2002-07-22','2002-12-12','Brake Repair and Replacement',102),
(101,'2004-02-01','2004-07-29','Oil Change', 104),
(101,'2004-07-15','2005-01-18','Oil Change', 105),
(105,'2014-02-14','2014-10-21','Tire Alignment',110),
(107,'2014-01-31','2014-06-25','Spark Plug Replacement',110),
(106,'2012-09-21','2013-07-25','Engine Rebuild', 108),
(105,'2018-03-21',null,'Oil Change',108);

-- Add a few more models maybe 5
INSERT INTO MANUFACTURER (AUTOMOBILE_ID, VMAKE, VMODEL, VYEAR, VTYPE) values
(10000, 'TOYOTA', 'COROLLA', 2014, 'Gas'),
(10001, 'FORD', 'FOCUS', 2015, 'Gas'),
(10002, 'NISSAN', 'GT-R', 2018, 'Gas'),
(10003, 'HONDA', 'CIVIC', 2017, 'Gas'),
(10004, 'AUDI', 'A6', 2015, 'Gas'),
(10005, 'TOYOTA', 'CAMRY', 2013, 'Gas'),
(10006, 'HONDA', 'ACCORD', 2013, 'Gas'),
(10007, 'HONDA', 'CR-V', 2012, 'Gas'),
(10008, 'NISSAN', 'LEAF' , 2014, 'Electric'),
(10009, 'TOYOTA', 'YARIS', 2010, 'Gas'),
(10010, 'BMW', 'I8', 2009, 'Gas'),
(10011, 'AUDI', 'A5', 2018, 'Gas'),
(10012, 'BMW', '3 SERIES', 2013, 'Gas'),
(10013, 'SUBARU', 'WRX', 2016, 'Gas'),
(10014, 'SUBARU', 'BRZ', 2007, 'Gas'),
(10015, 'AUDI', 'TT', 2012, 'Gas');

-- Made VID null since it can be applied for several vehicles
-- Not really sure how maintenance pack works
-- Update to match relationscheme
INSERT INTO MAINTENANCE_PACK (AUTOMOBILE_ID, MPACKTYPE) values
(10006, 'WINTER PACK'),
(10010, 'WINTER PACK'),
(10015, 'SPRING PACK'),
(10000, 'SUMMER PACK'),
(10006, '3000 MILES PACK'),
(10013, '5000 MILES PACK'),
(10015, '10000 MILES PACK'),
(10009, '30000 MILES PACK');

-- Not sure what data to add for this is it based off a specific vehicle?
INSERT INTO `INTERVAL` (AUTOMOBILE_ID, MPACKTYPE) values
(10006, '3000 MILES PACK'),
(10013, '5000 MILES PACK'),
(10015, '10000 MILES PACK'),
(10009, '30000 MILES PACK');

INSERT INTO MILEAGE (AUTOMOBILE_ID, MPACKTYPE, MILEAGE) values
(10006,'3000 MILES PACK', 3000),
(10013,'5000 MILES PACK', 5000),
(10015,'10000 MILES PACK', 10000),
(10009,'30000 MILES PACK', 30000);

-- Changed data type for VIN to fit a real VIN
-- Add more vehicles later
INSERT INTO VEHICLE (VIN, cID, AUTOMOBILE_ID) values
('5NPEC4AB5EH872916' , 1001, 10001),
('1MEBM5842KA693361' , 1001, 10003),
('1GCUGAD49A1188819' , 1005, 10002),
('2GCEK24C8G1129330' , 1007, 10000),
('1GB3G3CL5F1100764' , 1007, 10004),
('1VWFB0171EV085194' , 1009, 10007),
('1FTHX26K1RKC53316' , 1011, 10001),
('3GBEC16KXSG132732' , 1012, 10007),
('5TFKV52187X046710' , 1015, 10000),
('1J8FA54117L179383' , 1015, 10005),
('4V4NC9TKX4N354457' , 1016, 10009),
('3C6UD5DLXCG166976' , 1018, 10011),
('2B6GB13T3FK252471' , 1019, 10013),
('1G4HP53L7PH725796' , 1019, 10014),
('JHLRD77876C220388' , 1020, 10015);


-- Add a lot of orders maybe 30 so we can get good data back
-- Need to add a cost I think either get it from maintenance pack or add all the item cost together
INSERT INTO `ORDER`(ORDER_ID, EMPLOYEE_ID, ORDER_DATE, VIN) values
(40611, 103, '2017-01-01','5NPEC4AB5EH872916'),
(40612, 109, '2017-03-23','1GB3G3CL5F1100764'),
(40613, 103, '2017-05-08','5NPEC4AB5EH872916'),
(40614, 109, '2017-06-13','1MEBM5842KA693361'),
(40615, 109, '2017-06-26','1GB3G3CL5F1100764'),
(40616, 103, '2017-07-09','1MEBM5842KA693361'),
(40617, 103, '2017-07-19','1GCUGAD49A1188819'),
(40618, 109, '2017-07-29','3GBEC16KXSG132732'),
(40619, 103, '2017-08-21','1VWFB0171EV085194'),
(40620, 109, '2017-08-27','1VWFB0171EV085194'),
(40621, 103, '2017-08-29','1FTHX26K1RKC53316'),
(40622, 109, '2017-08-31','3GBEC16KXSG132732'),
(40623, 103, '2017-09-29','5TFKV52187X046710'),
(40624, 103, '2017-09-30','1J8FA54117L179383'),
(40625, 103, '2017-10-01','4V4NC9TKX4N354457'),
(40626, 109, '2017-10-05','1J8FA54117L179383'),
(40627, 109, '2017-10-23','4V4NC9TKX4N354457'),
(40628, 109, '2017-11-08','3C6UD5DLXCG166976'),
(40629, 103, '2017-12-13','2B6GB13T3FK252471'),
(40630, 103, '2018-01-03','1G4HP53L7PH725796'),
(40631, 109, '2018-02-09','1MEBM5842KA693361'),
(40632, 109, '2018-03-19','1G4HP53L7PH725796'),
(40633, 103, '2018-06-29','3GBEC16KXSG132732'),
(40634, 109, '2018-07-03','1G4HP53L7PH725796'),
(40635, 103, '2018-07-12','1J8FA54117L179383'),
(40636, 109, '2018-09-03','1FTHX26K1RKC53316'),
(40637, 103, '2018-10-14','3GBEC16KXSG132732'),
(40638, 109, '2018-10-29','JHLRD77876C220388'),
(40639, 109, '2018-11-16','3C6UD5DLXCG166976'),
(40640, 103, '2018-12-16','JHLRD77876C220388');

-- More maintenance items once you add more skills
INSERT INTO MAINTENANCE_ITEM (ITEM_NAME, AUTOMOBILE_ID, ITEMCOST,BUYPRICE) values
('OIL FILTER', 10001, 25,20),
('OIL FILTER', 10002, 55,45),
('BRAKE PADS', 10003, 120,100),
('BRAKE PADS', 10004, 155,120),
('AIR FILTER', 10005, 25,15),
('AIR FILTER', 10006, 35,20),
('BATTERY', 10007, 120,100),
('BATTERY', 10002, 250,200),
('TIRE ALIGNMENT', 10001, 45,40),
('TIRE ALIGNMENT', 10009, 35,20),
('TIRE ALIGNMENT', 10000, 40,30),
('SPARK PLUG', 10010, 140,130),
('SPARK PLUG', 10011, 125,115),
('ENGINE PARTS', 10012, 2040,1800),
('ENGINE PARTS', 10002, 2500,2100),
('ENGINE PARTS', 10015, 2300,2000),
('SUSPENSION PARTS', 10013, 400,365),
('SUSPENSION PARTS', 10014, 500,450);

-- Not sure if we need alot of values for this but if VID is PK then every oil filter is unique for a vehicle?
INSERT INTO OIL_CHANGE (AUTOMOBILE_ID, ITEM_NAME, OIL_FILTER_NAME) values
(10001, 'OIL FILTER', 'BASIC FILTER'),
(10002, 'OIL FILTER', 'PREMIUM FILTER');


-- Add more values later
INSERT INTO NOTIFICATION (VIN, cID, notificationDateTime) values
('5NPEC4AB5EH872916' , 1001, '2017-01-12'),
('1MEBM5842KA693361' , 1001, '2017-05-11'),
('1GCUGAD49A1188819' , 1005, '2017-02-03'),
('2GCEK24C8G1129330' , 1007, '2017-06-09'),
('1GB3G3CL5F1100764' , 1007, '2017-07-26'),
('1VWFB0171EV085194' , 1009, '2017-08-17'),
('1FTHX26K1RKC53316' , 1011, '2017-12-12'),
('3GBEC16KXSG132732' , 1012, '2017-12-25'),
('5TFKV52187X046710' , 1015, '2017-01-18'),
('1J8FA54117L179383' , 1015, '2017-06-01'),
('4V4NC9TKX4N354457' , 1015, '2017-03-13');

-- More maintenance skills
INSERT INTO MAINTENANCE_SKILL (SKILL_NAME, AUTOMOBILE_ID, ITEM_NAME) values
('Oil Change', 10001,'OIL FILTER'),
('Oil Change', 10002,'OIL FILTER'),
('Brake Repair and Replacement',10003,'BRAKE PADS'),
('Brake Repair and Replacement', 10004, 'BRAKE PADS'),
('Air Filter Replacement', 10005 ,'AIR FILTER'),
('Air Filter Replacement', 10006, 'AIR FILTER'),
('Battery Replacement', 10007, 'BATTERY'),
('Battery Replacement', 10002, 'BATTERY'),
('Tire Alignment', 10001,'TIRE ALIGNMENT'),
('Tire Alignment', 10000,'TIRE ALIGNMENT'),
('Tire Alignment', 10009,'TIRE ALIGNMENT');

INSERT INTO MAINTENANCE_DETAILS (ORDER_ID, EMPLOYEE_ID, AUTOMOBILE_ID, ITEM_NAME, SKILL_REQUIRED) values
(40611, 104, 10001, 'OIL FILTER','Oil Change'),
(40612, 101, 10004, 'BRAKE PADS','Brake Repair and Replacement'),
(40626, 101, 10004, 'TIRE ALIGNMENT','Tire Alignment'),
(40613, 104, 10001,'OIL FILTER','Oil Change'),
(40614, 101, 10003, 'BRAKE PADS','Brake Repair and Replacement'),
(40615, 102, 10004, 'BRAKE PADS','Brake Repair and Replacement'),
(40616, 102, 10003,'BRAKE PADS','Brake Repair and Replacement'),
(40617, 105, 10002, 'OIL FILTER','Oil Change'),
(40618, 105, 10007, 'BATTERY','Battery Replacement'),
(40619, 105, 10007,'BATTERY','Battery Replacement'),
(40620, 105, 10007,'BATTERY','Battery Replacement'),
(40621, 101, 10001,'OIL FILTER','Oil Change'),
(40622, 105, 10007,'BATTERY','Battery Replacement'),
(40623, 105, 10000,'TIRE ALIGNMENT','Tire Alignment'),
(40624, 102, 10005,'AIR FILTER','Air Filter Replacement'),
(40625, 105, 10009,'TIRE ALIGNMENT','Tire Alignment');

-- Add more values
INSERT INTO MAINTENANCE_PACK_DETAILS (AUTOMOBILE_ID, ITEM_NAME, MPACKTYPE, QUANTITY, UNITSALEPRICE) values
(10015, 'OIL FILTER', '10000 MILES PACK', 1, 100),
(10009, 'OIL FILTER', '30000 MILES PACK', 1, 100);


-- Should figure out how much loyality points are worth (They get 1 point for spending $10) maybe $5 per point
INSERT INTO STEADY_CUSTOMER_ORDER_DETAILS (CID, ORDER_ID, LOYALTY_POINTS_SPENT) values
(1001,40611, 3),
(1007,40615, 0),
(1007,40612, 0),
(1012,40618, 6),
(1012,40622, 2);

INSERT INTO FREE_OIL_CHANGE (CID, ORDER_ID, AUTOMOBILE_ID, ITEM_NAME) values
(1001, 40611, 10001, 'OIL FILTER');









