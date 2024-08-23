CREATE DATABASE fOREST;
USE fOREST;
CREATE TABLE Districts (
    DistrictID INT PRIMARY KEY,
    DistrictName VARCHAR(50),
    Population INT,
    AreaSqKm INT,
    ForestCoverPercentage FLOAT,
    Latitude FLOAT,
    Longitude FLOAT,
    MajorRivers VARCHAR(100),
    MajorCities VARCHAR(100),
    DateEstablished DATE,
    HistoricalSignificance TEXT
);


CREATE TABLE Forests (
    ForestID INT PRIMARY KEY,
    ForestName VARCHAR(50),
    DistrictID INT,
    AreaSqKm INT,
    TypeOfForest VARCHAR(50),
    FloraAndFauna TEXT,
    ProtectedStatus BOOLEAN,
    AverageRainfall FLOAT,
    Accessibility VARCHAR(100),
    MajorRivers VARCHAR(100),
    MajorWildlifeSpecies VARCHAR(100),
    FOREIGN KEY (DistrictID) REFERENCES Districts(DistrictID)
);

CREATE TABLE WildlifeSanctuaries (
    SanctuaryID INT PRIMARY KEY,
    SanctuaryName VARCHAR(50),
    DistrictID INT,
    AreaSqKm INT,
    MajorWildlifeSpecies VARCHAR(100),
    TypeOfSanctuary VARCHAR(50),
    FloraAndFauna TEXT,
    ProtectedStatus BOOLEAN,
    NumberOfVisitors INT,
    DateEstablished DATE,
    NearbyForests VARCHAR(100),
    FOREIGN KEY (DistrictID) REFERENCES Districts(DistrictID)
);


CREATE TABLE Species (
    SpeciesID INT PRIMARY KEY,
    SpeciesName VARCHAR(50),
    ForestID INT,
    SanctuaryID INT,
    TypeOfSpecies VARCHAR(50),
    PopulationEstimate INT,
    EndangeredStatus BOOLEAN,
    PrimaryHabitat VARCHAR(100),
    ConservationEfforts TEXT,
    LastSpotted DATE,
    FOREIGN KEY (ForestID) REFERENCES Forests(ForestID),
    FOREIGN KEY (SanctuaryID) REFERENCES WildlifeSanctuaries(SanctuaryID)
);


INSERT INTO Districts VALUES 
(1, 'Bangalore', 10000000, 709, 15.2, 12.9716, 77.5946, 'Arkavathi, Vrishabhavathi', 'Bangalore City', '1950-01-01', 'Silicon Valley of India'),
(2, 'Mysore', 3000000, 1289, 21.7, 12.2958, 76.6394, 'Kaveri', 'Mysore City', '1799-07-01', 'City of Palaces'),
(3, 'Kodagu', 550000, 4102, 80.0, 12.3375, 75.8069, 'Kaveri', 'Madikeri', '1834-01-01', 'Coffee plantations'),
(4, 'Shivamogga', 1750000, 8465, 60.2, 13.9299, 75.5681, 'Tunga, Bhadra', 'Shivamogga City', '1950-01-01', 'Gateway to Malnad'),
(5, 'Udupi', 1170000, 3880, 44.5, 13.3409, 74.7421, 'Swarnamukhi', 'Udupi City', '1951-08-15', 'Cultural heritage'),
(6, 'Chikkamagaluru', 1140000, 7201, 67.2, 13.3161, 75.7749, 'Tunga, Bhadra', 'Chikkamagaluru City', '1956-11-01', 'Coffee and Tea plantations'),
(7, 'Chamarajanagar', 1020000, 5685, 60.0, 11.9239, 76.9405, 'Kaveri', 'Chamarajanagar City', '1997-08-15', 'Wildlife sanctuaries'),
(8, 'Hassan', 1770000, 6826, 39.5, 13.0072, 76.0962, 'Hemavati', 'Hassan City', '1956-11-01', 'Hoysala architecture'),
(9, 'Uttara Kannada', 1430000, 10291, 74.0, 14.8183, 74.1357, 'Sharavathi', 'Karwar', '1956-11-01', 'Western Ghats'),
(10, 'Dharwad', 1840000, 4263, 37.2, 15.4589, 75.0078, 'Malaprabha', 'Hubli-Dharwad', '1960-11-01', 'Educational hub'),
(11, 'Belgaum', 4770000, 13415, 32.8, 15.8497, 74.4977, 'Krishna', 'Belgaum City', '1956-11-01', 'Historical monuments'),
(12, 'Bagalkot', 1890000, 6575, 20.2, 16.1763, 75.6961, 'Ghataprabha', 'Bagalkot City', '1997-08-15', 'Chalukyan architecture'),
(13, 'Ballari', 2500000, 8447, 21.5, 15.1394, 76.9214, 'Tungabhadra', 'Ballari City', '1953-08-15', 'Mining industry'),
(14, 'Bidar', 1700000, 5448, 24.5, 17.9147, 77.5275, 'Manjra', 'Bidar City', '1956-11-01', 'Historical forts'),
(15, 'Raichur', 1920000, 6820, 18.0, 16.2019, 77.3564, 'Krishna', 'Raichur City', '1956-11-01', 'Thermal power plants');


INSERT INTO Forests VALUES 
(1, 'Bandipur National Park', 7, 874, 'Dry Deciduous Forest', 'Tigers, Elephants, Deer', TRUE, 1300, 'Accessible via NH 766', 'Kabini', 'Tigers, Elephants'),
(2, 'Nagarhole National Park', 6, 643, 'Tropical and Subtropical Moist Broadleaf Forests', 'Tigers, Elephants, Leopards', TRUE, 1440, 'Accessible via SH 33', 'Kabini', 'Tigers, Elephants'),
(3, 'Bannerghatta National Park', 1, 260, 'Dry Deciduous Forest', 'Elephants, Deer, Bears', TRUE, 900, 'Accessible via SH 87', 'Suvarnamukhi', 'Elephants, Bears'),
(4, 'Kudremukh National Park', 6, 600, 'Tropical Wet Evergreen Forest', 'Tigers, Leopards, Birds', TRUE, 6000, 'Accessible via NH 169', 'Bhadra', 'Tigers, Leopards'),
(5, 'Dandeli Wildlife Sanctuary', 9, 834, 'Mixed Deciduous Forest', 'Elephants, Black Panthers, Crocodiles', TRUE, 4000, 'Accessible via SH 46', 'Kali', 'Elephants, Black Panthers'),
(6, 'Bhadra Wildlife Sanctuary', 6, 492, 'Moist Deciduous Forest', 'Elephants, Tigers, Deer', TRUE, 2850, 'Accessible via NH 69', 'Bhadra', 'Elephants, Tigers'),
(7, 'Anshi National Park', 9, 340, 'Evergreen Forest', 'Leopards, Bears, Elephants', TRUE, 3700, 'Accessible via SH 34', 'Kali', 'Leopards, Elephants'),
(8, 'Pushpagiri Wildlife Sanctuary', 3, 102, 'Shola Forest', 'Deer, Birds, Insects', TRUE, 6500, 'Accessible via NH 275', 'Kumaradhara', 'Deer, Birds'),
(9, 'Mookambika Wildlife Sanctuary', 9, 247, 'Tropical Wet Evergreen Forest', 'Elephants, Leopards, Birds', TRUE, 4200, 'Accessible via SH 52', 'Kollur', 'Elephants, Leopards'),
(10, 'Arabithittu Wildlife Sanctuary', 2, 13, 'Dry Deciduous Forest', 'Deer, Peacocks', TRUE, 1200, 'Accessible via NH 275', 'Lakshmana Tirtha', 'Deer, Peacocks'),
(11, 'Biligiri Rangaswamy Temple Wildlife Sanctuary', 7, 540, 'Mixed Deciduous Forest', 'Elephants, Tigers, Gaurs', TRUE, 1600, 'Accessible via NH 766', 'Suvarnavathi', 'Elephants, Tigers'),
(12, 'Nugu Wildlife Sanctuary', 7, 30, 'Dry Deciduous Forest', 'Deer, Peacocks, Wild Boar', TRUE, 1100, 'Accessible via SH 57', 'Nugu', 'Deer, Peacocks'),
(13, 'Melukote Temple Wildlife Sanctuary', 8, 49, 'Dry Deciduous Forest', 'Wolves, Deer, Peacocks', TRUE, 1400, 'Accessible via NH 48', 'Hemavati', 'Wolves, Deer'),
(14, 'Brahmagiri Wildlife Sanctuary', 3, 181, 'Shola Forest', 'Elephants, Tigers, Leopards', TRUE, 6500, 'Accessible via SH 91', 'Kaveri', 'Elephants, Tigers'),
(15, 'Someshwara Wildlife Sanctuary', 6, 88, 'Evergreen Forest', 'Elephants, Tigers, Leopards', TRUE, 5800, 'Accessible via NH 169', 'Seetha', 'Elephants, Tigers');


INSERT INTO WildlifeSanctuaries VALUES 
(1, 'Bandipur Tiger Reserve', 7, 874, 'Tigers, Elephants', 'Tiger Reserve', 'Tigers, Elephants, Deer', TRUE, 250000, '1973-04-01', 'Bandipur National Park'),
(2, 'Nagarhole Tiger Reserve', 6, 643, 'Tigers, Elephants', 'Tiger Reserve', 'Tigers, Elephants, Leopards', TRUE, 200000, '1988-12-01', 'Nagarhole National Park'),
(3, 'Biligiri Rangaswamy Temple Sanctuary', 7, 540, 'Elephants, Tigers', 'Wildlife Sanctuary', 'Elephants, Tigers, Gaurs', TRUE, 150000, '1974-06-01', 'Biligiri Rangaswamy Temple Wildlife Sanctuary'),
(4, 'Cauvery Wildlife Sanctuary', 3, 1027, 'Elephants, Crocodiles', 'Wildlife Sanctuary', 'Elephants, Crocodiles, Birds', TRUE, 50000, '1987-07-01', 'Kudremukh National Park'),
(5, 'Dandeli Elephant Reserve', 9, 834, 'Elephants, Black Panthers', 'Elephant Reserve', 'Elephants, Black Panthers, Crocodiles', TRUE, 100000, '1998-10-01', 'Dandeli Wildlife Sanctuary'),
(6, 'Bhadra Tiger Reserve', 6, 492, 'Tigers, Elephants', 'Tiger Reserve', 'Elephants, Tigers, Deer', TRUE, 120000, '1998-12-01', 'Bhadra Wildlife Sanctuary'),
(7, 'Anshi Wildlife Sanctuary', 9, 340, 'Leopards, Elephants', 'Wildlife Sanctuary', 'Leopards, Bears, Elephants', TRUE, 80000, '2002-11-01', 'Anshi National Park'),
(8, 'Pushpagiri Wildlife Sanctuary', 3, 102, 'Birds, Deer', 'Wildlife Sanctuary', 'Deer, Birds, Insects', TRUE, 60000, '1987-11-01', 'Pushpagiri Wildlife Sanctuary'),
(9, 'Mookambika Wildlife Sanctuary', 9, 247, 'Elephants, Leopards', 'Wildlife Sanctuary', 'Elephants, Leopards, Birds', TRUE, 70000, '1974-12-01', 'Mookambika Wildlife Sanctuary'),
(10, 'Arabithittu Wildlife Sanctuary', 2, 13, 'Deer, Peacocks', 'Wildlife Sanctuary', 'Deer, Peacocks', TRUE, 10000, '1985-06-01', 'Arabithittu Wildlife Sanctuary'),
(11, 'Nugu Wildlife Sanctuary', 7, 30, 'Deer, Peacocks', 'Wildlife Sanctuary', 'Deer, Peacocks, Wild Boar', TRUE, 15000, '1983-08-01', 'Nugu Wildlife Sanctuary'),
(12, 'Melukote Wildlife Sanctuary', 8, 49, 'Wolves, Deer', 'Wildlife Sanctuary', 'Wolves, Deer, Peacocks', TRUE, 30000, '1972-09-01', 'Melukote Temple Wildlife Sanctuary'),
(13, 'Brahmagiri Wildlife Sanctuary', 3, 181, 'Elephants, Leopards', 'Wildlife Sanctuary', 'Elephants, Tigers, Leopards', TRUE, 50000, '1974-10-01', 'Brahmagiri Wildlife Sanctuary'),
(14, 'Someshwara Wildlife Sanctuary', 6, 88, 'Elephants, Tigers', 'Wildlife Sanctuary', 'Elephants, Tigers, Leopards', TRUE, 20000, '1974-03-01', 'Someshwara Wildlife Sanctuary'),
(15, 'Bannerghatta Biological Park', 1, 260, 'Elephants, Bears', 'Biological Park', 'Elephants, Deer, Bears', TRUE, 350000, '1971-01-01', 'Bannerghatta National Park');

INSERT INTO Species VALUES 
(1, 'Tiger', 1, 1, 'Mammal', 150, TRUE, 'Dense Forests', 'Project Tiger', '2023-06-15'),
(2, 'Elephant', 2, 2, 'Mammal', 200, TRUE, 'Forests, Grasslands', 'Project Elephant', '2023-05-20'),
(3, 'Leopard', 4, 13, 'Mammal', 120, TRUE, 'Forests, Rocky Terrains', 'Conservation Efforts', '2023-04-10'),
(4, 'Sloth Bear', 3, 15, 'Mammal', 80, TRUE, 'Forests', 'Habitat Conservation', '2023-03-12'),
(5, 'Black Panther', 5, 5, 'Mammal', 30, TRUE, 'Dense Forests', 'Conservation Efforts', '2023-02-18'),
(6, 'Gaur', 6, 3, 'Mammal', 100, TRUE, 'Forests, Grasslands', 'Habitat Preservation', '2023-01-25'),
(7, 'Deer', 3, 8, 'Mammal', 500, FALSE, 'Grasslands, Forests', 'Population Monitoring', '2023-07-05'),
(8, 'Crocodile', 5, 4, 'Reptile', 60, TRUE, 'Rivers, Marshes', 'Species Protection', '2023-06-25'),
(9, 'Peacock', 10, 10, 'Bird', 300, FALSE, 'Open Forests, Grasslands', 'Conservation Efforts', '2023-05-30'),
(10, 'Wild Boar', 12, 11, 'Mammal', 70, FALSE, 'Forests', 'Population Control', '2023-04-20'),
(11, 'Wolf', 13, 12, 'Mammal', 40, TRUE, 'Open Grasslands, Forests', 'Species Protection', '2023-03-15'),
(12, 'Elephant', 7, 7, 'Mammal', 200, TRUE, 'Forests, Grasslands', 'Project Elephant', '2023-02-28'),
(13, 'Leopard', 9, 9, 'Mammal', 80, TRUE, 'Forests, Rocky Terrains', 'Conservation Efforts', '2023-01-10'),
(14, 'Tiger', 14, 6, 'Mammal', 50, TRUE, 'Dense Forests', 'Project Tiger', '2023-07-10'),
(15, 'Birds', 8, 8, 'Bird', 600, FALSE, 'Forests', 'Bird Conservation', '2023-08-01');

ALTER TABLE Forests DROP FOREIGN KEY fk_forests_districtid;
ALTER TABLE WildlifeSanctuaries DROP FOREIGN KEY fk_wildlifesanctuaries_districtid;
ALTER TABLE Species DROP FOREIGN KEY fk_species_forestid;
ALTER TABLE Species DROP FOREIGN KEY fk_species_sanctuaryid;