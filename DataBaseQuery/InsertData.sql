-- Insert data into Users table (IsEmailConfirmed uses bit)
INSERT INTO Users (UserName, Email, PassWordHash, FullName, Phone, IsEmailConfirmed, AvatarUrl)
VALUES 
('user1', 'user1@example.com', 'hash1', 'Nguyen Van A', '0123456781', 1, 'avatar1.jpg'),
('user2', 'user2@example.com', 'hash2', 'Tran Thi B', '0123456782', 0, 'avatar2.jpg'),
('user3', 'user3@example.com', 'hash3', 'Le Van C', '0123456783', 1, NULL),
('user4', 'user4@example.com', 'hash4', 'Pham Thi D', '0123456784', 0, 'avatar4.jpg'),
('user5', 'user5@example.com', 'hash5', 'Hoang Van E', '0123456785', 1, NULL),
('user6', 'user6@example.com', 'hash6', 'Nguyen Thi F', '0123456786', 0, 'avatar6.jpg'),
('user7', 'user7@example.com', 'hash7', 'Tran Van G', '0123456787', 1, NULL),
('user8', 'user8@example.com', 'hash8', 'Le Thi H', '0123456788', 0, 'avatar8.jpg'),
('user9', 'user9@example.com', 'hash9', 'Pham Van I', '0123456789', 1, NULL),
('user10', 'user10@example.com', 'hash10', 'Hoang Thi J', '0123456790', 0, 'avatar10.jpg');

-- Insert data into Addresses table (IsDefault uses bit)
INSERT INTO Addresses (Address, FullName, Phone, Province, District, Ward, Street, IsDefault, CreatedAt, UserID)
VALUES 
('123 Nguyen Hue', 'Nguyen Van A', '0123456781', 'Hanoi', 0x48616E6F69, 'Ward1', 'Street1', 1, '2025-06-26', 1),
('456 Le Loi', 'Tran Thi B', '0123456782', 'HCMC', 0x48434D43, 'Ward2', 'Street2', 0, '2025-06-26', 2),
('789 Tran Hung Dao', 'Le Van C', '0123456783', 'Danang', 0x44616E616E67, 'Ward3', 'Street3', 1, '2025-06-26', 3),
('101 Ngo Quyen', 'Pham Thi D', '0123456784', 'Hue', 0x487565, 'Ward4', 'Street4', 0, '2025-06-26', 4),
('202 Ly Thuong Kiet', 'Hoang Van E', '0123456785', 'Cantho', 0x43616E74686F, 'Ward5', 'Street5', 1, '2025-06-26', 5),
('303 Hai Ba Trung', 'Nguyen Thi F', '0123456786', 'Hanoi', 0x48616E6F69, 'Ward6', 'Street6', 0, '2025-06-26', 6),
('404 Pham Van Dong', 'Tran Van G', '0123456787', 'HCMC', 0x48434D43, 'Ward7', 'Street7', 1, '2025-06-26', 7),
('505 Vo Van Tan', 'Le Thi H', '0123456788', 'Danang', 0x44616E616E67, 'Ward8', 'Street8', 0, '2025-06-26', 8),
('606 Nguyen Trai', 'Pham Van I', '0123456789', 'Hue', 0x487565, 'Ward9', 'Street9', 1, '2025-06-26', 9),
('707 Le Duan', 'Hoang Thi J', '0123456790', 'Cantho', 0x43616E74686F, 'Ward10', 'Street10', 0, '2025-06-26', 10);

-- Insert data into Authors table
INSERT INTO Authors (AuthorName, Biography)
VALUES 
('Nguyen Nhat Anh', 'Famous Vietnamese author'),
('To Hoai', 'Known for De Men Phieu Luu Ky'),
('Nam Cao', 'Realist literature writer'),
('Xuan Dieu', 'Romantic poet and writer'),
('Tolkien', 'Fantasy author of LOTR'),
('Rowling', 'Author of Harry Potter'),
('George Orwell', 'Author of 1984'),
('Jane Austen', 'Classic novelist'),
('Mark Twain', 'American writer'),
('Agatha Christie', 'Mystery novelist');

-- Insert data into Categories table
INSERT INTO Categories (CategoryName, Description)
VALUES 
('Fiction', 'Fictional literature'),
('Non-Fiction', 'Real events and facts'),
('Fantasy', 'Fantasy and magic'),
('Mystery', 'Crime and detective'),
('Romance', 'Love stories'),
('Science Fiction', 'Futuristic concepts'),
('Biography', 'Life stories'),
('History', 'Historical events'),
('Poetry', 'Poetic works'),
('Children', 'Books for kids');

-- Insert data into Publishers table
INSERT INTO Publishers (PublisherName, Address)
VALUES 
('NXB Tre', 'Hanoi'),
('NXB Kim Dong', 'HCMC'),
('NXB Van Hoc', 'Danang'),
('NXB Hoi Nha Van', 'Hue'),
('NXB Tong Hop', 'Cantho'),
('NXB Phu Nu', 'Hanoi'),
('NXB Giao Duc', 'HCMC'),
('NXB Chinh Tri', 'Danang'),
('NXB Lao Dong', 'Hue'),
('NXB The Gioi', 'Cantho');

-- Insert data into Books table
INSERT INTO Books (Price, Title, Description, Stock, CreatedAt, CategoryID, AuthorID)
VALUES 
(100000, 'Toi Thay Hoa Vang Tren Co Xanh', 'Coming-of-age story', 50, '2025-06-26', 1, 1),
(120000, 'De Men Phieu Luu Ky', 'Adventure tale', 30, '2025-06-26', 10, 2),
(150000, 'Chí Pheo', 'Realist novel', 40, '2025-06-26', 1, 3),
(80000, 'Tay Du Ky', 'Classic adventure', 60, '2025-06-26', 3, 4),
(200000, 'The Hobbit', 'Fantasy epic', 20, '2025-06-26', 3, 5),
(180000, 'Harry Potter', 'Wizarding world', 25, '2025-06-26', 3, 6),
(130000, '1984', 'Dystopian novel', 35, '2025-06-26', 6, 7),
(110000, 'Pride and Prejudice', 'Romance novel', 45, '2025-06-26', 5, 8),
(90000, 'Tom Sawyer', 'Adventure story', 55, '2025-06-26', 1, 9),
(140000, 'Murder on the Orient Express', 'Mystery novel', 30, '2025-06-26', 4, 10);

-- Insert data into BookImages table (IsCover uses bit)
INSERT INTO BookImages (ImageUrl, IsCover, BookID)
VALUES 
('image1.jpg', 1, 1),
('image2.jpg', 0, 1),
('image3.jpg', 1, 2),
('image4.jpg', 0, 2),
('image5.jpg', 1, 3),
('image6.jpg', 0, 3),
('image7.jpg', 1, 4),
('image8.jpg', 0, 4),
('image9.jpg', 1, 5),
('image10.jpg', 0, 5);

-- Insert data into BookPublishers table
INSERT INTO BookPublishers (Role, BookID, PublisherID)
VALUES 
('Publisher', 1, 1),
('Distributor', 1, 2),
('Publisher', 2, 3),
('Distributor', 2, 4),
('Publisher', 3, 5),
('Distributor', 3, 6),
('Publisher', 4, 7),
('Distributor', 4, 8),
('Publisher', 5, 9),
('Distributor', 5, 10);

-- Insert data into Orders table
INSERT INTO Orders (UserID, AddressID, OrderStatus, TotalAmount, PaymentMethod, CreatedDate, UpdatedDate)
VALUES 
(1, 1, 'Pending', 200000, 'Cash', '2025-06-26', '2025-06-26'),
(2, 2, 'Shipped', 240000, 'Card', '2025-06-26', '2025-06-26'),
(3, 3, 'Delivered', 300000, 'Cash', '2025-06-26', '2025-06-26'),
(4, 4, 'Pending', 160000, 'Card', '2025-06-26', '2025-06-26'),
(5, 5, 'Shipped', 400000, 'Cash', '2025-06-26', '2025-06-26'),
(6, 6, 'Delivered', 360000, 'Card', '2025-06-26', '2025-06-26'),
(7, 7, 'Pending', 260000, 'Cash', '2025-06-26', '2025-06-26'),
(8, 8, 'Shipped', 220000, 'Card', '2025-06-26', '2025-06-26'),
(9, 9, 'Delivered', 180000, 'Cash', '2025-06-26', '2025-06-26'),
(10, 10, 'Pending', 280000, 'Card', '2025-06-26', '2025-06-26');

-- Insert data into OrderDetails table
INSERT INTO OrderDetails (OrderID, BookID, Quantity, UnitPrice, OrdersPaymentMethod)
VALUES 
(1, 1, 2, 100000, 'Cash'),
(2, 2, 2, 120000, 'Card'),
(3, 3, 2, 150000, 'Cash'),
(4, 4, 2, 80000, 'Card'),
(5, 5, 2, 200000, 'Cash'),
(6, 6, 2, 180000, 'Card'),
(7, 7, 2, 130000, 'Cash'),
(8, 8, 2, 110000, 'Card'),
(9, 9, 2, 90000, 'Cash'),
(10, 10, 2, 140000, 'Card');

-- Insert data into Payments table
INSERT INTO Payments (PaymentMethod, PaymentStatus, TransactionCode, Amount, PaymentDate, CreatedDate, OrderID, UserID, OrdersPaymentMethod)
VALUES 
('Cash', 'Completed', 'TXN001', 200000, '2025-06-26', '2025-06-26', 1, 1, 1),
('Card', 'Completed', 'TXN002', 240000, '2025-06-26', '2025-06-26', 2, 2, 2),
('Cash', 'Completed', 'TXN003', 300000, '2025-06-26', '2025-06-26', 3, 3, 3),
('Card', 'Completed', 'TXN004', 160000, '2025-06-26', '2025-06-26', 4, 4, 4),
('Cash', 'Completed', 'TXN005', 400000, '2025-06-26', '2025-06-26', 5, 5, 5),
('Card', 'Completed', 'TXN006', 360000, '2025-06-26', '2025-06-26', 6, 6, 6),
('Cash', 'Completed', 'TXN007', 260000, '2025-06-26', '2025-06-26', 7, 7, 7),
('Card', 'Completed', 'TXN008', 220000, '2025-06-26', '2025-06-26', 8, 8, 8),
('Cash', 'Completed', 'TXN009', 180000, '2025-06-26', '2025-06-26', 9, 9, 9),
('Card', 'Completed', 'TXN010', 280000, '2025-06-26', '2025-06-26', 10, 10, 10);

-- Insert data into Permission table
INSERT INTO Permission (PermissionKey, Description)
VALUES 
('VIEW_BOOKS', 'View book details'),
('EDIT_BOOKS', 'Edit book details'),
('DELETE_BOOKS', 'Delete books'),
('MANAGE_ORDERS', 'Manage orders'),
('VIEW_USERS', 'View user details'),
('EDIT_USERS', 'Edit user details'),
('MANAGE_PAYMENTS', 'Manage payments'),
('VIEW_REVIEWS', 'View reviews'),
('APPROVE_REVIEWS', 'Approve reviews'),
('MANAGE_CATEGORIES', 'Manage categories');

-- Insert data into Roles table
INSERT INTO Roles (RoleName, Description)
VALUES 
('Admin', 'Administrator role'),
('User', 'Regular user role'),
('Editor', 'Content editor role'),
('Moderator', 'Review moderator role'),
('Manager', 'Store manager role'),
('Customer', 'Customer role'),
('Guest', 'Guest user role'),
('Publisher', 'Publisher role'),
('Author', 'Author role'),
('Support', 'Customer support role');

-- Insert data into UserRoles table (corrected table name)
INSERT INTO UserRoles (UserID, RoleID)
VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

-- Insert data into RolePermissions table
INSERT INTO RolePermissions (RoleID, PermissionID)
VALUES 
(1, 1), (1, 2), (1, 3), (2, 1), (3, 2),
(4, 4), (5, 5), (6, 6), (7, 7), (8, 8);

-- Insert data into Reviews table (IsApproved uses bit)
INSERT INTO Reviews (Rating, Comment, CreatedAt, IsApproved, BookID, UserID)
VALUES 
(5, 'Great book!', '2025-06-26', 1, 1, 1),
(4, 'Enjoyable read', '2025-06-26', 0, 2, 2),
(3, 'Good story', '2025-06-26', 1, 3, 3),
(4, 'Nice plot', '2025-06-26', 0, 4, 4),
(5, 'Amazing!', '2025-06-26', 1, 5, 5),
(3, 'Interesting', '2025-06-26', 0, 6, 6),
(4, 'Well written', '2025-06-26', 1, 7, 7),
(5, 'Loved it!', '2025-06-26', 0, 8, 8),
(3, 'Decent book', '2025-06-26', 1, 9, 9),
(4, 'Good read', '2025-06-26', 0, 10, 10);

-- Insert data into ReviewMedia table
INSERT INTO ReviewMedia (ReviewID, MediaUrl, MediaType)
VALUES 
(1, 'media1.jpg', 'Image'),
(2, 'media2.jpg', 'Image'),
(3, 'media3.jpg', 'Image'),
(4, 'media4.jpg', 'Image'),
(5, 'media5.jpg', 'Image'),
(6, 'media6.jpg', 'Image'),
(7, 'media7.jpg', 'Image'),
(8, 'media8.jpg', 'Image'),
(9, 'media9.jpg', 'Image'),
(10, 'media10.jpg', 'Image');

-- Insert data into SystemLogs table
INSERT INTO SystemLogs (UserID, Action, Message, Data, CreatedAt)
VALUES 
(1, 'Login', 'User logged in', 'IP: 192.168.1.1', '2025-06-26'),
(2, 'Purchase', 'User placed order', 'OrderID: 1', '2025-06-26'),
(3, 'Review', 'User submitted review', 'ReviewID: 1', '2025-06-26'),
(4, 'Update', 'User updated profile', 'UserID: 4', '2025-06-26'),
(5, 'Login', 'User logged in', 'IP: 192.168.1.2', '2025-06-26'),
(6, 'Purchase', 'User placed order', 'OrderID: 2', '2025-06-26'),
(7, 'Review', 'User submitted review', 'ReviewID: 2', '2025-06-26'),
(8, 'Update', 'User updated address', 'AddressID: 8', '2025-06-26'),
(9, 'Login', 'User logged in', 'IP: 192.168.1.3', '2025-06-26'),
(10, 'Purchase', 'User placed order', 'OrderID: 3', '2025-06-26');