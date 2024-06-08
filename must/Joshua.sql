CREATE DATABASE JoshuaRestarant;
Use JoshuaRestarant;
-- Create customers table
CREATE TABLE IF NOT EXISTS `customers` (
  `CustomerID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL,
  `LastName` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Address` VARCHAR(100) NOT NULL,
  `City` VARCHAR(50) NOT NULL,
  `Phone` VARCHAR(20) NOT NULL,
  `Birthday` DATE NOT NULL,
  `FavoriteDish` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`CustomerID`)
);

-- Create orders table
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` INT NOT NULL,
  `OrderDate` DATE NOT NULL,
  PRIMARY KEY (`OrderID`),
  FOREIGN KEY (`CustomerID`) REFERENCES `customers`(`CustomerID`)
);

-- Create dishes table
CREATE TABLE IF NOT EXISTS `dishes` (
  `DishID` INT NOT NULL AUTO_INCREMENT,
  `Quality` VARCHAR(20) NOT NULL,
  `DishDescription` VARCHAR(100) NOT NULL,
  `CustomerID` INT NOT NULL,
  PRIMARY KEY (`DishID`),
  FOREIGN KEY (`CustomerID`) REFERENCES `customers`(`CustomerID`)
);

-- Create dishesorders table
CREATE TABLE IF NOT EXISTS `dishesorders` (
  `DishesOrdersID` INT NOT NULL AUTO_INCREMENT,
  `DishID` INT NOT NULL,
  `OrderID` INT NOT NULL,
  PRIMARY KEY (`DishesOrdersID`),
  FOREIGN KEY (`DishID`) REFERENCES `dishes`(`DishID`),
  FOREIGN KEY (`OrderID`) REFERENCES `orders`(`OrderID`)
);

-- Insert data into customers table
INSERT INTO `customers`(`FirstName`, `LastName`, `Email`, `Address`, `City`, `Phone`, `Birthday`, `FavoriteDish`) VALUES 
('Fatima', 'Mohammed', 'fatima.mohammed@example.com', '123 Kilimani St', 'Dar es Salaam', '+255 700 123456', '1990-08-15', 'Ugali with Fish Curry'),
('Rashid', 'Makame', 'rashid.makame@example.com', '456 Mnazi Mmoja St', 'Zanzibar', '+255 777 987654', '1985-03-20', 'Pilau'),
('Aisha', 'Said', 'aisha.said@example.com', '789 Kenyatta Rd', 'Arusha', '+255 787 654321', '1978-11-10', 'Nyama Choma'),
('Juma', 'Mwinyi', 'juma.mwinyi@example.com', '321 Makumbusho St', 'Dodoma', '+255 716 111222', '1988-06-25', 'Mshikaki'),
('Zainab', 'Musa', 'zainab.musa@example.com', '654 Uhuru St', 'Mwanza', '+255 754 333444', '1995-01-03', 'Chapati with Beef Stew'),
('Said', 'Hamisi', 'said.hamisi@example.com', '987 Kariakoo St', 'Morogoro', '+255 783 556677', '1983-09-18', 'Pilipili Chicken'),
('Mariam', 'Juma', 'mariam.juma@example.com', '741 Samora St', 'Mbeya', '+255 767 778899', '1990-12-30', 'Matoke'),
('Hassan', 'Rashid', 'hassan.rashid@example.com', '369 Mzinga Rd', 'Tanga', '+255 718 990011', '1992-06-08', 'Kachumbari Salad'),
('Amina', 'Juma', 'amina.juma@example.com', '852 Mbagala St', 'Mbagala', '+255 715 112233', '1983-04-17', 'Mishkaki'),
('Salim', 'Khamis', 'salim.khamis@example.com', '147 Magomeni St', 'Mtwara', '+255 789 334455', '1976-10-05', 'Kuku Wa Kupaka'),
('Nuru', 'Mbaraka', 'nuru.mbaraka@example.com', '258 Sinza St', 'Kinondoni', '+255 717 556677', '1998-02-12', 'Ndizi Nyama'),
('Hamisi', 'Juma', 'hamisi.juma@example.com', '369 Mwenge St', 'Morogoro', '+255 755 778899', '1981-07-24', 'Biryani'),
('Zuwena', 'Rashidi', 'zuwena.rashidi@example.com', '741 Mlimani St', 'Moshi', '+255 780 990011', '1990-03-19', 'Maharage Ya Nazi'),
('Ali', 'Mussa', 'ali.mussa@example.com', '147 Boma Rd', 'Dodoma', '+255 712 112233', '1974-11-28', 'Mchuzi Wa Samaki'),
('Zainabu', 'Suleiman', 'zainabu.suleiman@example.com', '258 Pugu Rd', 'Temeke', '+255 767 334455', '1987-09-14', 'Wali Na Kuku'),
('Juma', 'Omar', 'juma.omar@example.com', '369 Buguruni St', 'Ilala', '+255 713 556677', '1995-05-22', 'Supu Ya Ndizi'),
('Halima', 'Hassan', 'halima.hassan@example.com', '123 Kibaha St', 'Kibaha', '+255 758 778899', '1984-08-07', 'Kisamvu'),
('Musa', 'Juma', 'musa.juma@example.com', '456 Bagamoyo Rd', 'Bagamoyo', '+255 711 990011', '1991-02-01', 'Mandazi'),
('Fatma', 'Salim', 'fatma.salim@example.com', '789 Ifakara St', 'Ifakara', '+255 780 112233', '1977-06-09', 'Nyama Ya Nguruwe'),
('Hemed', 'Ali', 'hemed.ali@example.com', '654 Songea St', 'Songea', '+255 769 334455', '1982-12-03', 'Kitumbua');

-- Insert data into orders table
INSERT INTO `orders`(`CustomerID`, `OrderDate`) VALUES 
(1, '2024-01-01'),
(2, '2024-01-02'),
(3, '2024-01-03'),
(4, '2024-01-04'),
(5, '2024-01-05'),
(6, '2024-01-06'),
(7, '2024-01-07'),
(8, '2024-01-08'),
(9, '2024-01-09'),
(10, '2024-01-10'),
(11, '2024-01-11'),
(12, '2024-01-12'),
(13, '2024-01-13'),
(14, '2024-01-14'),
(15, '2024-01-15'),
(16, '2024-01-16'),
(17, '2024-01-17'),
(18, '2024-01-18'),
(19, '2024-01-19'),
(20, '2024-01-20');

-- Insert data into dishes table
INSERT INTO `dishes`(`Quality`, `DishDescription`, `CustomerID`) VALUES 
('High', 'Ugali with Fish Curry', 1),
('Medium', 'Pilau', 2),
('Low', 'Nyama Choma', 3),
('High', 'Mshikaki', 4),
('Medium', 'Chapati with Beef Stew', 5),
('Low', 'Pilipili Chicken', 6),
('High', 'Matoke', 7),
('Medium', 'Kachumbari Salad', 8),
('Low', 'Mishkaki', 9),
('High', 'Kuku Wa Kupaka', 10),
('Medium', 'Ndizi Nyama', 11),
('Low', 'Biryani', 12),
('High', 'Maharage Ya Nazi', 13),
('Medium', 'Mchuzi Wa Samaki', 14),
('Low', 'Wali Na Kuku', 15),
('High', 'Supu Ya Ndizi', 16),
('Medium', 'Kisamvu', 17),
('Low', 'Mandazi', 18),
('High', 'Nyama Ya Nguruwe', 19),
('Medium', 'Kitumbua', 20);

-- Insert data into dishesorders table
INSERT INTO `dishesorders`(`DishID`, `OrderID`) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);
