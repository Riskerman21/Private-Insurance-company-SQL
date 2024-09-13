CREATE TABLE InsuranceClaim (
    ClaimID INT AUTO_INCREMENT PRIMARY KEY,        
    PolicyID VARCHAR(6),                                  
    ClaimDate DATE NOT NULL,                       
    ClaimAmount DECIMAL(10, 2) NOT NULL,           
    ClaimStatus VARCHAR(10),
    ClaimDescription VARCHAR(500),                 
    CONSTRAINT FK_Policy_Claim FOREIGN KEY (PolicyID) REFERENCES Policy(PolicyID)
);
