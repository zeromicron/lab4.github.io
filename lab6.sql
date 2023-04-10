CREATE TABLE [products] (
  [product_id] int,
  [product_name] nvarchar(255),
  [amount] int
)
GO

CREATE TABLE [client] (
  [client_id] int,
  [bio] text,
  [CardNumber] int
)
GO

CREATE TABLE [DeliveryAddressCity] (
  [client_id] id,
  [DeliveryAddress] nvarchar(255),
  [postcode] int
)
GO

CREATE TABLE [order] (
  [client_id] int,
  [product_id] int,
  [dateofcreate] timestamp,
  [dateofdelivery] timestamp
)
GO

ALTER TABLE [order] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([client_id])
GO

ALTER TABLE [DeliveryAddressCity] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([client_id])
GO

ALTER TABLE [products] ADD FOREIGN KEY ([product_id]) REFERENCES [order] ([product_id])
GO
