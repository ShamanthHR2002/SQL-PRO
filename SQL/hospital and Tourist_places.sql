CREATE DATABASE HOSPITALINFO_TOURISTPLACE;
USE HOSPITALINFO_TOURISTPLACE;

CREATE TABLE Hospital_info
(
    Hospital_id INT ,
    Name VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_code VARCHAR(10),
    Phone_number VARCHAR(15),
    Email VARCHAR(100),
    Bed_capacity INT,
    Specializations VARCHAR(255)
);

CREATE TABLE Tourist_places
(
    Place_id INT ,
    Name VARCHAR(100),
    Location VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    Zip_code VARCHAR(10),
    Phone_number VARCHAR(15),
    Email VARCHAR(100),
    Opening_hours VARCHAR(50),
    Ticket_price DECIMAL(10, 2)
);

DESC hospital_info;
SELECT * FROM hospital_info;

INSERT INTO hospital_info (Hospital_id, Name, Address, City, State, Zip_code, Phone_number, Email, Bed_capacity, Specializations)
VALUES (1, 'Apollo Hospital', 'Bannerghatta Road', 'Bangalore', 'Karnataka', '560076', '080-2222-1111', 'info@apollo.com', 600, 'Cardiology, Neurology'),
       (2, 'Manipal Hospital', 'Old Airport Road', 'Bangalore', 'Karnataka', '560017', '080-2222-2222', 'info@manipal.com', 500, 'Pediatrics, Oncology'),
       (3, 'Fortis Hospital', 'Cunningham Road', 'Bangalore', 'Karnataka', '560052', '080-2222-3333', 'info@fortis.com', 400, 'Orthopedics, Cardiology'),
  (4, 'Narayana Health', 'Hosur Road', 'Bangalore', 'Karnataka', '560099', '080-2222-4444', 'info@narayanahealth.com', 750, 'Cardiology, Nephrology'),
       (5, 'Aster CMI Hospital', 'Hebbal', 'Bangalore', 'Karnataka', '560024', '080-2222-5555', 'info@astercmi.com', 500, 'Neurology, Gastroenterology'),
       (6, 'Columbia Asia Hospital', 'Yeshwanthpur', 'Bangalore', 'Karnataka', '560022', '080-2222-6666', 'info@columbiaasia.com', 250, 'General Surgery, Urology'),
  (7, 'Sakra World Hospital', 'Marathahalli', 'Bangalore', 'Karnataka', '560037', '080-2222-7777', 'info@sakraworldhospital.com', 350, 'Cardiology, Pulmonology'),
       (8, 'Vydehi Institute of Medical Sciences', 'Whitefield', 'Bangalore', 'Karnataka', '560066', '080-2222-8888', 'info@vims.com', 1000, 'Oncology, Neurology'),
  (9, 'St. John s Medical College Hospital', 'Koramangala', 'Bangalore', 'Karnataka', '560034', '080-2222-9999', 'info@stjohns.in', 1350, 'Pediatrics, Cardiology'),
  (10, 'Rajarajeswari Medical College Hospital', 'Mysore Road', 'Bangalore', 'Karnataka', '560074', '080-2222-0000', 'info@rrmch.org', 1100, 'General Medicine, Orthopedics'),
       (11, 'JSS Hospital', 'MG Road', 'Mysore', 'Karnataka', '570004', '0821-233-5555', 'info@jsshospital.com', 1800, 'Cardiology, Neurology'),
       (12, 'Kasturba Medical College Hospital', 'Madhav Nagar', 'Manipal', 'Karnataka', '576104', '0820-257-1201', 'info@kmch.com', 2050, 'Oncology, Cardiology'),
  (13, 'Father Muller Medical College Hospital', 'Kankanady', 'Mangalore', 'Karnataka', '575002', '0824-223-8383', 'info@fathermuller.com', 1250, 'Pediatrics, General Surgery'),
  (14, 'Yenepoya Medical College Hospital', 'Deralakatte', 'Mangalore', 'Karnataka', '575018', '0824-220-4668', 'info@yenepoya.edu.in', 1500, 'Orthopedics, Neurology'),
  (15, 'KLE Society s Dr. Prabhakar Kore Hospital', 'Nehru Nagar', 'Belgaum', 'Karnataka', '590010', '0831-247-3777', 'info@klehospital.com', 2400, 'Cardiology, Gastroenterology'),
  (16, 'SDM College of Medical Sciences Hospital', 'Sattur', 'Dharwad', 'Karnataka', '580009', '0836-246-8080', 'info@sdmmedicalcollege.com', 2100, 'Nephrology, General Medicine'),
  (17, 'Basaveshwara Medical College Hospital', 'NH-206', 'Chitradurga', 'Karnataka', '577501', '08194-222-333', 'info@bmch.org', 950, 'Cardiology, Urology'),
  (18, 'SS Institute of Medical Sciences', 'NH-4 Bypass', 'Davangere', 'Karnataka', '577005', '08192-250-651', 'info@ssims.edu.in', 1150, 'Neurology, Pulmonology'),
  (19, 'BGS Global Institute of Medical Sciences', 'Kengeri', 'Bangalore', 'Karnataka', '560060', '080-2861-2323', 'info@bgsgims.edu.in', 900, 'Cardiology, Pediatrics'),
  (20, 'Adichunchanagiri Institute of Medical Sciences', 'Nagamangala', 'Mandya', 'Karnataka', '571448', '08234-287-135', 'info@adichunchanagiri.edu.in', 1300, 'General Surgery, Oncology');

DESC Tourist_places;
SELECT * FROM Tourist_places;

INSERT INTO Tourist_places (Place_id, Name, Location, City, State, Zip_code, Phone_number, Email, Opening_hours, Ticket_price)
VALUES (1, 'Mysore Palace', 'Sayyaji Rao Road', 'Mysore', 'Karnataka', '570001', '0821-242-1051', 'info@mysorepalace.gov.in', '10 AM - 5:30 PM', 50.00),
  (2, 'Coorg', 'Kodagu District', 'Madikeri', 'Karnataka', '571201', '08272-221-321', 'info@coorgtourism.com', 'Open 24 hours', 0.00),
       (3, 'Hampi', 'Bellary District', 'Hospet', 'Karnataka', '583239', '08394-241-474', 'info@hampitourism.com', '6 AM - 6 PM', 40.00),
       (4, 'Bannerghatta National Park', 'Bannerghatta Road', 'Bangalore', 'Karnataka', '560083', '080-2977-2500', 'info@bannerghattabiopark.org', '9 AM - 5 PM', 80.00),
       (5, 'Jog Falls', 'Shimoga District', 'Sagara', 'Karnataka', '577435', '08183-266-255', 'info@jogfalls.in', 'Open 24 hours', 0.00),
       (6, 'Nandi Hills', 'Chikkaballapur District', 'Nandi', 'Karnataka', '562103', '08156-263-468', 'info@nandihills.com', '6 AM - 10 PM', 20.00),
       (7, 'Badami Caves', 'Bagalkot District', 'Badami', 'Karnataka', '587201', '08357-222-793', 'info@badamicaves.in', '9 AM - 5 PM', 25.00),
       (8, 'Gokarna', 'Uttara Kannada District', 'Gokarna', 'Karnataka', '581326', '08386-257-424', 'info@gokarnatourism.com', 'Open 24 hours', 0.00),
       (9, 'Chikmagalur', 'Chikmagalur District', 'Chikmagalur', 'Karnataka', '577101', '08262-232-085', 'info@chikmagalurtourism.com', 'Open 24 hours', 0.00),
       (10, 'Shravanabelagola', 'Hassan District', 'Shravanabelagola', 'Karnataka', '573135', '08176-257-423', 'info@shravanabelagola.com', '6 AM - 6 PM', 30.00),
       (11, 'Belur and Halebidu', 'Hassan District', 'Belur', 'Karnataka', '573115', '08177-232-927', 'info@belurhalebidu.com', '7 AM - 7 PM', 20.00),
       (12, 'Murudeshwar', 'Uttara Kannada District', 'Murudeshwar', 'Karnataka', '581350', '08385-260-573', 'info@murudeshwartourism.com', '6 AM - 8 PM', 10.00),
  (13, 'Kudremukh', 'Chikmagalur District', 'Kudremukh', 'Karnataka', '577142', '08263-234-203', 'info@kudremukhtourism.com', '6 AM - 6 PM', 0.00),
       (14, 'Bijapur', 'Bijapur District', 'Bijapur', 'Karnataka', '586101', '08352-270-755', 'info@bijapurtourism.com', 'Open 24 hours', 0.00),
       (15, 'Agumbe', 'Shimoga District', 'Agumbe', 'Karnataka', '577411', '08181-233-263', 'info@agumbetourism.com', 'Open 24 hours', 0.00),
  (16, 'Kabini', 'Mysore District', 'Kabini', 'Karnataka', '571114', '08228-264-399', 'info@kabinitourism.com', '6 AM - 6 PM', 100.00),
       (17, 'Chitradurga Fort', 'Chitradurga District', 'Chitradurga', 'Karnataka', '577501', '08194-223-200', 'info@chitradurgafort.com', '6 AM - 6 PM', 25.00),
       (18, 'Dandeli', 'Uttara Kannada District', 'Dandeli', 'Karnataka', '581325', '08284-231-585', 'info@dandelitourism.com', 'Open 24 hours', 0.00),
       (19, 'Lalbagh Botanical Garden', 'Lalbagh Road', 'Bangalore', 'Karnataka', '560004', '080-2657-8184', 'info@lalbaghbotanicalgarden.com', '6 AM - 7 PM', 20.00),
       (20, 'Brindavan Gardens', 'KRS Dam Road', 'Mysore', 'Karnataka', '571607', '08236-257-227', 'info@brindavangardens.com', '6:30 AM - 8 PM', 15.00);