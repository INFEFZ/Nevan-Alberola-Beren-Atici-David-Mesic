CREATE TABLE Cards (
    CardID INT IDENTITY(1,1) PRIMARY KEY,  -- Primary key
    FirstName NVARCHAR(50) NOT NULL,       -- Cardholder's first name
    LastName NVARCHAR(50) NOT NULL,        -- Cardholder's last name
    CardNumber NVARCHAR(16) NOT NULL,      -- Card number (stored as a string)
    CVV NVARCHAR(4) NOT NULL,              -- Card security code (CVV)
    ExpiryDate NVARCHAR(5) NOT NULL,       -- Expiry date (format MM/YY)
    CardType NVARCHAR(20) NOT NULL,        -- Card type (e.g., Visa, MasterCard)
);

CREATE TABLE Logs (
    LogID INT IDENTITY(1,1) PRIMARY KEY,   -- Primary key for each log entry
    CardNumber NVARCHAR(16) NOT NULL,      -- The card number for which the validation was attempted
    Success BIT NOT NULL,                  -- Whether the validation was successful (1 = success, 0 = failure)
    AttemptDate DATETIME DEFAULT GETDATE() -- Date and time of the validation attempt
);

INSERT INTO Cards (FirstName, LastName, CardNumber, CVV, ExpiryDate, CardType, IsLocked)
VALUES 
('John', 'Doe', '4111111111111111', '123', '12/25', 'Visa', 0),
('Jane', 'Smith', '5500000000000004', '456', '06/24', 'MasterCard',0),
('Mark', 'Taylor', '340000000000009', '789', '09/23', 'Amex', 0);
