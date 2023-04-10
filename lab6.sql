CREATE TABLE [products] (
  [order_id] int,
  [product_id] int,
  [product_name] nvarchar(255),
  [amount] int
)
GO

CREATE TABLE [client] (
  [client_id] int,
  [bio] text,
  [CardNumber] int,
  [order_history] int
)
GO

CREATE TABLE [DeliveryAddressCity] (
  [DeliveryAddress] nvarchar(255),
  [date] date,
  [time] string,
  [client_id] id
)
GO

CREATE TABLE [order] (
  [client_id] int,
  [order_id] int,
  [dateofcreate] timestamp
)
GO

CREATE TABLE [DeliveryAddressCountry] (
  [postcode] int,
  [date] date,
  [time] string,
  [client_id] int
)
GO

ALTER TABLE [order] ADD FOREIGN KEY ([order_id]) REFERENCES [client] ([order_history])
GO

ALTER TABLE [products] ADD FOREIGN KEY ([order_id]) REFERENCES [order] ([order_id])
GO

ALTER TABLE [products] ADD FOREIGN KEY ([product_id]) REFERENCES [order] ([order_id])
GO

ALTER TABLE [products] ADD FOREIGN KEY ([product_name]) REFERENCES [order] ([order_id])
GO

ALTER TABLE [products] ADD FOREIGN KEY ([amount]) REFERENCES [order] ([order_id])
GO

ALTER TABLE [client] ADD FOREIGN KEY ([client_id]) REFERENCES [DeliveryAddressCountry] ([client_id])
GO

ALTER TABLE [order] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([client_id])
GO

ALTER TABLE [DeliveryAddressCity] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([client_id])
GO
