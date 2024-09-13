SELECT C.CustomerID, COUNT(*) AS NumberOfPolociesOwned
FROM Customer C
JOIN Policy P ON P.CustomerID = C.CustomerID
GROUP BY C.CustomerID;
