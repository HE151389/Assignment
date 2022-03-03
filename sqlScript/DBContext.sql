--get listAccessories
SELECT [accessoryID],[accessoryName],Accessory.[accessoryTypeID],AccessoryTypeName,[accessoryQuantity],[accessoryPrice],[accessoryForm],[accessoryFrom]
FROM [Accessory] INNER JOIN Accessory_Type ON Accessory.accessoryTypeID = Accessory_Type.accessoryTypeID
--get Accessoy
SELECT [accessoryID],[accessoryName],Accessory.[accessoryTypeID],AccessoryTypeName,[accessoryQuantity],[accessoryPrice],[accessoryForm],[accessoryFrom]
FROM [Accessory] INNER JOIN Accessory_Type ON Accessory.accessoryTypeID = Accessory_Type.accessoryTypeID 
WHERE accessoryID = ?
--insert Accessoy
INSERT INTO Accessory (accessoryID,accessoryName,accessoryTypeID,accessoryQuantity,accessoryPrice,accessoryForm, accessoryFrom) VALUES (?,?,?,?,?,?,?)
--update Accessory
UPDATE [Accessory] SET [accessoryName] = ?, [accessoryTypeID] = ?, [accessoryQuantity] = ?,
		[accessoryPrice] = ?, [accessoryForm] = ?, [accessoryFrom] = ?
WHERE [accessoryID] = ? 
--get listAccessoriyType
SELECT accessoryTypeID, AccessoryTypeName FROM Accessory_Type

SELECT [accessoryID],[accessoryName],[AccessoryTypeName],[accessoryQuantity],[accessoryPrice],[accessoryForm],[accessoryFrom]
FROM [Accessory] INNER JOIN Accessory_Type on accessory.accessoryTypeID = Accessory_Type.accessoryTypeID

