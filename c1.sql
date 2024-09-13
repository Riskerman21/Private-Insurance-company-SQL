CREATE TABLE InsuranceClaim (
    ClaimID INT AUTO_INCREMENT PRIMARY KEY,        
    PolicyID INT,                                  
    ClaimDate DATE NOT NULL,                       
    ClaimAmount DECIMAL(10, 2) NOT NULL,           
    ClaimStatus VARCHAR(10) CHECK (ClaimStatus IN ('Pending', 'Approved', 'Rejected')), 
    ClaimDescription VARCHAR(500),                 
    CONSTRAINT FK_Policy_Claim FOREIGN KEY (PolicyID) REFERENCES Policy(PolicyID)  
);
