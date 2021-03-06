INSERT [magelia].[Seller] ([SellerId], [IsActive], [AdditionalDataXml], [Code]) VALUES (@sellerId, 1, N'<SellerSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><CacheSettings z:Id="2"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration></CacheSettings><Color xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.Common.Drawing" i:nil="true" /><ETLSettings z:Id="3"><BatchSize>1000</BatchSize><CommandTimeout>PT1M</CommandTimeout><IndentXML>true</IndentXML><ValidateBaseInput>false</ValidateBaseInput><ValidateBaseOutput>false</ValidateBaseOutput></ETLSettings><ImagesSettings z:Id="4"><DisplayThumbs>true</DisplayThumbs><ThumbsFolder z:Id="5">_thumbs</ThumbsFolder></ImagesSettings><LengthUnit z:Id="6">Inch</LengthUnit><WeightUnit z:Id="7">g</WeightUnit></SellerSettings>', @sellerName)
INSERT [magelia].[TaxType] ([TaxTypeId], [Code], [SellerId]) VALUES (N'2cd5936d-6901-4eb8-851f-a384ea064b72', N'Sales Tax', @sellerId)
INSERT [magelia].[TaxType] ([TaxTypeId], [Code], [SellerId]) VALUES (N'3d1fdb45-adb2-0105-6d2d-000ebb700f72', N'Value Added Tax (VAT)', @sellerId)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'VAT Standard Rate', N'3d1fdb45-adb2-0105-6d2d-000ebb700f72', NULL)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'VAT reduced rate', N'3d1fdb45-adb2-0105-6d2d-000ebb700f72', NULL)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'07cbf85c-bd2d-2769-75b0-00100fa59a39', N'Food', N'2cd5936d-6901-4eb8-851f-a384ea064b72', N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />')
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'Standard Products', N'2cd5936d-6901-4eb8-851f-a384ea064b72', N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />')
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Downloadable products', @sellerId, 0, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', N'Food', @sellerId, 0, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Fragrance', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'IT softwares', @sellerId, 3, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'Physical Products', @sellerId, 0, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'Shirts', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'Shoes', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'watch + sunglasses', @sellerId, 3, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'388d935a-5e91-9500-4861-000ebbb0068d', N'WeekEnd + 1 product', @sellerId, 3, 0)
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'388d935a-5e91-9500-4861-000ebbb0068d', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'388d935a-5e91-9500-4861-000ebbb0068d', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', 9, N'VAT Standard Rate')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', 12, N'TVA Taux normal')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', 9, N'VAT Reduced Rate')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', 12, N'TVA taux réduit')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'07cbf85c-bd2d-2769-75b0-00100fa59a39', 9, N'Food ')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', 9, N'Sales Tax')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', 12, N'Taxe sur les ventes')
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'b0b8c37b-6a51-4408-8d8f-000f8bdb9c4a', N'Canada', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'be3d415b-a040-750e-42d7-000e506f8184', N'Canada', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'a1177c3e-863e-9300-a859-000e52149f83', N'Europe (DE/IT/SP/BE/LU/CH)', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'France', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'001a0ec9-1b82-730a-4190-000f8be34735', N'France - Corsica', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'05ecadb6-e25e-a409-3778-000f8be222b2', N'France metropolitan', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'ad704b96-fc1b-5205-5ecc-000e5408eba6', N'Germany', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'92a46a15-0a10-9805-05d1-000e54097118', N'Italy', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'e90ac1fc-5055-1506-cc06-000e540a9aa7', N'Other European Union countries', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'Spain', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'759b6b9b-37b2-560f-eb2e-000e5078cc06', N'USA - excluding Alaska and Hawaii', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'de071fbf-472a-3d0c-d443-000e4fa6c806', N'USA - excluding Illinois', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'22ee9276-25ea-a40f-d2be-000e5079e671', N'USA - Hawaii and Alaska', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', N'USA - Illinois', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'8f606fbe-35bf-0128-0a17-00100e43bdfe', N'Worldwide Shipping zone', @sellerId, 0)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'e59a26ab-c0b8-6a06-1d6b-000e540b2a05', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(20.00000 AS Decimal(18, 5)), N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'0fccc3a6-7da2-6e06-7425-000e540b37fc', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(19.00000 AS Decimal(18, 5)), N'ad704b96-fc1b-5205-5ecc-000e5408eba6', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'cbcede1c-04bc-7206-ca39-000e540b4cd0', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(21.00000 AS Decimal(18, 5)), N'92a46a15-0a10-9805-05d1-000e54097118', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'93df7f71-953a-7a06-e3ac-000e540b68e9', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(21.00000 AS Decimal(18, 5)), N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'93f91deb-7074-a412-9325-000e57013e14', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(5.50000 AS Decimal(18, 5)), N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'79d06c17-1e92-8215-cca7-000ebb85cbc4', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(7.00000 AS Decimal(18, 5)), N'ad704b96-fc1b-5205-5ecc-000e5408eba6', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'47caf300-6bf5-8615-9d7d-000ebb85d97c', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(10.00000 AS Decimal(18, 5)), N'92a46a15-0a10-9805-05d1-000e54097118', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'6a049d77-5aae-8a15-1530-000ebb85e775', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(10.00000 AS Decimal(18, 5)), N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'5c2b4f23-7eb9-5e01-b7d0-000ec7371a1b', N'6d340cae-34d6-417d-9082-ffe12c7af28a', CAST(8.00000 AS Decimal(18, 5)), N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'ead22573-6909-4b04-4a33-000f8bac7e10', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(5.50000 AS Decimal(18, 5)), N'e90ac1fc-5055-1506-cc06-000e540a9aa7', N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'43df55f5-9f4f-c505-19a3-000f8bd871fd', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(19.60000 AS Decimal(18, 5)), N'e90ac1fc-5055-1506-cc06-000e540a9aa7', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'be89531a-923a-5769-ca9f-00100fa5aa85', N'07cbf85c-bd2d-2769-75b0-00100fa59a39', CAST(2.25000 AS Decimal(18, 5)), N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', NULL, NULL)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'e55e8b6c-638f-1618-e9d8-000d9845bdb7', @sellerId, N'Carrousel/Carroussel32.jpg', CAST(0x07509D5782C453350B0000 AS DateTimeOffset), CAST(0x0750E7E4D46858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0ffbbe8c-5525-291b-9924-000d9846ed8d', @sellerId, N'Carrousel/Carroussel12.jpg', CAST(0x07B04A2DB2C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'327453a7-8b59-2f1b-2ce4-000d9846f0d5', @sellerId, N'Carrousel/Carroussel21.jpg', CAST(0x07708674B5C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'748934de-1027-5a24-67ea-000d984b1967', @sellerId, N'Downloads/2012-Olympics.jpg', CAST(0x07C0D59CB30054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5bdce504-ed74-5e24-dea8-000d984b1b0f', @sellerId, N'Downloads/2012-Olympics-carr.jpg', CAST(0x07B07C45B50054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'54328758-0329-5c1a-1530-000d990a82f8', @sellerId, N'Clothes/RunningS.jpg', CAST(0x0770ED2D1DC054350B0000 AS DateTimeOffset), CAST(0x07B0F2A3AA6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'2d2ed3ec-7b60-9b05-991c-000ecb4b38ad', @sellerId, N'Catalogs_20130215-085407.xml', CAST(0x071C5904D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'61753caf-8608-9c05-f8b5-000ecb4b38ae', @sellerId, N'Product types_20130213-175143.xml', CAST(0x07B5B805D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'249279d4-da29-9d05-94fa-000ecb4b38af', @sellerId, N'Stores_130226-172858.xml', CAST(0x07FA5406D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'd99b4255-bf8f-9e05-94fa-000ecb4b38af', @sellerId, N'Stores_130226-183635.xml', CAST(0x07FA5406D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'96743caf-e06e-9f05-bc0d-000ecb4b38af', @sellerId, N'Stores_130226-184259.xml', CAST(0x070D7C06D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'48f6630c-814e-a005-e31b-000ecb4b38af', @sellerId, N'Stores_130226-185022.xml', CAST(0x071BA306D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'8c6de5f7-aba1-a105-0a29-000ecb4b38b0', @sellerId, N'Stores_130226-185159.xml', CAST(0x0729CA06D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'1fb40288-e755-a205-313b-000ecb4b38b0', @sellerId, N'Stores_130226-185226.xml', CAST(0x073BF106D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5d1dd94b-0933-a305-313b-000ecb4b38b0', @sellerId, N'Stores_130226-185452.xml', CAST(0x073BF106D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0acc75bc-2386-a405-5845-000ecb4b38b0', @sellerId, N'Stores_130226-185603.xml', CAST(0x07451807D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'f571a135-9498-a505-5845-000ecb4b38b0', @sellerId, N'Stores_130226-185847.xml', CAST(0x07451807D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'afe97d6e-af3b-a605-7f5c-000ecb4b38b0', @sellerId, N'Stores_20130226-152339.xml', CAST(0x075C3F07D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'67c1a22a-1f6e-a705-7f5c-000ecb4b38b0', @sellerId, N'Stores_20130226-161310.xml', CAST(0x075C3F07D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0852b737-7cb8-a805-a66e-000ecb4b38b0', @sellerId, N'Stores_20130226-161510.xml', CAST(0x076E6607D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'68ecdb21-b137-a905-cd89-000ecb4b38b0', @sellerId, N'Stores_20130226-161616.xml', CAST(0x07898D07D481DA360B3C00 AS DateTimeOffset), NULL, 3)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'3c282ef1-1a7f-a108-2346-000f2fedbd0d', @sellerId, N'ReinsuranceBlocks/Telephone.png', CAST(0x0746E383238F5A370B5CFE AS DateTimeOffset), NULL, 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5a042996-03e2-a004-f7d2-000f8bdf4021', @sellerId, N'Downloads/Book.png', CAST(0x07D2F7434490CF370B3C00 AS DateTimeOffset), NULL, 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'64ce3ff8-8f79-8107-290f-00100e374500', @sellerId, N'Food/Chocolate-Chip-cookie.jpg', CAST(0x070FA98FC87675380B7800 AS DateTimeOffset), NULL, 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'75ddb67c-7198-4d1e-ba56-06800feb79cd', @sellerId, N'Fragrances/Webstore-Parfums-05-Large.jpg', CAST(0x0790EAF720BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'2137df37-bb87-4462-9d1d-0afe0b76facc', @sellerId, N'Fragrances/Webstore-Parfums-02-Large.jpg', CAST(0x07A06E2D20BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fbdb23a3-75c0-4659-8361-0cb99abdc758', @sellerId, N'SunGlasses/Webstore-Eyewear-02-Large.jpg', CAST(0x07508B6D1DBC4A350B0000 AS DateTimeOffset), CAST(0x07609B946B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'42971be0-7f44-4bc7-89f4-11fd2ae892fb', @sellerId, N'Fragrances/Webstore-Parfums-01-Large.jpg', CAST(0x07508BDE1FBC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'14f9957e-1560-4a7e-97fe-143a1ab89504', @sellerId, N'Downloads/Fotolia_30807776_XS.jpg', CAST(0x07D05868B5C24D350B0000 AS DateTimeOffset), CAST(0x07107AC9B16858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed', @sellerId, N'Pillow/Webstore-Deco-03-Large.jpg', CAST(0x07E0F91C0BBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0326cd06-9719-4385-84a0-2d384c5a5b1f', @sellerId, N'Watches/Webstore-Watches-04-Large.jpg', CAST(0x07F079C31ABC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'd07e48e0-9e54-41b0-9e0b-2fd6fcbe1497', @sellerId, N'Watches/Webstore-Watches-06-Large.jpg', CAST(0x073013801BBC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'b396b24a-93d5-4ed4-ae6a-2ffd8709a454', @sellerId, N'Watches/Webstore-Watches-07-Large.jpg', CAST(0x074053E41BBC4A350B0000 AS DateTimeOffset), CAST(0x07105FEAD38666350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975', @sellerId, N'Pillow/Webstore-Deco-07-Large.jpg', CAST(0x0700A7870FBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'baac9d84-c0b9-4340-89da-3d85c0e5a0e6', @sellerId, N'Fragrances/Webstore-Parfums-09-Large.jpg', CAST(0x07704DAB5C3F4E350B0000 AS DateTimeOffset), CAST(0x079032BE7F6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'6b5d10be-1008-449f-9b83-3fd935fabdfb', @sellerId, N'Webstore--Image-not-available-Large.jpg', CAST(0x07701A6C1FBC4A350B0000 AS DateTimeOffset), NULL, 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'ab583d60-2f3c-497b-b267-4028d3233533', @sellerId, N'SunGlasses/Webstore-Eyewear-07-Large.jpg', CAST(0x0710272E1FBC4A350B0000 AS DateTimeOffset), CAST(0x07705E046A6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0845f8da-21df-4fca-be60-421052f1598d', @sellerId, N'Downloads/Fotolia_31018390_XS.jpg', CAST(0x07F06CC5B5C24D350B0000 AS DateTimeOffset), CAST(0x07107AC9B16858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'906d47a5-74ea-4f2a-9e87-4cdd98ed093b', @sellerId, N'SunGlasses/Webstore-Eyewear-05-Large.jpg', CAST(0x07D0FE731EBC4A350B0000 AS DateTimeOffset), CAST(0x07705E046A6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'30a566cc-0614-4cf0-bdd4-4f22ba3b3c36', @sellerId, N'SunGlasses/3DGlasses.jpg', CAST(0x07C03B96B4C24D350B0000 AS DateTimeOffset), CAST(0x07D0D127646858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'25d98e24-a6a4-4e61-b239-54135959c09d', @sellerId, N'SunGlasses/Webstore-Eyewear-03-Large.jpg', CAST(0x07C016AE1DBC4A350B0000 AS DateTimeOffset), CAST(0x07705E046A6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1', @sellerId, N'Pillow/Webstore-Deco-02-Large.jpg', CAST(0x0790FD690ABC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'25350954-c42d-4c23-87cf-5efda6412ade', @sellerId, N'Downloads/Fotolia_20723181_XS.jpg', CAST(0x0790E0EAB3C24D350B0000 AS DateTimeOffset), CAST(0x07107AC9B16858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'a8f082d2-7e31-42b3-97c6-5f41502c358b', @sellerId, N'Pillow/Webstore-Deco-05-Large.jpg', CAST(0x0790EE150EBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5e53bd7e-e5e0-4927-950e-62f7ca17d682', @sellerId, N'Watches/Webstore-Watches-03-Large.jpg', CAST(0x0730754C1ABC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba', @sellerId, N'Pillow/Fotolia_31518395_XS.jpg', CAST(0x079068DA5A404E350B0000 AS DateTimeOffset), CAST(0x07F009DC936858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'2814add4-dff3-4a2a-9c12-6f15e3a46777', @sellerId, N'Watches/Webstore-Watches-01-Large.jpg', CAST(0x07F0620522BC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'4c9bf954-3bd9-49ef-8842-78da73013ac1', @sellerId, N'Fragrances/Webstore-Parfums-06-Large.jpg', CAST(0x07B03A4B21BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fb99292b-aec0-4200-91ac-7e57ca81b305', @sellerId, N'Pillow/Webstore-Deco-04-Large.jpg', CAST(0x078029E20CBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'604201f8-44f5-43ed-98a5-7f903520581b', @sellerId, N'SunGlasses/Pack-Watches2.jpg', CAST(0x0720E1D26F434E350B0000 AS DateTimeOffset), CAST(0x07D0CC01676858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'4cf33b3f-d345-4539-8585-8a16f492ac2f', @sellerId, N'Fragrances/Webstore-Parfums-07-Large.jpg', CAST(0x07D083B421BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'a5881e10-5938-4ba6-b041-8b1beb5b89be', @sellerId, N'Watches/GPSWatch.jpg', CAST(0x0790F94EB4C24D350B0000 AS DateTimeOffset), CAST(0x0760A277816858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'092b5569-4a7a-4e6b-952d-9614a7396a95', @sellerId, N'SunGlasses/Webstore-Eyewear-01-Large.jpg', CAST(0x0750E30B1DBC4A350B0000 AS DateTimeOffset), CAST(0x07609B946B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'47df82d3-7312-416f-9145-9b6e3d258dff', @sellerId, N'SunGlasses/Fotolia_35104482_XS.jpg', CAST(0x07E07A60B3C24D350B0000 AS DateTimeOffset), CAST(0x0750D951626858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'67bc5435-a533-4429-ae0f-a3f93210b60f', @sellerId, N'Watches/Webstore-Watches-05-Large.jpg', CAST(0x075066171BBC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'62419a3b-6a13-42e1-b730-a81047d4dbcf', @sellerId, N'Fragrances/Webstore-Parfums-08-Large.jpg', CAST(0x07A0C98D103E4E350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'd6609fa6-cb4d-4e10-b31d-ab63f481ebe6', @sellerId, N'Pillow/Webstore-Deco-01-Large.jpg', CAST(0x07B052A711BC4A350B0000 AS DateTimeOffset), CAST(0x0720CAB58D6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'25cb3b9e-8714-4c1a-b43b-accae87f9813', @sellerId, N'Fragrances/Fotolia_15034124_XS.jpg', CAST(0x076064DBF83E4E350B0000 AS DateTimeOffset), CAST(0x07B0CE4C7B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'8a6fe20f-94ee-4749-b353-bdbd51ae5cfa', @sellerId, N'SunGlasses/Pack-Watches.jpg', CAST(0x0730ADF070434E350B0000 AS DateTimeOffset), CAST(0x07D0CC01676858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'94d680b0-7e1f-4d0e-aca8-be12500fff95', @sellerId, N'Watches/Webstore-Watches-02-Large.jpg', CAST(0x0770ACCB19BC4A350B0000 AS DateTimeOffset), CAST(0x0710D9D7716858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'40b3586c-ce62-490e-9f7f-c4231cfdeb8c', @sellerId, N'Downloads/Pack-Watche-and-glasses.jpg', CAST(0x07900AD66E434E350B0000 AS DateTimeOffset), CAST(0x07D0F2F7B36858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78', @sellerId, N'Watches/Webstore-Watches-08-Large.jpg', CAST(0x0710BB511CBC4A350B0000 AS DateTimeOffset), CAST(0x07105FEAD38666350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae', @sellerId, N'Fragrances/Webstore-Parfums-04-Large.jpg', CAST(0x0720D0B920BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'46118d88-f374-4b38-bb5e-cdefb10966c5', @sellerId, N'Clothes/Fotolia_27031877_XS.jpg', CAST(0x071090E7B4C24D350B0000 AS DateTimeOffset), CAST(0x07507A07AC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'2301a850-22de-4ab6-a4a1-d285b4deb8a8', @sellerId, N'Pillow/Webstore-Deco-06-Large.jpg', CAST(0x0730BC9D0EBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'8ed1a10b-071b-47f2-afb1-d4b288badb3b', @sellerId, N'SunGlasses/Webstore-Eyewear-06-Large.jpg', CAST(0x07107FCC1EBC4A350B0000 AS DateTimeOffset), CAST(0x07705E046A6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'38686988-fc93-4b9a-9a01-d7eafcd5cbba', @sellerId, N'Watches/Webstore-Watches-09-Large.jpg', CAST(0x073040B11CBC4A350B0000 AS DateTimeOffset), CAST(0x07105FEAD38666350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'28b03298-3843-40e7-b104-e1d2355f7af8', @sellerId, N'Fragrances/Webstore-Parfums-03-Large.jpg', CAST(0x07D0217720BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3', @sellerId, N'Clothes/Fotolia_15879086_XS.jpg', CAST(0x0750959EB3C24D350B0000 AS DateTimeOffset), CAST(0x0780B220AD6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'42acd11b-b568-44a7-959a-edadb84b6526', @sellerId, N'SunGlasses/Fotolia_33608327_XS.jpg', CAST(0x07B0CE00B3C24D350B0000 AS DateTimeOffset), CAST(0x0750D951626858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'98690e3e-0e8a-4678-b84a-eef1873ea608', @sellerId, N'Fragrances/Karma.jpg', CAST(0x07A0DEFACC404E350B0000 AS DateTimeOffset), CAST(0x07306F847D6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'44a5602b-5415-48c3-a81a-f83118c8647d', @sellerId, N'Pillow/Webstore-Deco-08-Large.jpg', CAST(0x07B0D70510BC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'79d1ca8a-fbdd-436b-9199-fc71a6af6803', @sellerId, N'SunGlasses/Webstore-Eyewear-04-Large.jpg', CAST(0x07D092081EBC4A350B0000 AS DateTimeOffset), CAST(0x07705E046A6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'caec153c-b7ca-7600-9e04-000ec7f02e52', @sellerId, N'1001 Cakes', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'2045aa25-c242-477b-b834-78acab772344', @sellerId, N'365 Design House', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'9584f634-1780-479b-b367-cc306e3cfdb7', @sellerId, N'BrandNewWeb', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', @sellerId, N'Fragranza', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'8b187b39-d642-440e-b631-8cb99c84cddc', @sellerId, N'OverBrand', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', @sellerId, N'United Designers', NULL)
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', @sellerId, N'CityStreet Company')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', @sellerId, N'HeavyLoadSupplies')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'955987d1-fef6-424c-9fe6-b2bae86dabfd', @sellerId, N'MajorSupplies')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'a742be90-a993-48da-a0f7-308591fb5814', @sellerId, N'Storm Company')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'b6394f61-3f5b-5f00-dd5e-000ec7effeb8', @sellerId, N'The Bakers')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'd58c3053-1313-4eb4-aa33-769dd38080ea', @sellerId, N'The Not4Resale Company')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'4499d369-9384-4074-bab1-adf1c417b337', N'234567', 1, NULL, CAST(389.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(12.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL, 1, NULL, NULL, N'234567')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12129', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12130', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'9ec3e59c-c916-851d-d589-000d990b7930', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12131', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'895e9f89-a787-f11d-d025-000d990b9747', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12132', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', N'b6394f61-3f5b-5f00-dd5e-000ec7effeb8', N'caec153c-b7ca-7600-9e04-000ec7f02e52', N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', N'', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'CCC1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b921987e-51e1-4985-ab44-019965b52d0f', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'003', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'FRAG003', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'K67', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0019', 1, 1, CAST(1200.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(65.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0019', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'881055b6-d532-42c4-9818-15bdb80e1e39', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'1234567765432', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10003', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0013', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(11.90000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.70000 AS Decimal(18, 5)), N'SKU0013', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0002', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(13.00000 AS Decimal(18, 5)), CAST(14.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0002', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'K17', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0007', 1, 1, CAST(260.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(12.50000 AS Decimal(18, 5)), CAST(13.00000 AS Decimal(18, 5)), CAST(4.80000 AS Decimal(18, 5)), N'SKU0007', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Ajourney', 1, NULL, CAST(180.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Ajourney')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0024', 1, 1, CAST(1050.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(75.00000 AS Decimal(18, 5)), CAST(25.00000 AS Decimal(18, 5)), CAST(75.00000 AS Decimal(18, 5)), N'SKU0024', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I67', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Stillriver', 1, NULL, CAST(129.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Stillriver')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0001', 1, 1, CAST(250.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(12.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0001', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0f15cc01-2a0e-464c-9990-33fce918ab4b', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'SR34', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'75ac5adb-22ac-42fa-8f72-34515265151b', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Idole', 1, NULL, CAST(250.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Idole')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5243cba2-3003-42e0-bc1c-3c85470b9087', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'98977665645333', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10001', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0031', 1, 1, CAST(250.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(5.00000 AS Decimal(18, 5)), CAST(11.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0031', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'MK34', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5f70f381-94e9-46f4-b67d-4b1afc729521', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'MK67', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'001', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'FWALL001', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5488b334-d396-4079-bb14-4d45cd97c271', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'J34', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0008', 1, 1, CAST(360.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(11.50000 AS Decimal(18, 5)), CAST(12.50000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0008', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Altitude', 1, NULL, CAST(220.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Altitude')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'AL17', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'657461234968', 1, 0, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0001', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'388d935a-5e91-9500-4861-000ebbb0068d', N'Pack001', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(6.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), N'SungPack001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I34', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'0789776726', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0005', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 4, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'057fb737-a362-46fa-8a3d-5f651d5de371', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'001', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'FRAG001', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'2012LOG', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'2012LOG', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0032', 1, 1, CAST(225.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(5.50000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0032', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0020', 1, 1, CAST(1100.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(55.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), N'SKU0020', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'15124216-83f5-4a96-a776-6de4d33e29a5', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'F1000', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'71e032cf-2592-49a9-a166-6eea06ca4014', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'1278909876429', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10000', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0027', 1, 1, CAST(240.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(2.50000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(3.00000 AS Decimal(18, 5)), N'SKU0027', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'13b0719d-1441-4d3e-a1de-765cd22c913b', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'9898988877676656', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10006', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 6, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0028', 1, 1, CAST(150.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0028', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a9c9aadc-46eb-4bff-a213-78740730b8af', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'C34', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'AV1', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'AV1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0006', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(10.00000 AS Decimal(18, 5)), CAST(12.50000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0006', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'K34', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I17', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd94858ed-6538-4958-a147-846dc651c79f', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'AL34', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'SR67', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0029', 1, 1, CAST(220.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0029', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0026', 1, 1, CAST(220.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0026', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0030', 1, 1, CAST(190.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(6.00000 AS Decimal(18, 5)), CAST(11.50000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0030', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'C67', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2fc3d613-302c-4f9b-850c-8eded3486e32', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'87766566443333', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10004', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 4, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'35b57194-4a77-4665-91fc-90eaa18a0b1c', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6786766574444', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10002', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Karma4men', 1, NULL, CAST(230.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Karma4men')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0025', 1, 1, CAST(1200.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(65.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0025', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'F1001', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0021', 1, 1, CAST(1150.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(70.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), N'SKU0021', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1bdd4491-4af6-4941-84e6-a6c73c46347a', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'002', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'FRAG002', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ff3d5209-e549-4437-999a-aad44f5340dd', N'a742be90-a993-48da-a0f7-308591fb5814', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0017', 1, 1, CAST(315.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(11.80000 AS Decimal(18, 5)), CAST(13.00000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0017', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'MK17', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'87614916164', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0002', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'64786164313', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0003', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'SR17', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'J67', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Gatsby', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'Gatsby', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0018', 1, 1, CAST(1250.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(60.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), N'SKU0018', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'a742be90-a993-48da-a0f7-308591fb5814', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0003', 1, 1, CAST(320.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(14.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), CAST(5.50000 AS Decimal(18, 5)), N'SKU0003', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0de77b97-c976-448f-9776-c732a43d65d8', N'a742be90-a993-48da-a0f7-308591fb5814', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0033', 1, 1, CAST(210.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(6.00000 AS Decimal(18, 5)), CAST(11.50000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0033', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'02e8e67c-f95e-4145-b475-c974016fe4a8', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6545634534', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0004', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'CoasttoCoast', 1, NULL, CAST(115.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'CoasttoCoast')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Whitemusc', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Whitemusc')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'8b779da6-e306-44c1-a673-d464ec8a4b34', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'F1002', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'BUNDLE001', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(30.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), N'SKUBUNDLE001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0005', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(13.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0005', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0023', 1, 1, CAST(1000.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(65.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0023', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'Shirt001', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Shirt001')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Mankind', 1, NULL, CAST(200.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Mankind')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0004', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(11.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'SKU0004', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'PureWater', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'PureWater')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'341c84b5-d194-40d6-80bd-eea300e9ee45', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'33222132323233', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10005', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 5, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'SOFT001', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'PACKSOFT001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'shirt002', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'shirt002')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'AL67', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'C17', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1265aa84-8242-46b2-9d97-fef35ceaa67f', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'J17', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0f2ff1ea-145b-1815-8132-000d9907b8f2')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0f2ff1ea-145b-1815-8132-000d9907b8f2')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'07cbf85c-bd2d-2769-75b0-00100fa59a39', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'5b61333f-19e5-449f-8f0f-546debd3b1ff')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'5b61333f-19e5-449f-8f0f-546debd3b1ff')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'e32d7fc3-a151-423e-8b35-f238b643671c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'e32d7fc3-a151-423e-8b35-f238b643671c')
INSERT [magelia].[Warehouse] ([WarehouseId], [SellerId], [Code], [TaxZoneId]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', @sellerId, N'WH2 Paris', N'1f94b818-62ec-5e06-5b9f-000e540b1922')
INSERT [magelia].[Warehouse] ([WarehouseId], [SellerId], [Code], [TaxZoneId]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', @sellerId, N'WH1 Chicago', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd')
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'DHL', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'3ef9b412-efbe-6c0b-8903-000eb79caa18', N'UPS', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', N'FedEx', @sellerId, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'25972b96-5e1a-320b-e43a-000eb79c6859', N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'DHL USA', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'189290cf-04c4-530b-b27d-000eb79c8b99', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'FEDEX', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', N'3ef9b412-efbe-6c0b-8903-000eb79caa18', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'UPS Hawaii Alaska', N'22ee9276-25ea-a40f-d2be-000e5079e671', 0, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'81274881-2719-da0b-1dc2-000eb79d30d4', N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'cea219ee-0088-b806-7c0a-000e540c0620', N'EUROPE Standard', N'a1177c3e-863e-9300-a859-000e52149f83', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'Fedex-Canada', N'b0b8c37b-6a51-4408-8d8f-000f8bdb9c4a', 0, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'6210d83a-5816-600a-056c-000f8be32c05', N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'cea219ee-0088-b806-7c0a-000e540c0620', N'France', N'05ecadb6-e25e-a409-3778-000f8be222b2', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'3eb712b5-d821-c80a-b12a-000f8be38586', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'cea219ee-0088-b806-7c0a-000e540c0620', N'Corsica', N'001a0ec9-1b82-730a-4190-000f8be34735', 0, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'8418e939-65a3-e90a-e373-000f8be39bd3', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'cea219ee-0088-b806-7c0a-000e540c0620', N'FranceExpress', N'05ecadb6-e25e-a409-3778-000f8be222b2', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'28ca0c77-30dd-302b-846a-00100e45ac1c', N'3ef9b412-efbe-6c0b-8903-000eb79caa18', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'UPS World from USA', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', N'3ef9b412-efbe-6c0b-8903-000eb79caa18', N'cea219ee-0088-b806-7c0a-000e540c0620', N'UPS World from Europe', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 2, 1, NULL)
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'25972b96-5e1a-320b-e43a-000eb79c6859', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'189290cf-04c4-530b-b27d-000eb79c8b99', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'81274881-2719-da0b-1dc2-000eb79d30d4', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'6210d83a-5816-600a-056c-000f8be32c05', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'3eb712b5-d821-c80a-b12a-000f8be38586', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'8418e939-65a3-e90a-e373-000f8be39bd3', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'28ca0c77-30dd-302b-846a-00100e45ac1c', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'25972b96-5e1a-320b-e43a-000eb79c6859', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'189290cf-04c4-530b-b27d-000eb79c8b99', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'81274881-2719-da0b-1dc2-000eb79d30d4', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'3eb712b5-d821-c80a-b12a-000f8be38586', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'8418e939-65a3-e90a-e373-000f8be39bd3', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'28ca0c77-30dd-302b-846a-00100e45ac1c', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'9ec3e59c-c916-851d-d589-000d990b7930', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'895e9f89-a787-f11d-d025-000d990b9747', 0, 0, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', 900, 900, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b921987e-51e1-4985-ab44-019965b52d0f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 8901, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 6086, 8000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 100, 100, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 6108, 8000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 100, 100, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5f70f381-94e9-46f4-b67d-4b1afc729521', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5488b334-d396-4079-bb14-4d45cd97c271', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 50, 40, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'057fb737-a362-46fa-8a3d-5f651d5de371', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'413e0337-1c99-4b53-aa27-69475c0b0468', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'15124216-83f5-4a96-a776-6de4d33e29a5', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'91e54477-ad3e-4821-9895-727c5058a4d9', 398, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2310c6a3-840a-455d-ab03-7726290ecc05', 476, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a9c9aadc-46eb-4bff-a213-78740730b8af', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd94858ed-6538-4958-a147-846dc651c79f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ff3d5209-e549-4437-999a-aad44f5340dd', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', 780, 1999, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0de77b97-c976-448f-9776-c732a43d65d8', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'8b779da6-e306-44c1-a673-d464ec8a4b34', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 500, 500, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 0, 0, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', 8764, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', 8777, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'9ec3e59c-c916-851d-d589-000d990b7930', 8798, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'895e9f89-a787-f11d-d025-000d990b9747', 8907, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b921987e-51e1-4985-ab44-019965b52d0f', 8464, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 8497, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'881055b6-d532-42c4-9818-15bdb80e1e39', 8864, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 7489, 9000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 100, 100, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', 8812, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 7590, 9000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', 8840, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 100, 100, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', 8821, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5243cba2-3003-42e0-bc1c-3c85470b9087', 8644, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 684, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', 8797, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5f70f381-94e9-46f4-b67d-4b1afc729521', 8578, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5488b334-d396-4079-bb14-4d45cd97c271', 8794, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', 8706, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', 9130, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 100, 120, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', 8820, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 8760, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'057fb737-a362-46fa-8a3d-5f651d5de371', 8678, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 601, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'15124216-83f5-4a96-a776-6de4d33e29a5', 8775, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'71e032cf-2592-49a9-a166-6eea06ca4014', 8602, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'91e54477-ad3e-4821-9895-727c5058a4d9', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'13b0719d-1441-4d3e-a1de-765cd22c913b', 8675, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2310c6a3-840a-455d-ab03-7726290ecc05', 500, 4900, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a9c9aadc-46eb-4bff-a213-78740730b8af', 8856, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 800, 800, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', 8690, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', 8731, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'd94858ed-6538-4958-a147-846dc651c79f', 8686, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', 8837, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', 8752, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2fc3d613-302c-4f9b-850c-8eded3486e32', 8730, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', 8746, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', 8675, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', 8820, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ff3d5209-e549-4437-999a-aad44f5340dd', 500, 500, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', 8786, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', 8691, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', 8713, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', 8772, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', 8310, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 100, 100, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'0de77b97-c976-448f-9776-c732a43d65d8', 200, 200, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'02e8e67c-f95e-4145-b475-c974016fe4a8', 8663, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'8b779da6-e306-44c1-a673-d464ec8a4b34', 8877, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 40, 50, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 8717, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', 8703, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', 8761, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', 8754, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4ce4d083-11e3-2f6a-5151-00100fa5db2e', N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b341e3c0-650a-b002-ce6d-000e544aae6d', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'368e542c-26e8-d401-f3e2-000f2fe77ba8', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f50fec4b-f7f5-d607-0449-000f2feb43f5', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6492a46d-e134-4202-939b-000f8d5dc2c7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ca26560e-4084-5802-aeca-000f8d5dc7c7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2eb02369-a0f9-6c02-8885-000f8d5dcb7a', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6dc6a4b6-91e5-8002-57ec-000f8d5dd011', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4a0c700d-28a9-9402-bdb9-000f8d5dd388', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'873661ca-127f-b902-f9f1-000f8d5dd9ac', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1813b58d-dbb7-cc02-2d95-000f8d5ddd2f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'15852515-ee3a-de02-2f35-000f8d5de079', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'3292cbfb-4237-6005-557c-000f8d5e5f42', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'07d2ffb0-b8da-f30e-f70c-000f8d5edc86', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'252270f0-877e-b413-eec3-000f8d5f3545', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ffc16ab0-6b73-d613-55c0-000f8d5f41df', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'81f71704-504c-cf1d-0a75-000f8d5fed7b', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bc0f046c-d7c2-f11d-5c2a-000f8d5ffbf4', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4e6083e4-25ab-141e-8126-000f8d60080a', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a4256b25-9401-8524-7d87-00100e41ec30', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2710615d-9441-de24-257b-00100e41f76f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'14fe73fb-238b-3725-5283-00100e4200f2', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'36662e51-635b-8f25-8a7b-00100e420e4c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7ffc8bd1-3dd4-e725-fc43-00100e421a0c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8bc55120-646c-4026-9ca0-00100e42271d', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e9f5f5c5-5d78-9826-cf5a-00100e422d94', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5f132da5-0f95-f802-abeb-000f8d5df5cd', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'cd9e065d-df93-5b03-a96d-000f8d5e02fe', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'18c6208b-7a8e-7803-0721-000f8d5e06c6', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'c8c5844f-179c-b503-13c2-000f8d5e13d1', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4ea00b01-7423-8523-ce7e-000f8d608efc', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b8d62c1a-261b-6708-6dc0-000f8c72d300', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5488b334-d396-4079-bb14-4d45cd97c271')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9e8c21ff-44f7-6a08-e996-000f8c72d300', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'23c465ec-2da6-6d08-10a4-000f8c72d301', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1265aa84-8242-46b2-9d97-fef35ceaa67f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'eed8a2e2-65fb-7008-5edc-000f8c72d301', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a58dfe1e-0b05-9b08-de9d-000f8c72d8b4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'94370729-ebcb-9e08-1d5a-000f8c72d8b5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'd94858ed-6538-4958-a147-846dc651c79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'555cdc5f-9e36-a108-620d-000f8c72d8b5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'18e80de8-c2d2-a408-b04a-000f8c72d8b5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f22e3983-d4c1-d508-45c0-000f8c72e08a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a9c9aadc-46eb-4bff-a213-78740730b8af')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'704cbe53-402d-d808-9401-000f8c72e08a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'500119b8-1208-da08-bb24-000f8c72e08a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd1230e53-93e4-dd08-e236-000f8c72e08a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2425da1a-a617-3c09-2e86-000f8c72e798', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e394c571-e8ce-3f09-a3c4-000f8c72e798', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'68dcd8c4-14c0-4209-cad6-000f8c72e798', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2994ec2a-ae86-4509-2ca2-000f8c72e799', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'52e400f6-6128-7009-f85d-000f8c72eb31', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'64b8b0dc-0f98-7309-6dbd-000f8c72eb32', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ac4d5736-24a8-7609-94d3-000f8c72eb32', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'21886544-3f59-7909-e2ff-000f8c72eb32', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a854ad80-fd98-a409-2769-000f8c72efd5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'768944da-d0d4-a709-75a2-000f8c72efd5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5f70f381-94e9-46f4-b67d-4b1afc729521')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'72f259ad-9029-aa09-c3f9-000f8c72efd5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f433442b-0dc0-ad09-eab9-000f8c72efd5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'cfadafb2-a436-0c0a-fa39-000f8c72f925', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b921987e-51e1-4985-ab44-019965b52d0f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6f99f1d9-6910-0f0a-377d-000f8c72f926', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'057fb737-a362-46fa-8a3d-5f651d5de371')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9ab6590d-e0a6-120a-769d-000f8c72f926', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1bdd4491-4af6-4941-84e6-a6c73c46347a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'131914e2-afd1-150a-c4de-000f8c72f926', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'73030882-ceeb-400a-b979-000f8c72fdd0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'0f15cc01-2a0e-464c-9990-33fce918ab4b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6fa750b4-d9da-430a-07a5-000f8c72fdd1', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5f3a62ba-d232-460a-2eb3-000f8c72fdd1', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'cf8be317-229e-490a-7cdf-000f8c72fdd1', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ea20e16a-b029-740a-67aa-000f8c73015b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'15124216-83f5-4a96-a776-6de4d33e29a5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0559928d-30b5-770a-b5df-000f8c73015b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'db70c93d-a89d-7a0a-0402-000f8c73015c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'8b779da6-e306-44c1-a673-d464ec8a4b34')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'672380b4-da51-7d0a-2b21-000f8c73015c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ebb0a4ba-4141-d203-86cd-000f8d5e1872', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6933bbe6-6885-f903-24dc-000f8d5e2204', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'131f1677-2b84-fe03-7316-000f8d5e2204', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fc117891-87ed-0304-e85b-000f8d5e2204', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f19e6837-346a-0804-3688-000f8d5e2205', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'21d221cb-fe92-0d04-84b6-000f8d5e2205', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'02e8e67c-f95e-4145-b475-c974016fe4a8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b44e3679-f10f-4d04-6f71-000f8d5e26df', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'881055b6-d532-42c4-9818-15bdb80e1e39')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7c268dab-0dad-5204-bda3-000f8d5e26df', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'5243cba2-3003-42e0-bc1c-3c85470b9087')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1a0448ce-2322-5704-32df-000f8d5e26e0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'71e032cf-2592-49a9-a166-6eea06ca4014')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6c2ced5a-b000-5c04-810c-000f8d5e26e0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'13b0719d-1441-4d3e-a1de-765cd22c913b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'61c1135c-6180-6104-efa6-000f8d5e26e0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'2fc3d613-302c-4f9b-850c-8eded3486e32')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'024773da-d158-6604-3dd4-000f8d5e26e1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'35b57194-4a77-4665-91fc-90eaa18a0b1c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b671cc12-725c-6b04-b332-000f8d5e26e1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'341c84b5-d194-40d6-80bd-eea300e9ee45')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'3df6d799-8dac-2c23-fb90-000f8d60654b', N'4499d369-9384-4074-bab1-adf1c417b337', N'5f28a084-fd33-5c1c-f13f-000d990b29b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8eb80906-042c-3023-70d8-000f8d60654c', N'4499d369-9384-4074-bab1-adf1c417b337', N'f2a39343-e8a5-cf1c-0452-000d990b50dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4e4ab417-36e9-3423-bf05-000f8d60654c', N'4499d369-9384-4074-bab1-adf1c417b337', N'9ec3e59c-c916-851d-d589-000d990b7930')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7f4dc08c-b683-3823-0d26-000f8d60654d', N'4499d369-9384-4074-bab1-adf1c417b337', N'895e9f89-a787-f11d-d025-000d990b9747')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 9, N'Running Shoes', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 12, N'Chaussures de running', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', 9, N'Chocolate chip cookies', N'', N'<p>Homemade&nbsp;Chocolate chip cookies</p>', N'<p>Homemade&nbsp;Chocolate chip cookies</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', 12, N'Cookies au chocolat', N'', N'<p>Cookies au chocolat faits maison</p>', N'<p>Cookies au chocolat faits maison</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 9, N'Grey pillow. Clipping path', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 12, N'Coussin Gris', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 9, N'SunStar', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 12, N'SunStar', N'Toute la force, les secrets et la chaleur d''une étoile. Au-delà du ciel et du vent, de plus en  plus haut, s''est fortifié par l''air pur et dans les yeux, une nouvelle force, intensifiée par le ciel.', N'Toute la force, les secrets et la chaleur d''une étoile. Au-delà du ciel et du vent, de plus en  plus haut, s''est fortifié par l''air pur et dans les yeux, une nouvelle force, intensifiée par le ciel.', N'Toute la force, les secrets et la chaleur d''une étoile. Au-delà du ciel et du vent, de plus en  plus haut, s''est fortifié par l''air pur et dans les yeux, une nouvelle force, intensifiée par le ciel.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 9, N'PurpleSun', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 12, N'PurpleSun', N'Ces lunettes de soleil de conception italienne sont de grande qualité. Conçu pour les esprits novateurs et ouverts, elles conjuguent une qualité de fabrication parfaite à un style contemporain.', N'Ces lunettes de soleil de conception italienne sont de grande qualité. Conçu pour les esprits novateurs et ouverts, elles conjuguent une qualité de fabrication parfaite à un style contemporain.', N'Ces lunettes de soleil de conception italienne sont de grande qualité. Conçu pour les esprits novateurs et ouverts, elles conjuguent une qualité de fabrication parfaite à un style contemporain.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 9, N'City Life', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 12, N'City Life', N'Une paire de lunettes pour le week-end, la vie et la ville. La monture en plastique noir mat est sertie de verres gris.', N'Une paire de lunettes pour le week-end, la vie et la ville. La monture en plastique noir mat est sertie de verres gris.', N'Une paire de lunettes pour le week-end, la vie et la ville. La monture en plastique noir mat est sertie de verres gris.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 9, N'A Journey', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 12, N'A Journey', N'Élégance masculine et moderne. Ce parfum séduisant est à la fois puissant et doux, viril et tendre… Un mélange délicieux de notes grisantes qui, comme l''homme qui le porte, nous charme par cette association moderne de passion et de sensibilité.', N'Élégance masculine et moderne. Ce parfum séduisant est à la fois puissant et doux, viril et tendre… Un mélange délicieux de notes grisantes qui, comme l''homme qui le porte, nous charme par cette association moderne de passion et de sensibilité.', N'Élégance masculine et moderne. Ce parfum séduisant est à la fois puissant et doux, viril et tendre… Un mélange délicieux de notes grisantes qui, comme l''homme qui le porte, nous charme par cette association moderne de passion et de sensibilité.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 9, N'Pink and rosy pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 12, N'Coussin Rose et Violet', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 9, N'Still River', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 12, N'Still River', N'Un cadeau de la terre aux hommes. Ce parfum pour Lui est naturel et frais avec ses arômes riches en citron, feuilles de bouleau et de lierre. Un parfum ressourçant qui vint du coeur de la Nature et pour donner l''énergie.', N'Un cadeau de la terre aux hommes. Ce parfum pour Lui est naturel et frais avec ses arômes riches en citron, feuilles de bouleau et de lierre. Un parfum ressourçant qui vint du coeur de la Nature et pour donner l''énergie.', N'Un cadeau de la terre aux hommes. Ce parfum pour Lui est naturel et frais avec ses arômes riches en citron, feuilles de bouleau et de lierre. Un parfum ressourçant qui vint du coeur de la Nature et pour donner l''énergie.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 9, N'Weekend Sport', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 12, N'Weekend Sport', N'La monture de ces lunettes est parfaites pour se sentir en week-end. Les verres sont japonais, en polycarbonate,  polarisés, résistent aux UVA/UVB.', N'La monture de ces lunettes est parfaites pour se sentir en week-end. Les verres sont japonais, en polycarbonate,  polarisés, résistent aux UVA/UVB.', N'La monture de ces lunettes est parfaites pour se sentir en week-end. Les verres sont japonais, en polycarbonate,  polarisés, résistent aux UVA/UVB.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'75ac5adb-22ac-42fa-8f72-34515265151b', 9, N'Idole', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'75ac5adb-22ac-42fa-8f72-34515265151b', 12, N'Idole', N'Idole est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.', N'Idole est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.', N'Idole est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 9, N'Zilliger ref 3498', N'Men''s Quartz Military Aircraft Watches.', N'Men''s Quartz Military Aircraft Watches.', N'Men''s Quartz Military Aircraft Watches.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 12, N'Zilliger ref 3498', N'Montres à quartz d''aviateur.', N'Montres à quartz d''aviateur.', N'Montres à quartz d''aviateur.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 9, N'WebProtect Firewall (Download)', N'This firewall protects you from various threats encountered on the internet. Available for download.', N'This firewall protects you from various threats encountered on the internet. Available for download.', N'This firewall protects you from various threats encountered on the internet. Available for download.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 12, N'WebProtect Firewall (Téléchargement)', N'Ce pare feu vous protège des différentes menaces rencontrées sur le net. Disponible en téléchargement.', N'Ce pare feu vous protège des différentes menaces rencontrées sur le net. Disponible en téléchargement.', N'Ce pare feu vous protège des différentes menaces rencontrées sur le net. Disponible en téléchargement.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 9, N'Trend-e', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 12, N'Trend-e', N'Un regard trendy et à la pointe de la mode grâce à des couleurs lumineuses. Conçu pour les amateurs de luxe accessible.', N'Un regard trendy et à la pointe de la mode grâce à des couleurs lumineuses. Conçu pour les amateurs de luxe accessible.', N'Un regard trendy et à la pointe de la mode grâce à des couleurs lumineuses. Conçu pour les amateurs de luxe accessible.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 9, N'Altitude', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 12, N'Altitude', N'Entre le ciel et le vent, l''altitude évoque l''harmonie du désert : imposant par sa taille pourtant fine il rassurer par ses courbes ressemblant à des dunes de sable. La chaleur envoutante du haricot de Tonka, les harmonies nobles du cèdre s''unissent à la fraîcheur de la bergamote pour créer un parfum unique à la signature puissante et structurée.', N'Entre le ciel et le vent, l''altitude évoque l''harmonie du désert : imposant par sa taille pourtant fine il rassurer par ses courbes ressemblant à des dunes de sable. La chaleur envoutante du haricot de Tonka, les harmonies nobles du cèdre s''unissent à la fraîcheur de la bergamote pour créer un parfum unique à la signature puissante et structurée.', N'Entre le ciel et le vent, l''altitude évoque l''harmonie du désert : imposant par sa taille pourtant fine il rassurer par ses courbes ressemblant à des dunes de sable. La chaleur envoutante du haricot de Tonka, les harmonies nobles du cèdre s''unissent à la fraîcheur de la bergamote pour créer un parfum unique à la signature puissante et structurée.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 9, N'The week-end sport and City Life Sunglasses Set', N'<p>This pack is composed of the two best-selling watches: weekend sport and City Life.</p>', N'<p>This pack is composed of the two best-selling watches: weekend sport and City Life.</p>', N'<p>This pack is composed of the two best-selling watches: weekend sport and City Life.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 12, N'Le coffret exclusif week-end sport + city life', N'<p>Ce coffret comprend les deux paires de lunettes de soleils week-end sport et City life.</p>', N'<p>Ce coffret comprend les deux paires de lunettes de soleils week-end sport et City life.</p>', N'<p>Ce coffret comprend les deux paires de lunettes de soleils week-end sport et City life.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 9, N'2012 London Summer Olympics - The Game', N'The Sumer Olympic games. An all family entertainment available for your PC. ', N'The Sumer Olympic games. An all family entertainment available for your PC. ', N'The Sumer Olympic games. An all family entertainment available for your PC. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 12, N'2012 Jeux Olympiques d''été - Le Jeu', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 9, N'Black diving', N'Black Diving Alarm Digital Military Chime Mens Watch.', N'Black Diving Alarm Digital Military Chime Mens Watch.', N'Black Diving Alarm Digital Military Chime Mens Watch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 12, N'Black diving', N'Montre militaire de plongée disposant d''une alarme.', N'Montre militaire de plongée disposant d''une alarme.', N'Montre militaire de plongée disposant d''une alarme.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', 9, N'Soft decorated pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', 12, N'Coussin Décoré', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', 9, N'White Light', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', 12, N'White Light', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', 9, N'45mm SS Case Automatic', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', 12, N'45mm SS Case Automatic', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', 9, N'Citadel Antivirus', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', 12, N'Citadel Antivirus', N'Protégez vos ordinateurs des menaces virales', N'Protégez vos ordinateurs des menaces virales', N'Protégez vos ordinateurs des menaces virales')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 9, N'Orange', N'<p>It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.</p>', N'<p>It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.</p>', N'<p>It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 12, N'Orange', N'C''est un contraste qui rend des choses intéressantes, comme ces lunettes orange et bleu. Le choix est clair. C''est une question de couleur.', N'C''est un contraste qui rend des choses intéressantes, comme ces lunettes orange et bleu. Le choix est clair. C''est une question de couleur.', N'C''est un contraste qui rend des choses intéressantes, comme ces lunettes orange et bleu. Le choix est clair. C''est une question de couleur.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'a86c25ea-00fe-4012-9ea3-8731653a2118', 9, N'Brown Leather Band Watch', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'a86c25ea-00fe-4012-9ea3-8731653a2118', 12, N'Brown Leather Band Watch', N'Plus que l''essentiel. Voici la montre du quotidien. Le cadre poli de cette montre ronde est associé au brun d''un bracelet en cuir véritable disposant d''une fermeture à boucle. Il est facile lire les numéros imprimés écrits en noir gras et contrastant avec le fonds blanc. ', N'Plus que l''essentiel. Voici la montre du quotidien. Le cadre poli de cette montre ronde est associé au brun d''un bracelet en cuir véritable disposant d''une fermeture à boucle. Il est facile lire les numéros imprimés écrits en noir gras et contrastant avec le fonds blanc. ', N'Plus que l''essentiel. Voici la montre du quotidien. Le cadre poli de cette montre ronde est associé au brun d''un bracelet en cuir véritable disposant d''une fermeture à boucle. Il est facile lire les numéros imprimés écrits en noir gras et contrastant avec le fonds blanc. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 9, N'Men''s Chrono Day', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 12, N'Men''s Chrono Day', N'Montre-chrono mécanique pour la journée, accompagnée d''un bracelet en cuir noir. ', N'Montre-chrono mécanique pour la journée, accompagnée d''un bracelet en cuir noir. ', N'Montre-chrono mécanique pour la journée, accompagnée d''un bracelet en cuir noir. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 9, N'RC Brown crocodile', N'Watch kite crocodile brown Leather.', N'Watch kite crocodile brown Leather.', N'Watch kite crocodile brown Leather.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 12, N'RC Brow crocodile', N'Montre classique assortie d''un bracelet de cuir de brun en crocodile.', N'Montre classique assortie d''un bracelet de cuir de brun en crocodile.', N'Montre classique assortie d''un bracelet de cuir de brun en crocodile.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 9, N'Karma 4 Men', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 12, N'Karma 4 Men', N'Karma 4 men est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.', N'Karma 4 men est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.', N'Karma 4 men est un parfum qui encourage l''harmonie, la conscience de soi… Un équilibre parfait entre la clarté de notes de citron, les vibrations florales épicées au cœur, et l''élégance classique de notes boisées. Tellement parfaitement équilibré elle semble évidente, une invitation à un moment intemporel… l''horizon devient léger et si évident, un sentiment d''équilibre intérieur et profond s''éveille en vous graduellement.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 9, N'Blue decor pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 12, N'Coussin Bleu', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 9, N'Beige straps pillow', N'<p>Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.</p>', N'<p>Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.</p>', N'<p>Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 12, N'Coussin Beige', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ff3d5209-e549-4437-999a-aad44f5340dd', 9, N'TimeEssence', N'This watch is perfectly suited for cardio training. The GPS may not be as effective as in other products but the feedback pertaining to workouts that is provided by the watch proves to be of great help. The exercise intensity score as measured by the heart rate monitor of TimeEssence ranges uses the 1-5 scale. Basic functionality of speed and distance tracking is carried out by the GPS system of this watch. ', N'The important features incorporated in this watch are the GPS, heart rate monitor and foot pod. ', N'This watch is perfectly suited for cardio training. The GPS may not be as effective as in other products but the feedback pertaining to workouts that is provided by the watch proves to be of great help. The exercise intensity score as measured by the heart rate monitor of TimeEssence ranges uses the 1-5 scale. Basic functionality of speed and distance tracking is carried out by the GPS system of this watch. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ff3d5209-e549-4437-999a-aad44f5340dd', 12, N'TimeEssence', N'La montre est parfaitement  appropriée au cardio- training. Le GPS ne peut pas être aussi efficace que dans d''autres produits mais la rétroaction concernant des séances d''entraînement qui est fournie par la montre s''avère être d''un grand secours. Le score d''intensité d''exercice mesuré par le moniteur de fréquence cardiaque de TimeEssence emploie une échelle de 1 à 5. La fonctionnalité de base du suivi de la vitesse et des distances est effectuée par le système de GPS de cette montre.', N'Les caractéristiques importantes incorporées dans cette montre sont le GPS, le moniteur de fréquence cardiaque et la course de pied. ', N'La montre est parfaitement  appropriée au cardio- training. Le GPS ne peut pas être aussi efficace que dans d''autres produits mais la rétroaction concernant des séances d''entraînement qui est fournie par la montre s''avère être d''un grand secours. Le score d''intensité d''exercice mesuré par le moniteur de fréquence cardiaque de TimeEssence emploie une échelle de 1 à 5. La fonctionnalité de base du suivi de la vitesse et des distances est effectuée par le système de GPS de cette montre.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 9, N'The Great Gatsby - Electronic Book', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 12, N'Gatsby le Magnifique - Livre électronique', N'Gatzby le magnifique, un classique de la littérature américaine de Scott Fitzgerald dans un format de livre électronique.', N'Gatzby le magnifique, un classique de la littérature américaine de Scott Fitzgerald dans un format de livre électronique.', N'Gatzby le magnifique, un classique de la littérature américaine de Scott Fitzgerald dans un format de livre électronique.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 9, N'Orange pillow. Clipping path', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 12, N'Coussin Orange', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 9, N'Unique', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 12, N'Unique', N'Être unique… avec un zeste d''orange ! Ces lunettes de soleil sont conçues pour le fun avec leur coté argenté brillant u et des accents oranges. Les verres orange ont un effet miroir. Les porter c''est briller.', N'Être unique… avec un zeste d''orange ! Ces lunettes de soleil sont conçues pour le fun avec leur coté argenté brillant u et des accents oranges. Les verres orange ont un effet miroir. Les porter c''est briller.', N'Être unique… avec un zeste d''orange ! Ces lunettes de soleil sont conçues pour le fun avec leur coté argenté brillant u et des accents oranges. Les verres orange ont un effet miroir. Les porter c''est briller.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0de77b97-c976-448f-9776-c732a43d65d8', 9, N'3D Glasses', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0de77b97-c976-448f-9776-c732a43d65d8', 12, N'Lunettes 3D', N'Ces verres durables contiennent optiques des lentilles fonte de qualité acrylique teinté de couleurs aux normes exigeantes. Les lentilles sont accordées chromatiquement aux phosphores dans les écrans d''ordinateur à pratiquement éliminer les images fantômes et autres gênant distorsions visuelles. Les cadres s''adaptent sur la plupart des cadres réguliers avec des verres correcteurs.', N'Ces verres durables contiennent optiques des lentilles fonte de qualité acrylique teinté de couleurs aux normes exigeantes. Les lentilles sont accordées chromatiquement aux phosphores dans les écrans d''ordinateur à pratiquement éliminer les images fantômes et autres gênant distorsions visuelles. Les cadres s''adaptent sur la plupart des cadres réguliers avec des verres correcteurs.', N'Ces verres durables contiennent optiques des lentilles fonte de qualité acrylique teinté de couleurs aux normes exigeantes. Les lentilles sont accordées chromatiquement aux phosphores dans les écrans d''ordinateur à pratiquement éliminer les images fantômes et autres gênant distorsions visuelles. Les cadres s''adaptent sur la plupart des cadres réguliers avec des verres correcteurs.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'855bd34f-53e8-4436-aeba-cddf92ca676a', 9, N'Coast to Coast', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'855bd34f-53e8-4436-aeba-cddf92ca676a', 12, N'Coast to Coast', N'Le parfum frais et aquatique, le souffle de la majesté de la nature. Regarder fixement l''océan, aa beauté intense et sa puissance impressionnante vous remplit d''un sentiment d''invincibilit. Transat frais, ce parfum aquatique vous vivifie, vous permet de rêver au-delà de l''horizon. Il mélange le parfum frais du romarin avec des accords marins d''insouciance. Ce parfum léger est ancré par la force de l''ambre.', N'Le parfum frais et aquatique, le souffle de la majesté de la nature. Regarder fixement l''océan, aa beauté intense et sa puissance impressionnante vous remplit d''un sentiment d''invincibilit. Transat frais, ce parfum aquatique vous vivifie, vous permet de rêver au-delà de l''horizon. Il mélange le parfum frais du romarin avec des accords marins d''insouciance. Ce parfum léger est ancré par la force de l''ambre.', N'Le parfum frais et aquatique, le souffle de la majesté de la nature. Regarder fixement l''océan, aa beauté intense et sa puissance impressionnante vous remplit d''un sentiment d''invincibilit. Transat frais, ce parfum aquatique vous vivifie, vous permet de rêver au-delà de l''horizon. Il mélange le parfum frais du romarin avec des accords marins d''insouciance. Ce parfum léger est ancré par la force de l''ambre.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'344f170c-9e9b-4559-96fe-d21d818a98ca', 9, N'White Musc', N'White Musc', N'White Musc', N'White Musc')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'344f170c-9e9b-4559-96fe-d21d818a98ca', 12, N'Musc Blanc', N'Musc Blanc', N'Musc Blanc', N'Musc Blanc')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 9, N'Pack Watch with Sunglasses', N'A pack with a watch and a pair of sunglasses.', N'A pack with a watch and a pair of sunglasses.', N'A pack with a watch and a pair of sunglasses.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 12, N'Pack Montre avec Lunettes de soleil', N'Un pack avec une montre et une paire de Lunettes de soleil.', N'Un pack avec une montre et une paire de Lunettes de soleil.', N'Un pack avec une montre et une paire de Lunettes de soleil.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 9, N'Aviatissimo', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 12, N'Aviatissimo', N'Les lunettes de soleil en métal dans le plus pur style Aviateur comportent un double pont et des reflets blancs. Les verres bleus ont un reflet miroir. Les porter c''est briller.', N'Les lunettes de soleil en métal dans le plus pur style Aviateur comportent un double pont et des reflets blancs. Les verres bleus ont un reflet miroir. Les porter c''est briller.', N'Les lunettes de soleil en métal dans le plus pur style Aviateur comportent un double pont et des reflets blancs. Les verres bleus ont un reflet miroir. Les porter c''est briller.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'6a0eb421-1c55-4419-a656-dc5339612ccd', 9, N'Green pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'6a0eb421-1c55-4419-a656-dc5339612ccd', 12, N'Coussin Vert', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 9, N'Dress Shirt V', N'Designer Dress Shirt V', N'Designer Dress Shirt V', N'Designer Dress Shirt V')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 12, N'Chemise habillée en V', N'Chemise habillée en V', N'Chemise habillée en V', N'Chemise habillée en V')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 9, N'Man-Kind', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 12, N'Man-Kind', N'Élégance et moderne masculins. Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.', N'Élégance et moderne masculins. Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.', N'Élégance et moderne masculins. Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 9, N'Surf & Kite', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 12, N'Surf & Kite', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 9, N'Pure Water', N'Pure Water', N'Pure Water', N'Pure Water')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 12, N'Eau Pure', N'Eau Pure', N'Eau Pure', N'Eau Pure')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 9, N'Software Security Pack', N'Software Security Pack', N'Software Security Pack', N'Software Security Pack')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 12, N'Pack Logiciel Securité', N'Pack Logiciel Securité', N'Pack Logiciel Securité', N'Pack Logiciel Securité')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', 9, N'Dress Shirt', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ', N'Italian Collar and Long Sleeves  Dress Shirts', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', 12, N'Chemise de ville', N'Chemise habillée  à manche longue et col italien', N'Chemise habillée  à manche longue et col italien (55% Coton/45% Polyester) ', N'Chemise habillée  à manche longue et col italien')
INSERT [magelia].[Catalog] ([CatalogId], [StartDate], [EndDate], [SellerId], [Code], [IsActive], [IsTaxInclusive], [ExternalId]) VALUES (N'e0109a37-70c3-0307-2f90-000e540c8685', NULL, NULL, @sellerId, N'Winter', 1, 0, N'')
INSERT [magelia].[Catalog] ([CatalogId], [StartDate], [EndDate], [SellerId], [Code], [IsActive], [IsTaxInclusive], [ExternalId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', NULL, NULL, @sellerId, N'Summer', 1, 0, N'')
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'49f1acc1-969c-5023-094c-000f8d60654f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'56b44440-a8b9-5123-3067-000f8d60654f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8e13c972-cd56-5223-5779-000f8d60654f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'99a0273c-252e-5323-5779-000f8d60654f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'eb29786a-87ba-9625-4dee-00100e420e4d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd09aa550-f761-9725-7563-00100e420e4d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aa83df76-6f86-9825-9be9-00100e420e4d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'deec0d4f-1e5e-9925-ea09-00100e420e4d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ea69fe3e-b967-9a25-111a-00100e420e4e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2e781047-c003-9b25-3821-00100e420e4e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6cebd5f6-cedc-9c25-5fb3-00100e420e4e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'69325d7b-a2c2-9d25-8673-00100e420e4e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6ad42d13-8c9c-8108-e1cd-000f8c72d304', N'e0109a37-70c3-0307-2f90-000e540c8685', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5f892c02-0854-8208-2fed-000f8c72d305', N'e0109a37-70c3-0307-2f90-000e540c8685', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0e96646d-9f6d-8308-5707-000f8c72d305', N'e0109a37-70c3-0307-2f90-000e540c8685', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0f475e94-daf0-8408-7e19-000f8c72d305', N'e0109a37-70c3-0307-2f90-000e540c8685', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'87cb662e-27a3-8508-7e19-000f8c72d305', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fb91801c-220e-8608-b853-000f8c72d305', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2b335f07-9cf0-8708-df83-000f8c72d305', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3e25bc9d-599e-8808-df83-000f8c72d305', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0e864bd4-c850-4726-8704-00100e42271e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8fdb8b55-0c95-4826-aa14-00100e42271e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9c8f2968-34ba-4926-d267-00100e42271e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0de77b97-c976-448f-9776-c732a43d65d8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'38d5a4ce-da9f-4a26-f9e2-00100e42271e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'deede28a-d5a4-4b26-27eb-00100e42271f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1242aa6e-1501-4c26-4fa3-00100e42271f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'246d5cf3-50c2-4d26-76fd-00100e42271f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0de77b97-c976-448f-9776-c732a43d65d8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ab95d897-1974-4e26-9dc0-00100e42271f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0652fd22-795b-5a0a-8e81-000f8c72fdd2', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9e5d503f-640a-5b0a-b597-000f8c72fdd2', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'88cdad89-fc91-5c0a-e45c-000f8c72fdd2', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2fd92095-b51c-5d0a-0a4b-000f8c72fdd3', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'413e0337-1c99-4b53-aa27-69475c0b0468', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'18d068e2-ba1c-5e0a-317f-000f8c72fdd3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cdda3f64-36c5-5f0a-589d-000f8c72fdd3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd3a06c7e-19b1-600a-589d-000f8c72fdd3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'53376cb2-920c-610a-7fb3-000f8c72fdd3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'413e0337-1c99-4b53-aa27-69475c0b0468', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd7e83c8a-7e51-5609-655f-000f8c72e79a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'01d68e99-9554-5709-8c57-000f8c72e79a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1271f493-b8a4-5809-b37a-000f8c72e79a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3ca10511-a9b0-5909-da90-000f8c72e79a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'86541ce9-f596-5a09-0995-000f8c72e79b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd11afa01-dfbf-5b09-30c0-000f8c72e79b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'16e5e703-9021-5c09-30c0-000f8c72e79b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6e712e16-b191-5d09-6616-000f8c72e79b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c1ffed42-f214-dc01-05c7-000f2fe77bbc', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6f042368-0025-dd01-6979-000f2fe77bbe', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'072cebd8-0b04-de01-6979-000f2fe77bbe', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ffb82b8b-c534-df01-6979-000f2fe77bbe', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6e9ac866-79c7-e001-6979-000f2fe77bbe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fb933b13-3ff8-e101-6979-000f2fe77bbe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bbeb2195-326e-e201-6979-000f2fe77bbe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4103e659-0def-e301-6979-000f2fe77bbe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'14aeafb0-9053-7f03-a380-000f8d5e06c6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'dd55e3fb-6551-8003-ca9b-000f8d5e06c6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5818505f-09e9-8103-f1ae-000f8d5e06c6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd3e856d7-5c20-8203-f1ae-000f8d5e06c6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ce39ca22-ac9e-8303-18c0-000f8d5e06c7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'22e2646d-2400-8403-3fd7-000f8d5e06c7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'dcb0b278-7014-8503-66f2-000f8d5e06c7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3af2e8f4-2678-8603-8e01-000f8d5e06c7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e7005105-d77e-b508-c1e0-000f8c72d8b6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'96f70059-df18-b608-dfd7-000f8c72d8b6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'62ccf6f0-0431-b708-0c12-000f8c72d8b7', N'e0109a37-70c3-0307-2f90-000e540c8685', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'15a784e7-f420-b808-3364-000f8c72d8b7', N'e0109a37-70c3-0307-2f90-000e540c8685', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bc23fab7-f81f-b908-5a58-000f8c72d8b7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'27942357-6296-ba08-8172-000f8c72d8b7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e81be733-6eda-bb08-a883-000f8c72d8b7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1f25f577-c431-bc08-a883-000f8c72d8b7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6911a11f-4b3d-ff02-6f6a-000f8d5df5ce', N'e0109a37-70c3-0307-2f90-000e540c8685', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8a577e34-bea9-0003-810a-000f8d5df5cf', N'e0109a37-70c3-0307-2f90-000e540c8685', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f5274a0e-e2cd-0103-cf38-000f8d5df5cf', N'e0109a37-70c3-0307-2f90-000e540c8685', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bd18d1d2-ade9-0203-f660-000f8d5df5cf', N'e0109a37-70c3-0307-2f90-000e540c8685', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5d7738aa-4f2d-0303-f660-000f8d5df5cf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b6cf5a8f-f130-0403-1d83-000f8d5df5d0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'853f7b20-553c-0503-448d-000f8d5df5d0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c398373e-4318-0603-6ba0-000f8d5df5d0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd313041f-1388-6705-f1be-000f8d5e5f42', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd57c5d7b-28e5-6805-18ee-000f8d5e5f43', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'41557727-a8e6-6905-3fef-000f8d5e5f43', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aae7d7ac-87ef-6a05-670e-000f8d5e5f43', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a6f84af2-3e71-6b05-8e18-000f8d5e5f43', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7c6ea529-07da-6c05-b540-000f8d5e5f43', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4ce03dc7-bbb0-6d05-b540-000f8d5e5f43', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1aaec9f4-409c-6e05-dc4e-000f8d5e5f43', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9480cbf9-87cd-9f26-92b4-00100e422d95', N'e0109a37-70c3-0307-2f90-000e540c8685', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0b6d47f9-9089-a026-b9c5-00100e422d95', N'e0109a37-70c3-0307-2f90-000e540c8685', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'756b880c-4887-a126-0810-00100e422d96', N'e0109a37-70c3-0307-2f90-000e540c8685', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c6f7b24d-c9a7-a226-2efc-00100e422d96', N'e0109a37-70c3-0307-2f90-000e540c8685', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'20e5d010-3637-a326-560d-00100e422d96', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f8d10ada-6be7-a426-7d53-00100e422d96', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'883a8d98-c4c7-a526-a44e-00100e422d96', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c8542666-3685-a626-f242-00100e422d96', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f98ca355-17e5-1b1e-1d74-000f8d60080b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd2340133-1e2e-1c1e-4493-000f8d60080b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6d32e5a8-330c-1d1e-6ba5-000f8d60080b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'80c6446b-6eb2-1e1e-92c9-000f8d60080b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'658dc89b-96a0-1f1e-b9d7-000f8d60080b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1e5b32fa-7764-201e-e0ed-000f8d60080b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9a08c4dc-8c5c-211e-0808-000f8d60080c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'28c7f49b-d7de-221e-2f1f-000f8d60080c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a4ca3fe0-29f0-bb13-b234-000f8d5f3546', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'def209b3-a24c-bc13-d94b-000f8d5f3546', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'ff3d5209-e549-4437-999a-aad44f5340dd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd54c18a9-d2eb-bd13-0055-000f8d5f3547', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'47aaf5df-cc41-be13-2779-000f8d5f3547', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ad8d1f06-0da8-bf13-2779-000f8d5f3547', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8c453fd1-1488-c013-4e8b-000f8d5f3547', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'ff3d5209-e549-4437-999a-aad44f5340dd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cc651ce1-4288-c113-7ec5-000f8d5f3547', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'12835539-a76d-c213-9da4-000f8d5f3547', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'571a29c9-e8e0-6203-1ec7-000f8d5e02ff', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'55ba3e8c-9bd6-6303-45d9-000f8d5e02ff', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4407313a-a810-6403-6d01-000f8d5e02ff', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd5b9d91e-6fa8-6503-9402-000f8d5e02ff', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1a8d21bf-642c-6603-bb0c-000f8d5e02ff', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3333304b-c163-6703-bb0c-000f8d5e02ff', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0b10c866-197e-6803-e241-000f8d5e02ff', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e1ca6211-152c-6903-094f-000f8d5e0300', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'72f4d960-c5a8-dd13-f234-000f8d5f41df', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'91e54477-ad3e-4821-9895-727c5058a4d9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4c50a3e3-4323-de13-193e-000f8d5f41e0', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ac840117-35a9-df13-405d-000f8d5f41e0', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'87abe264-6530-e013-405d-000f8d5f41e0', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'54d40aa4-da07-e113-6778-000f8d5f41e0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'91e54477-ad3e-4821-9895-727c5058a4d9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7ade4196-5b4b-e213-8e8f-000f8d5f41e0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0413a46a-a273-e313-b5dd-000f8d5f41e0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd2c11795-ea0b-e413-dcbc-000f8d5f41e0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'50446fc7-6a87-d61d-a6d8-000f8d5fed7b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0f7d2af2-984a-d71d-f50e-000f8d5fed7b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a4776c59-8924-d81d-f50e-000f8d5fed7b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a98eb61d-f8ec-d91d-1c17-000f8d5fed7c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'68494d36-c924-da1d-560a-000f8d5fed7c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'00b009e0-0bf4-db1d-7d36-000f8d5fed7c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aa9a5a9e-a3b3-dc1d-a444-000f8d5fed7c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'29555e77-82bb-dd1d-a444-000f8d5fed7c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9eccf893-d92c-b702-a334-000e544aae6f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'67e56ba1-45d6-b802-1865-000e544aae70', N'e0109a37-70c3-0307-2f90-000e540c8685', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'525afe22-b7bf-b902-6687-000e544aae70', N'e0109a37-70c3-0307-2f90-000e540c8685', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8247aab9-fbb8-ba02-b4a8-000e544aae70', N'e0109a37-70c3-0307-2f90-000e540c8685', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9bd0aeb8-9a13-bb02-02c9-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'78e849ae-86f2-bc02-50ea-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0140bd6-fd8a-bd02-9f0b-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bfd5e276-2324-be02-ed2c-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9b8ee94d-0e16-8a09-f490-000f8c72eb33', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6fb56298-b0a1-8b09-1b9d-000f8c72eb34', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fa8456c4-8182-8c09-42c0-000f8c72eb34', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'62e99ab1-05f5-8d09-6ced-000f8c72eb34', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a729a6b0-857a-8e09-93b6-000f8c72eb34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aab75de7-c1df-8f09-baee-000f8c72eb34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2cbc9c29-8eed-9009-e209-000f8c72eb34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5b7a6186-e2c0-9109-e209-000f8c72eb34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd58b9e2d-2029-e524-0fff-00100e41f770', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f7507877-b84e-e624-36ed-00100e41f770', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ca6d7b07-a68d-e724-8508-00100e41f770', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'37267e85-8fd7-e824-ac1d-00100e41f770', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'38ef793a-f7ad-e924-d32b-00100e41f770', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9baa1cba-380d-ea24-fa58-00100e41f770', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e53622d7-1f82-eb24-231e-00100e41f771', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'514899c7-8db7-ec24-4881-00100e41f771', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'544886c3-532e-8d24-b495-00100e41ec31', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'569c6a19-5304-8e24-5780-00100e41ec33', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'173407d3-b585-8f24-7e91-00100e41ec33', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9f678895-ee25-9024-cc8f-00100e41ec33', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6ff860f3-6d91-9124-f39f-00100e41ec33', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'11b344f9-68c9-9224-1ab0-00100e41ec34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0087585-2a2f-9324-41bf-00100e41ec34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'030aa8d8-f3d3-9424-68f0-00100e41ec34', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'604b345d-63c5-f81d-f885-000f8d5ffbf4', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6c395f54-4b03-f91d-46c3-000f8d5ffbf5', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fd39a5e0-0ea5-fa1d-46c3-000f8d5ffbf5', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd385c613-9832-fb1d-6dda-000f8d5ffbf5', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bd24d18b-f679-fc1d-94e4-000f8d5ffbf5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aab3671e-2b09-fd1d-bbf6-000f8d5ffbf5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'87630417-3c9e-fe1d-e315-000f8d5ffbf5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9467ac6c-4879-ff1d-0a23-000f8d5ffbf6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'61d13bdf-45b2-bc03-b021-000f8d5e13d1', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'70e1c900-4560-bd03-d738-000f8d5e13d1', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'be87e5cc-7ebc-be03-fe4f-000f8d5e13d1', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e14b8089-e5a5-bf03-fe4f-000f8d5e13d1', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'520e3afc-3c3f-c003-2566-000f8d5e13d2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c18d1af0-62dd-c103-4c7d-000f8d5e13d2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b592c4d7-5f3a-c203-7393-000f8d5e13d2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'92b68b77-d584-c303-9aaa-000f8d5e13d2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'936306d3-d113-ee25-e672-00100e421a0d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e4bd2db8-61a2-ef25-0d7f-00100e421a0e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'daad5059-efef-f025-3493-00100e421a0e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7b652b4f-41dc-f125-82b5-00100e421a0e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e1008527-89d3-f225-a9c5-00100e421a0e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'823b31a4-39b8-f325-d0d5-00100e421a0e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8c760a51-45ab-f425-f7df-00100e421a0e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'78541fa7-ee3b-f525-1efb-00100e421a0f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b53aa09e-95c9-ee08-f3d4-000f8c72e08b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e285fbf1-115c-ef08-4200-000f8c72e08c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'97e78992-e223-f008-4200-000f8c72e08c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'da912499-e7ab-f108-7b65-000f8c72e08c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a4df353d-9584-f208-a516-000f8c72e08c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a2e33f93-8101-f308-c707-000f8c72e08c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6df67e00-97d8-f408-ee32-000f8c72e08c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9df350dc-aec9-f508-ee32-000f8c72e08c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'843fb9f3-fb1a-8e0a-3cb6-000f8c73015d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'37983ded-6176-8f0a-8ade-000f8c73015d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aeabffda-fee8-900a-8ade-000f8c73015d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'32689665-d92d-910a-b1fd-000f8c73015d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b020ae16-4766-920a-d90a-000f8c73015d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8646c0fb-107f-930a-0020-000f8c73015e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7d39369e-b45b-940a-2736-000f8c73015e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0e9f47f6-1834-950a-4e4c-000f8c73015e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a09d93af-ca93-8c23-91e2-000f8d608efd', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8c7c3e43-862e-8d23-b8fd-000f8d608efd', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1a9b5404-c07f-8e23-e014-000f8d608efd', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'707688a9-4020-8f23-072a-000f8d608efe', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'67320ab8-ac3a-9023-2e3d-000f8d608efe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'805f0f38-df4e-9123-2e3d-000f8d608efe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'be130a87-e491-9223-5553-000f8d608efe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'918ec3a4-7cb8-9323-7c6a-000f8d608efe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9710b363-e267-3e25-15fb-00100e4200f3', N'e0109a37-70c3-0307-2f90-000e540c8685', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aeb9905b-a488-3f25-3ce2-00100e4200f3', N'e0109a37-70c3-0307-2f90-000e540c8685', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3cf7b0fe-994b-4025-63f5-00100e4200f3', N'e0109a37-70c3-0307-2f90-000e540c8685', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'54ebe24c-b0ba-4125-8b2c-00100e4200f3', N'e0109a37-70c3-0307-2f90-000e540c8685', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c057fb90-140b-4225-d94c-00100e4200f3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ea046ea0-30e5-4325-0038-00100e4200f4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'99b14c3a-9215-4425-2747-00100e4200f4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'571e1510-d133-4525-4e56-00100e4200f4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8a22fec1-0ece-2b04-80de-000f8d5e2207', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'84520243-ab1d-2c04-a7f1-000f8d5e2207', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'71e032cf-2592-49a9-a166-6eea06ca4014', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'650a5091-4b06-2d04-cf08-000f8d5e2207', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'74f44acd-6140-2e04-f627-000f8d5e2207', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'860e3dd1-3ecd-2f04-f627-000f8d5e2207', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'62d2a53c-e68c-3004-1d3e-000f8d5e2208', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'71e032cf-2592-49a9-a166-6eea06ca4014', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fb104014-156b-3104-444c-000f8d5e2208', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4cac7b03-bd51-3204-6b5f-000f8d5e2208', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'76191144-769d-be09-fc60-000f8c72efd6', N'e0109a37-70c3-0307-2f90-000e540c8685', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2b66af5b-1f35-bf09-4a90-000f8c72efd7', N'e0109a37-70c3-0307-2f90-000e540c8685', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'11715b7d-24cc-c009-4a90-000f8c72efd7', N'e0109a37-70c3-0307-2f90-000e540c8685', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd25ddc5e-9985-c109-71a6-000f8c72efd7', N'e0109a37-70c3-0307-2f90-000e540c8685', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3efc7f92-749f-c209-aecd-000f8c72efd7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c42ac66a-b376-c309-d5f0-000f8c72efd7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'26800b90-870a-c409-d5f0-000f8c72efd7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'892ea643-6624-c509-0e25-000f8c72efd8', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'624b4bab-b636-260a-d674-000f8c72f927', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9fe1d7e5-7ef8-270a-fd85-000f8c72f927', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c2fcaa75-0e39-280a-2cb9-000f8c72f928', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a7b361ea-1963-290a-4c0b-000f8c72f928', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'22419ff2-679c-2a0a-6fc6-000f8c72f928', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'32b376d5-c4e5-2b0a-8ed3-000f8c72f928', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'dc67f5b8-ec1b-2c0a-b5fa-000f8c72f928', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'44fa52e7-c605-2d0a-b5fa-000f8c72f928', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3b3cedee-c935-db03-231f-000f8d5e1873', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0874eb58-edbd-dc03-4af2-000f8d5e1873', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'25973f58-2459-dd03-714d-000f8d5e1873', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'59cc6b6d-2a69-de03-714d-000f8d5e1873', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'618a3733-b9ed-df03-9868-000f8d5e1873', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5976382c-666a-e003-bf7b-000f8d5e1873', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e23aafc2-c1a1-e103-e689-000f8d5e1873', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'72a1b275-7576-e203-0da0-000f8d5e1874', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'387da693-319d-9304-c0e9-000f8d5e26e4', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd67eafbc-6030-9404-e800-000f8d5e26e4', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f5304dfd-d813-9504-0f0e-000f8d5e26e5', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ab484f21-cc86-9604-3625-000f8d5e26e5', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2e40fcc2-3655-9704-5d40-000f8d5e26e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7f1216e7-e6c1-9804-8468-000f8d5e26e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1fa4b8bf-6f0d-9904-ab6a-000f8d5e26e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b0715314-7bcf-9a04-d292-000f8d5e26e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'bec8d392-4279-4195-9c76-79d7bec0715f', 1, 0)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8321da62-565b-2f1b-c969-000d990ad30e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'33df410e-74d4-141e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b85c097b-a88c-151e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ca9e1386-3a90-161e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ec3e59c-c916-851d-d589-000d990b7930', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'895e9f89-a787-f11d-d025-000d990b9747', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2e02e9d6-4957-1707-0912-000e540c874a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8378eec1-76e7-1807-3d6e-000e540c874d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a4355e57-2c62-1b07-3946-000e540c874f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'27151e92-f075-1e07-6056-000e540c874f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ec3e59c-c916-851d-d589-000d990b7930', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c2e13537-3194-2107-8767-000e540c874f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'895e9f89-a787-f11d-d025-000d990b9747', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6a0419ec-49e9-2407-ae77-000e540c874f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b921987e-51e1-4985-ab44-019965b52d0f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f939776-df9e-2707-fc98-000e540c874f', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6cf52034-edb0-2a07-23a9-000e540c8750', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd3181796-ad1b-2d07-4aba-000e540c8750', N'e0109a37-70c3-0307-2f90-000e540c8685', N'881055b6-d532-42c4-9818-15bdb80e1e39', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0aeb4b3e-b3d2-3607-e6fc-000e540c8750', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'070f8f60-c696-3c07-5c2e-000e540c8751', N'e0109a37-70c3-0307-2f90-000e540c8685', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8372b206-89cd-3d07-833e-000e540c8751', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'441ad31b-4b50-4007-aa4f-000e540c8751', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a8a2fce8-7098-4307-d15f-000e540c8751', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7f7cdb2e-7fed-4707-1f80-000e540c8752', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'07e521e2-fd4d-4a07-4691-000e540c8752', N'e0109a37-70c3-0307-2f90-000e540c8685', N'75ac5adb-22ac-42fa-8f72-34515265151b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'3482f76f-23e0-4b07-94b2-000e540c8752', N'e0109a37-70c3-0307-2f90-000e540c8685', N'5243cba2-3003-42e0-bc1c-3c85470b9087', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'78015c64-5e60-4e07-e2d3-000e540c8752', N'e0109a37-70c3-0307-2f90-000e540c8685', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1f919855-c7ea-5107-09e4-000e540c8753', N'e0109a37-70c3-0307-2f90-000e540c8685', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'107533a6-50d4-5407-30f4-000e540c8753', N'e0109a37-70c3-0307-2f90-000e540c8685', N'5f70f381-94e9-46f4-b67d-4b1afc729521', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'69515548-1c2d-5707-7f16-000e540c8753', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9c4215ba-3ffc-5a07-a626-000e540c8753', N'e0109a37-70c3-0307-2f90-000e540c8685', N'5488b334-d396-4079-bb14-4d45cd97c271', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'db6a1860-c6f2-6007-f447-000e540c8753', N'e0109a37-70c3-0307-2f90-000e540c8685', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ddd44419-f6b7-6107-1b58-000e540c8754', N'e0109a37-70c3-0307-2f90-000e540c8685', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'711fb309-427c-6407-4268-000e540c8754', N'e0109a37-70c3-0307-2f90-000e540c8685', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'40c077eb-54ce-6a07-b79a-000e540c8754', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8fda8d52-4da9-6d07-deab-000e540c8754', N'e0109a37-70c3-0307-2f90-000e540c8685', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6e22b29a-2e68-7007-05bb-000e540c8755', N'e0109a37-70c3-0307-2f90-000e540c8685', N'057fb737-a362-46fa-8a3d-5f651d5de371', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'de4e4ecd-0a26-7307-53dc-000e540c8755', N'e0109a37-70c3-0307-2f90-000e540c8685', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'242cc81a-2043-7607-7aed-000e540c8755', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6d595ac1-f1de-7907-a1fe-000e540c8755', N'e0109a37-70c3-0307-2f90-000e540c8685', N'413e0337-1c99-4b53-aa27-69475c0b0468', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'92eb8def-2430-7c07-f01f-000e540c8755', N'e0109a37-70c3-0307-2f90-000e540c8685', N'15124216-83f5-4a96-a776-6de4d33e29a5', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'cb5b510c-5e2a-7f07-172f-000e540c8756', N'e0109a37-70c3-0307-2f90-000e540c8685', N'71e032cf-2592-49a9-a166-6eea06ca4014', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6bd6dd90-2ae3-8207-3e40-000e540c8756', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e54477-ad3e-4821-9895-727c5058a4d9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'918084c3-0504-8507-6550-000e540c8756', N'e0109a37-70c3-0307-2f90-000e540c8685', N'13b0719d-1441-4d3e-a1de-765cd22c913b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'799e979b-9f63-8807-b372-000e540c8756', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2310c6a3-840a-455d-ab03-7726290ecc05', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e75562be-e09c-8b07-da82-000e540c8756', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a9c9aadc-46eb-4bff-a213-78740730b8af', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'521b0a6a-91a3-8e07-0193-000e540c8757', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bec8d392-4279-4195-9c76-79d7bec0715f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'68895dd1-8c4a-9407-76c4-000e540c8757', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'db9e007c-28c7-9707-9dd5-000e540c8757', N'e0109a37-70c3-0307-2f90-000e540c8685', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'199a5f60-1f42-9a07-c4e6-000e540c8757', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd94858ed-6538-4958-a147-846dc651c79f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'289bfa21-d870-9d07-ebf6-000e540c8757', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0e0e8525-8316-a007-3a17-000e540c8758', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a86c25ea-00fe-4012-9ea3-8731653a2118', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1a3514d9-1096-a307-6128-000e540c8758', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'53340d39-719e-a607-8838-000e540c8758', N'e0109a37-70c3-0307-2f90-000e540c8685', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e5939a52-2d33-a907-d65a-000e540c8758', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e48f1816-88f9-ac07-fd6a-000e540c8758', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2fc3d613-302c-4f9b-850c-8eded3486e32', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e6375062-8752-af07-247b-000e540c8759', N'e0109a37-70c3-0307-2f90-000e540c8685', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'3c8ec439-37b2-b207-4b8b-000e540c8759', N'e0109a37-70c3-0307-2f90-000e540c8685', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'08b41186-e2c8-b307-729c-000e540c8759', N'e0109a37-70c3-0307-2f90-000e540c8685', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7bc59ecc-9691-b607-99ac-000e540c8759', N'e0109a37-70c3-0307-2f90-000e540c8685', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', N'e0109a37-70c3-0307-2f90-000e540c8685', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c4209424-2233-bc07-0ede-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'22e5bceb-7706-bf07-35ef-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ff3d5209-e549-4437-999a-aad44f5340dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e75f43e6-15c2-c207-5cff-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1ae2ea56-ff9b-c507-8410-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8444e993-3a4d-c807-d231-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'98c10c02-9c22-cb07-f942-000e540c875a', N'e0109a37-70c3-0307-2f90-000e540c8685', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'61db7556-2efc-ce07-2052-000e540c875b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f28f5cb0-ac15-d107-4763-000e540c875b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2cd228d4-3249-d407-9584-000e540c875b', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1c7df79a-006b-dd07-31c6-000e540c875c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'02e8e67c-f95e-4145-b475-c974016fe4a8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8f1ae831-02db-e007-58d7-000e540c875c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'855bd34f-53e8-4436-aeba-cddf92ca676a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd6a63c04-99b3-e107-7fe7-000e540c875c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'344f170c-9e9b-4559-96fe-d21d818a98ca', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ca4b99f0-6211-e207-7fe7-000e540c875c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'8b779da6-e306-44c1-a673-d464ec8a4b34', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9a2f0986-e2e9-e507-ce08-000e540c875c', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'444d80ee-3f83-eb07-1c2a-000e540c875d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'6a0eb421-1c55-4419-a656-dc5339612ccd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ac836d65-8258-ee07-6a4b-000e540c875d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'195a5f96-04a5-ef07-6a4b-000e540c875d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'103e1cd3-f009-f307-b86c-000e540c875d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'263b8eff-de92-f407-df7c-000e540c875d', N'e0109a37-70c3-0307-2f90-000e540c8685', N'341c84b5-d194-40d6-80bd-eea300e9ee45', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'5c484d3c-00df-f707-068d-000e540c875e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c060e8a9-e9e6-fa07-2d9e-000e540c875e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'e32d7fc3-a151-423e-8b35-f238b643671c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e82c19cc-b56c-fb07-54ae-000e540c875e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'3afc373b-472f-fe07-7bbf-000e540c875e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b9f27fc7-55a3-0108-a2cf-000e540c875e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8c32729a-ce35-9300-839b-000ec7f0473c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0e3e6e43-ef56-9400-e4fb-000ec7f0473e', N'e0109a37-70c3-0307-2f90-000e540c8685', N'74b3baf8-8c7d-7f00-d514-000ec7f0322d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd3408dec-1ec7-6d02-7838-000ecb3fa721', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'82bc5c06-5c67-6e02-147d-000ecb3fa722', N'e0109a37-70c3-0307-2f90-000e540c8685', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'33dfed8d-b968-7900-3a53-000ecb44a3bf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'355631c4-00b9-7a00-d699-000ecb44a3bf', N'e0109a37-70c3-0307-2f90-000e540c8685', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8bb94077-5945-8107-4b1c-000f8c933152', N'e0109a37-70c3-0307-2f90-000e540c8685', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'58e696c2-176e-8207-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b7f75d9a-1f3c-8307-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7c215999-b075-8407-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'4d5e3e26-83bd-8507-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'18f9055f-7be5-8607-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'0de77b97-c976-448f-9776-c732a43d65d8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0b2d26c5-3137-8707-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'71f040d9-f5f0-8807-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'114bdb2b-cfec-8907-ad45-000f8c933154', N'e0109a37-70c3-0307-2f90-000e540c8685', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b1565d2c-7452-9a07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1836c704-bb78-9b07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd38ce263-8c83-9c07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1071bb2e-bec5-9d07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'98f6b307-a596-9e07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'693dcaca-6f7c-9f07-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0e40982d-28e3-a007-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'516f49a3-e83e-a107-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1612a3a5-52ca-a207-c975-000f8c9338a3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'00575ef8-b936-485c-ac53-0096f50a54b2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f1157cb-f677-49f7-812d-0323ecedf679', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'02e8e67c-f95e-4145-b475-c974016fe4a8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a6ff3a85-a6de-4a04-b3d9-05d722465701', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0b2f7e63-52b6-465f-b144-098e2507c678', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'15124216-83f5-4a96-a776-6de4d33e29a5', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'655c5105-ab28-45e7-94ec-10951861b4d7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5488b334-d396-4079-bb14-4d45cd97c271', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'31aaed2e-e938-4f43-ba3f-13720419c4db', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'fb908585-2fbe-48d8-a0f8-14bc10f56720', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'8b779da6-e306-44c1-a673-d464ec8a4b34', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'734eb62a-9fa4-4ca3-acd7-20297215d996', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9ac78b94-6cdb-462f-8023-27005cac67c2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'881055b6-d532-42c4-9818-15bdb80e1e39', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'016f4014-3566-4fa2-a302-2ae667761d27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9e252cec-7869-430d-a717-2bd944b7319e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'21890331-11bc-40af-9cec-2c146abe638d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7b9d0950-178e-4f1d-8961-3b43e50409aa', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5f70f381-94e9-46f4-b67d-4b1afc729521', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'44ff3d5b-f560-4b46-8f7b-402d0717d0a6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9efe8692-bc5e-4ecc-a034-48db75585062', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7abf2b2e-39df-454a-8a31-4e655fa2e381', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f21839f3-b35f-4203-98c3-50ac05ca0509', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f63da8f-28d9-4d49-917c-5713d360a69a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f853fa3d-0937-470d-a276-5969c2041719', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'71e032cf-2592-49a9-a166-6eea06ca4014', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a059713d-a032-4abf-99d9-72ead8819e31', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'067baa1a-c70f-4e91-bd73-79767cd267d3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'685ae003-b048-42d6-9771-7b3624f74a2d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ad2698fc-fdef-4727-9563-803cfa9f737e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7209d388-381c-466a-9afc-80b3989a38c0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5243cba2-3003-42e0-bc1c-3c85470b9087', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'796be820-7f83-4622-838b-85943bb6792f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'057fb737-a362-46fa-8a3d-5f651d5de371', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e1470383-3f50-4c1d-9227-8656608ceedc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b323a0f5-70df-472a-9f34-9023ffe50f4b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'3290c2c7-6b5c-4cda-869e-90604509fcdf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a2bdf0a5-73c2-475d-b259-922257f44631', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'15519388-9bff-454f-b0c1-93ae7c852e51', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2fc3d613-302c-4f9b-850c-8eded3486e32', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'facbf1b5-f87f-46af-9c98-9480c358f7e6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'76a020d2-a68b-43eb-90aa-94926a081d8d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'fc34ba62-65be-4841-9f7f-a1b6375b5569', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8643c832-5cb5-4d9e-9be0-a25ca393203d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'e9fec841-7b25-4666-9259-a75a90573f5b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'341c84b5-d194-40d6-80bd-eea300e9ee45', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'bc2b5ec1-61c5-4469-b48f-b4954824964a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'4fdabce6-3f6e-40c1-80db-b98c3e173681', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a9c9aadc-46eb-4bff-a213-78740730b8af', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6a406f27-9f7b-4093-afc5-baa9623596cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'97851de3-ea87-4780-809d-c0801758a765', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'78d2e7a4-945e-4b96-a560-c24f89ec754c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'1635397e-421b-41a6-a396-c509425a392b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f7728012-2fbf-4222-8a6f-c551419ce068', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'18e50023-3749-49f5-aad5-c860ceb68aff', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd94858ed-6538-4958-a147-846dc651c79f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f6529c64-6baf-426c-9414-cb0e70d9e589', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'5baddd31-b9ae-466d-90e8-cc06a8935de1', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'13b0719d-1441-4d3e-a1de-765cd22c913b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'4b7dbec8-49db-4c99-80f9-f09d206e1604', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f6d139c4-6297-443f-a335-f91e3f2634dd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'58cceb98-94c4-49d8-b47b-fa64739df04b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd5edd9ee-eb50-456c-9a5a-fad649113a68', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'71c787e3-d779-492d-9700-fbedf6353093', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'607860e5-acf2-49a3-a39c-fdf14f27216a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'eddf9007-0b54-451f-9290-fe6506dd8a87', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b921987e-51e1-4985-ab44-019965b52d0f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'65b83e0f-b723-4b4b-aefc-ff71736eb821', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', NULL)
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', 9, N'Warehouse #2 in Paris')
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', 12, N'Entrepot N°2 à Paris')
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', 9, N'Warehouse #1 in Chicago')
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', 12, N'Entrepôt N°1 Chicago')
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', @sellerId, N'FirstOrderPromoCode', N'', 1, 0, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:ValuesAction"><a:Condition i:nil="true" /><a:Target>Basket</a:Target><b:Values><b:ValuesAction.DiscountValue><b:CurrencyId>978</b:CurrencyId><b:IncludeTaxes>false</b:IncludeTaxes><b:Value>10</b:Value></b:ValuesAction.DiscountValue></b:Values></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:BinaryCondition"><b:ChildConditionNodes><a:BaseCondition i:type="b:PromoCodeCondition"><b:PromoCode>magelia</b:PromoCode></a:BaseCondition><a:BaseCondition i:type="b:MaxApplicationCondition"><b:MaxApplicationCount>1</b:MaxApplicationCount><b:Type>PerUser</b:Type></a:BaseCondition></b:ChildConditionNodes><b:Operand>And</b:Operand></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', @sellerId, N'SunGlasses-5%', N'', 1, 1000, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:PercentageAction"><a:Condition i:nil="true" /><a:Target>ProductUnit</a:Target><b:Accumulative>false</b:Accumulative><b:IncludeShippingRates>false</b:IncludeShippingRates><b:Percentage>5</b:Percentage></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:CategoriesCondition"><b:CategoryCodes xmlns:c="http://schemas.microsoft.com/2003/10/Serialization/Arrays"><c:string>Sunglasses</c:string></b:CategoryCodes></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail], [MinRequiredUserNameLength]) VALUES (N'52f034c1-7969-9400-4654-000da7b9e2a4', @sellerId, @storeName + N'-02-Europe', 1, 10, 0, 3, 60, NULL, 0, 0, 1, 3)
INSERT [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail], [MinRequiredUserNameLength]) VALUES (N'573bc390-6e42-3d03-9cfa-000f31b9dbdb', @sellerId, @storeName + N'-01-US', 1, 10, 0, 3, 60, NULL, 0, 0, 0, 3)
INSERT [magelia].[StoreConfiguration] ([StoreConfigurationId], [SellerId], [Description], [Code]) VALUES (N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @sellerId, NULL, N'DefaultConfiguration')
INSERT [magelia].[Store] ([StoreId], [SellerId], [StoreConfigurationId], [Code], [IsActive], [AdditionalDataXml], [CustomerSetId], [DefaultCountryId], [BurstedContentTypeAssemblyBinary]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', @sellerId, N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @storeName + N'-02-Europe', 1, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><LastOrderNumber>0</LastOrderNumber></StoreSettings>', N'52f034c1-7969-9400-4654-000da7b9e2a4', 250, NULL)
INSERT [magelia].[Store] ([StoreId], [SellerId], [StoreConfigurationId], [Code], [IsActive], [AdditionalDataXml], [CustomerSetId], [DefaultCountryId], [BurstedContentTypeAssemblyBinary]) VALUES (@storeId, @sellerId, N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @storeName + N'-01-US', 1, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><LastOrderNumber>0</LastOrderNumber></StoreSettings>', N'573bc390-6e42-3d03-9cfa-000f31b9dbdb', 840, NULL)
INSERT [magelia].[OrderChannel] ([OrderChannelId], [Code], [SellerId]) VALUES (N'b9edc908-e223-1608-8671-000e5208e26c', N'Web', @sellerId)
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', @sellerId, NULL, N'Metadata')
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'0bff109e-fa67-d406-8676-000f2a5057aa', @sellerId, NULL, N'Category_Banner')
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'9595e815-32c2-0908-8931-000f2a526a41', @sellerId, NULL, N'Home_Banner')
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'75364dc9-ca74-7c08-7d7f-000f2a531333', @sellerId, NULL, N'Password_Question')
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'958a6b8e-9424-0809-a3d7-000f2a5425df', @sellerId, NULL, N'Reinsurance_Block')
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', @sellerId, NULL, N'StandardContent')
INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 9)
INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 12)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'5a0b5cbe-6c4b-8a00-f61d-000f2a6c8549', N'Images', @sellerId, 9)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', N'Contenance', @sellerId, 2)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', N'ReleaseDate', @sellerId, 3)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'Image', @sellerId, 8)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'Sleeves', @sellerId, 4)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'ShoesWidth', @sellerId, 4)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'Unit', @sellerId, 4)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', N'Color', @sellerId, 4)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'Neck', @sellerId, 4)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', N'ShoesSize', @sellerId, 2)
INSERT [magelia].[ProductAttribute] ([ProductAttributeId], [Code], [SellerId], [ProductAttributeTypeId]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', N'OperatingSystem', @sellerId, 4)
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', 9, N'1st order promotion code discount', N'10€ off for your first order')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', 12, N'Remise sur 1ère commande Code promotionnel', N'10€ de remise sur votre première commande')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', 9, N'5% off sunglasses', N'5% off sunglasses')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', 12, N'5% de remise sur lunettes de soleil', N'5% de remise sur lunettes de soleil')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'7d542c6e-243a-4524-9b72-d86169a191eb')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'7d542c6e-243a-4524-9b72-d86169a191eb')
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 1)
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, 0)
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeId, 9, 1)
INSERT [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 978, 1)
INSERT [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (@storeId, 840, 1)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'a36f60e8-8ae2-552f-5abe-00100e47e9ce', @storeId, 9, 840, 56)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'4dd502e0-5007-562f-5abe-00100e47e9ce', @storeId, 9, 840, 124)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'1a62d225-5a64-572f-5abe-00100e47e9ce', @storeId, 9, 840, 156)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'adb1ba74-f487-582f-5abe-00100e47e9ce', @storeId, 9, 840, 250)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'2173093a-b38e-592f-5abe-00100e47e9ce', @storeId, 9, 840, 276)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'beec1102-6af7-5a2f-5abe-00100e47e9ce', @storeId, 9, 840, 356)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'c6edb697-c013-5b2f-5abe-00100e47e9ce', @storeId, 9, 840, 380)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'dc9ed1a8-984b-5c2f-5abe-00100e47e9ce', @storeId, 9, 840, 392)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'954194d5-3098-5d2f-5abe-00100e47e9ce', @storeId, 9, 840, 442)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'53b1d60e-4313-5e2f-5abe-00100e47e9ce', @storeId, 9, 840, 724)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'c73af8a6-d985-5f2f-5abe-00100e47e9ce', @storeId, 9, 840, 756)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'b734c058-23e3-602f-5abe-00100e47e9ce', @storeId, 9, 840, 840)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'4efbeff7-eb49-ef2f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 56)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'1b42498d-f0c2-f02f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 124)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'e78d6fa6-ea7b-f12f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 156)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'fd2e365e-88c7-f22f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 276)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'485fd378-0779-f32f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 356)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'37b82159-2716-f42f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 380)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'3488cb8a-7479-f52f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 392)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'1a7ce164-f9be-f62f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 442)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'13eec024-12ef-f72f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 724)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'c765a10e-ae54-f82f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 756)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'24e1a6c3-b33e-f92f-72b6-00100e4959ae', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, 978, 840)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'29f8e58b-33e9-1230-c025-00100e496b92', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, 978, 56)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'b64df557-8223-1330-c025-00100e496b92', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, 978, 124)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'00786dcd-aff1-1430-c025-00100e496b92', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, 978, 250)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'af499b0d-c2b7-1530-c025-00100e496b92', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, 978, 756)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'aeb4e84a-f7d8-8e06-d009-000f8bd989e9', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 250, N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'a1177c3e-863e-9300-a859-000e52149f83', 12, 978)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'90221d86-d2a7-c706-1ece-000f8bd9c2f0', @storeId, 840, N'de071fbf-472a-3d0c-d443-000e4fa6c806', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 9, 840)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'2853bfce-7f2d-dc08-c07c-000f8bdc0dbd', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 724, N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'a1177c3e-863e-9300-a859-000e52149f83', NULL, NULL)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'26157d04-8982-296b-4803-00100fa6102b', @storeId, 250, N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'05ecadb6-e25e-a409-3778-000f8be222b2', 9, 840)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'42bd5928-007d-4b58-922a-10b9d92b1a5e', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'Contact', N'Mail sent when the user want to contact us', 20)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'0fa32105-c6dd-4f5d-bb55-1593f013052d', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'NewPassword', N'Mail sent when the user reset his password', 20)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'eb351ce6-5a1e-43eb-9bcf-2a5ec41cbcf9', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'NewAccount', N'Mail sent when the customer create his account', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', @storeId, N'NewAccount', N'Mail sent when the customer create his account', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'bb7a81e5-7f1c-437e-8db6-36ecef18a419', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'OrderRejected', N'Mail sent when the order has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', @storeId, N'OrderConfirmation', N'Mail sent when the customer save this basket as order', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', @storeId, N'Contact', N'Mail sent when the user want to contact us', 20)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', @storeId, N'PaymentApproved', N'Mail sent when the payment of an order has been approved', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', @storeId, N'PaymentRejected', N'Mail sent when the payment of an order has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'e077b42f-1965-435f-8037-9806e64df851', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'PaymentRejected', N'Mail sent when the payment of an order has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'ce741697-38eb-4285-bf75-ba219807523d', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'PaymentApproved', N'Mail sent when the payment of an order has been approved', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', @storeId, N'OrderRejected', N'Mail sent when the order has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'45ca1df3-9328-4b1f-94b1-c2a1eea94b0e', N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'OrderConfirmation', N'Mail sent when the customer save this basket as order', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', @storeId, N'NewPassword', N'Mail sent when the user reset his password', 20)
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 9, N'European online store', N'')
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', 12, N'Boutique en ligne Europe', N'')
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeId, 9, N'US online store', N'')
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (@storeId, N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (@storeId, N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[StoreOrderChannel] ([Store_StoreId], [OrderChannel_OrderChannelId]) VALUES (N'e6290caa-7cf8-af08-fc96-000eb7980e6c', N'b9edc908-e223-1608-8671-000e5208e26c')
INSERT [magelia].[StoreOrderChannel] ([Store_StoreId], [OrderChannel_OrderChannelId]) VALUES (@storeId, N'b9edc908-e223-1608-8671-000e5208e26c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'0bff109e-fa67-d406-8676-000f2a5057aa', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'9595e815-32c2-0908-8931-000f2a526a41', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'75364dc9-ca74-7c08-7d7f-000f2a531333', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'958a6b8e-9424-0809-a3d7-000f2a5425df', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'e6290caa-7cf8-af08-fc96-000eb7980e6c')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', @storeId)
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'0bff109e-fa67-d406-8676-000f2a5057aa', @storeId)
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'9595e815-32c2-0908-8931-000f2a526a41', @storeId)
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'75364dc9-ca74-7c08-7d7f-000f2a531333', @storeId)
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'958a6b8e-9424-0809-a3d7-000f2a5425df', @storeId)
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', @storeId)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'42bd5928-007d-4b58-922a-10b9d92b1a5e', 9, N'
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Contact
</title>
<style type="text/css">
* {
margin: 0;
padding: 0;
}

body {
color: black;
font-size: 11px;
font-family: Arial,sans-serif;
}

table {
width: 50%;
border-collapse: collapse;
}

table td {
padding: 5px;
border: 1px solid #666666;
}
</style>
</head>
<body>
<table>
<tbody>
<tr>
<td><strong>Gender</strong></td>
<td>$data.Gender</td>
</tr>
<tr>
<td><strong>Last name</strong></td>
<td>$data.Lastname</td>
</tr>
<tr>
<td><strong>First name</strong></td>
<td>$data.FirstName</td>
</tr>
<tr>
<td><strong>Email</strong></td>
<td><a href="mailto:$data.Email">$data.Email</a></td>
</tr>
<tr>
<td><strong>Phone number</strong></td>
<td>$data.Phone</td>
</tr>
<tr>
<td colspan="2" style="text-align:center;"><strong>Message</strong></td>
</tr>
<tr>
<td colspan="2">$data.Message</td>
</tr>
</tbody>
</table>
</body>
</html>
', NULL, N'$data.Store - Contact', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'42bd5928-007d-4b58-922a-10b9d92b1a5e', 12, N'
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Contact
</title>
<style type="text/css">
* {
margin: 0;
padding: 0;
}

body {
color: black;
font-size: 11px;
font-family: Arial,sans-serif;
}

table {
width: 50%;
border-collapse: collapse;
}

table td {
padding: 5px;
border: 1px solid #666666;
}
</style>
</head>
<body>
<table>
<tbody>
<tr>
<td><strong>Gender</strong></td>
<td>$data.Gender</td>
</tr>
<tr>
<td><strong>Last name</strong></td>
<td>$data.Lastname</td>
</tr>
<tr>
<td><strong>First name</strong></td>
<td>$data.FirstName</td>
</tr>
<tr>
<td><strong>Email</strong></td>
<td><a href="mailto:$data.Email">$data.Email</a></td>
</tr>
<tr>
<td><strong>Phone number</strong></td>
<td>$data.Phone</td>
</tr>
<tr>
<td colspan="2" style="text-align:center;"><strong>Message</strong></td>
</tr>
<tr>
<td colspan="2">$data.Message</td>
</tr>
</tbody>
</table>
</body>
</html>', NULL, N'$data.Store - Contact', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'0fa32105-c6dd-4f5d-bb55-1593f013052d', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your password has been successfully reset</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">This e-mail confirms that the password for your $data.Store account has successfully been changed.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">If you have not authorized or initiated this request, please contact our customer service for assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Thank you for choosing $data.Store.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your password has been successfully reset', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'0fa32105-c6dd-4f5d-bb55-1593f013052d', 12, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Modification de votre mot de passe</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Cher $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Cet e-mail vous confirme simplement que vous avez bien créé un nouveau mot de passe pour vous connecter à notre boutique en ligne $data.Store.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Dans l''hypothèse où vous n''auriez pas demandé le changement de mot de passe, nous vous invitons à contacter notre service client.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Cordialement,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Modification de votre mot de passe', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'eb351ce6-5a1e-43eb-9bcf-2a5ec41cbcf9', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome to $data.Store</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Thank you for creating an account with $data.Store. You may now log-in using the email and password that you entered during registration.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">You can review your orders or update your personal details at any time in the "My Account" section.</font>
<br />
<font face="arial,helvetica" size="-1">We hope you have enjoyed visiting our site.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'Welcome to $data.Store', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'eb351ce6-5a1e-43eb-9bcf-2a5ec41cbcf9', 12, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Confirmation de la création de votre compte</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Bonjour $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Vous venez de créer un compte sur notre boutique en ligne $data.Store et nous vous en remercions.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Vous pouvez à tout moment accéder à votre historique de commandes ou modifier vos informations dans votre espace personnel en vous connectant dans la rubrique "Mon Compte".</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Bien cordialement,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Confirmation de la création de votre compte', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome to $data.Store</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Thank you for creating an account with $data.Store. You may now log-in using the email and password that you entered during registration.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">You can review your orders or update your personal details at any time in the "My Account" section.</font>
<br />
<font face="arial,helvetica" size="-1">We hope you have enjoyed visiting our site.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'Welcome to $data.Store', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'bb7a81e5-7f1c-437e-8db6-36ecef18a419', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your order #$data.OrderNumber cannot be approved</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">We regret to inform you that your order (#$data.OrderNumber) has been refused, and therefore your items will not be processed for shipping.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">If you wish to obtain additional information or if you believe that we have made an error on our side, please contact our Customer Service for further assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please accept our apologies for any inconvenience.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your order #$data.OrderNumber cannot be approved', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'bb7a81e5-7f1c-437e-8db6-36ecef18a419', 12, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Problème relatif à votre commande #$data.OrderNumber</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Cher $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Vous avez passé une commande (N°$data.OrderNumber) sur notre site en ligne et nous sommes au regret de vous dire que votre commande n''a pas pu être validée et ne sera par conséquent pas expédiée.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Si vous souhaitez obtenir des informations supplémentaires ou si vous pensez qu''il s''agit d''une erreur de notre part, nous vous invitons à contacter notre service Client.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Veuillez noter que cet e-mail n''accepte pas les réponses. Pour toute question concernant votre commande, nous vous invitons à utiliser le formulaire de contact disponible sur notre site internet.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Bien cordialement,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Problème relatif à votre commande #$data.OrderNumber', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', 9, N'
$helper.SetCurrency($data.CurrencyId)
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Thank your for your order</title>
<style type="text/css">
/* /\/\/\/\/\/\/\/\/ CLIENT-SPECIFIC STYLES /\/\/\/\/\/\/\/\/ */
#outlook a{padding:0;} /* Force Outlook to provide a "view in browser" message */
.ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */
.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;} /* Force Hotmail to display normal line spacing */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:100%; -ms-text-size-adjust:100%;} /* Prevent WebKit and Windows mobile changing default text sizes */
table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;} /* Remove spacing between tables in Outlook 2007 and up */
img{-ms-interpolation-mode:bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */

/* /\/\/\/\/\/\/\/\/ RESET STYLES /\/\/\/\/\/\/\/\/ */
body{margin:0; padding:0;}
img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}
table{border-collapse:collapse !important;}
body, #bodyTable, #bodyCell{height:100% !important; margin:0; padding:0; width:100% !important;}

/* /\/\/\/\/\/\/\/\/ TEMPLATE STYLES /\/\/\/\/\/\/\/\/ */

/* ========== Page Styles ========== */

#bodyCell{padding:20px;}
#templateContainer{width:600px;}

/**
* @tab Page
* @section heading 1
* @tip Set the styling for all first-level headings in your emails. These should be the largest of your headings.
* @style heading 1
*/
h1{
/*@editable*/ color:#202020 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:26px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 2
* @tip Set the styling for all second-level headings in your emails.
* @style heading 2
*/
h2{
/*@editable*/ color:#404040 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 3
* @tip Set the styling for all third-level headings in your emails.
* @style heading 3
*/
h3{
/*@editable*/ color:#606060 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 4
* @tip Set the styling for all fourth-level headings in your emails. These should be the smallest of your headings.
* @style heading 4
*/
h4{
/*@editable*/ color:#808080 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/* ========== Header Styles ========== */

/**
* @tab Header
* @section preheader text
* @tip Set the styling for your email''s preheader text. Choose a size and color that is easy to read.
*/
.preheaderContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:125%;
/*@editable*/ text-align:left;
}

/**
* @tab Header
* @section preheader link
* @tip Set the styling for your email''s preheader links. Choose a color that helps them stand out from your text.
*/
.preheaderContent a:link, .preheaderContent a:visited, /* Yahoo! Mail Override */ .preheaderContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Header
* @section header text
* @tip Set the styling for your email''s header text. Choose a size and color that is easy to read.
*/
.headerContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ padding-top:0;
/*@editable*/ padding-right:0;
/*@editable*/ padding-bottom:0;
/*@editable*/ padding-left:0;
/*@editable*/ text-align:left;
/*@editable*/ vertical-align:middle;
}

/**
* @tab Header
* @section header link
* @tip Set the styling for your email''s header links. Choose a color that helps them stand out from your text.
*/
.headerContent a:link, .headerContent a:visited, /* Yahoo! Mail Override */ .headerContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

#headerImage{
height:auto;
max-width:600px;
}

/* ========== Body Styles ========== */

/**
* @tab Body
* @section body text
* @tip Set the styling for your email''s main content text. Choose a size and color that is easy to read.
* @theme main
*/
.bodyContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Body
* @section body link
* @tip Set the styling for your email''s main content links. Choose a color that helps them stand out from your text.
*/
.bodyContent a:link, .bodyContent a:visited, /* Yahoo! Mail Override */ .bodyContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.bodyContent img{
display:inline;
height:auto;
max-width:560px;
}

/* ========== Column Styles ========== */

.templateColumnContainer{width:260px;}

/**
* @tab Columns
* @section left column text
* @tip Set the styling for your email''s left column content text. Choose a size and color that is easy to read.
*/
.leftColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section left column link
* @tip Set the styling for your email''s left column content links. Choose a color that helps them stand out from your text.
*/
.leftColumnContent a:link, .leftColumnContent a:visited, /* Yahoo! Mail Override */ .leftColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Columns
* @section right column text
* @tip Set the styling for your email''s right column content text. Choose a size and color that is easy to read.
*/
.rightColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section right column link
* @tip Set the styling for your email''s right column content links. Choose a color that helps them stand out from your text.
*/
.rightColumnContent a:link, .rightColumnContent a:visited, /* Yahoo! Mail Override */ .rightColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.leftColumnContent img, .rightColumnContent img{
display:inline;
height:auto;
max-width:260px;
}

/* ========== Footer Styles ========== */

/**
* @tab Footer
* @section footer text
* @tip Set the styling for your email''s footer text. Choose a size and color that is easy to read.
* @theme footer
*/
.footerContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Footer
* @section footer link
* @tip Set the styling for your email''s footer links. Choose a color that helps them stand out from your text.
*/
.footerContent a:link, .footerContent a:visited, /* Yahoo! Mail Override */ .footerContent a .yshortcuts, .footerContent a span /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/* /\/\/\/\/\/\/\/\/ MOBILE STYLES /\/\/\/\/\/\/\/\/ */

@media only screen and (max-width: 480px){
/* /\/\/\/\/\/\/ CLIENT-SPECIFIC MOBILE STYLES /\/\/\/\/\/\/ */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:none !important;} /* Prevent Webkit platforms from changing default text sizes */
body{width:100% !important; min-width:100% !important;} /* Prevent iOS Mail from adding padding to the body */

/* /\/\/\/\/\/\/ MOBILE RESET STYLES /\/\/\/\/\/\/ */
#bodyCell{padding:10px !important;}

/* /\/\/\/\/\/\/ MOBILE TEMPLATE STYLES /\/\/\/\/\/\/ */

/* ======== Page Styles ======== */

/**
* @tab Mobile Styles
* @section template width
* @tip Make the template fluid for portrait or landscape view adaptability. If a fluid layout doesn''t work for you, set the width to 500px instead.
*/
#templateContainer{
max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 1
* @tip Make the first-level headings larger in size for better readability on small screens.
*/
h1{
/*@editable*/ font-size:24px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 2
* @tip Make the second-level headings larger in size for better readability on small screens.
*/
h2{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 3
* @tip Make the third-level headings larger in size for better readability on small screens.
*/
h3{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 4
* @tip Make the fourth-level headings larger in size for better readability on small screens.
*/
h4{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:100% !important;
}

/* ======== Header Styles ======== */

#templatePreheader{display:none !important;} /* Hide the template preheader to save space */

/**
* @tab Mobile Styles
* @section header image
* @tip Make the main header image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
#headerImage{
height:auto !important;
/*@editable*/ max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section header text
* @tip Make the header content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.headerContent{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Body Styles ======== */

/**
* @tab Mobile Styles
* @section body text
* @tip Make the body content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.bodyContent{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Column Styles ======== */

.templateColumnContainer{display:block !important; width:100% !important;}

/**
* @tab Mobile Styles
* @section column image
* @tip Make the column image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
.columnImage{
height:auto !important;
/*@editable*/ max-width:480px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section left column text
* @tip Make the left column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.leftColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/**
* @tab Mobile Styles
* @section right column text
* @tip Make the right column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.rightColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Footer Styles ======== */

/**
* @tab Mobile Styles
* @section footer text
* @tip Make the body content text larger in size for better readability on small screens.
*/
.footerContent{
/*@editable*/ font-size:14px !important;
/*@editable*/ line-height:115% !important;
}

.footerContent a{display:block !important;} /* Place footer social and utility links on their own lines, for easier access */
}
</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
<tr>
<td align="center" valign="top" id="bodyCell">
<table border="0" cellpadding="0" cellspacing="0" id="templateContainer" style="width:600px">
<tr>
<td align="center" valign="top" style="padding-bottom:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateBody">
<tr>
<td valign="top" align="left" class="bodyContent">
<h2> <font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2> <font face="arial,helvetica" size="-1">Thank you for placing your order #$data.Order.OrderNumber via the $data.Store online store.</font>
<br/>
<br/>
<font face="arial,helvetica" size="-1">
You can now follow your order''s status online from the "My Account" section of our website. Upon validation, the order will be shipped rapidly.
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF"> <b>Order summary&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="center" valign="top">
#set ($orderSubsetCount = 1)
<table width="100%">
#foreach($os in $data.Order.OrderSubsets)
<tr>
<td bgcolor="#CCCCCC">
<font face="arial,helvetica" size="-1"> <b>Order subset #$orderSubsetCount</b>
</font>
</td>
</tr>
<tr>
<td>
<table width="100%">
#foreach($li in $os.LineItems)
#set ($productPath = false)
#foreach($path in $data.productPaths)
#if($li.ProductId == $path.Key)
#set ($productPath = $path.Value)
#end
#end
#if(!$productPath)
#set ($productPath = "#")
#end
<tr>
#set ($image = false)
#foreach($pd in $li.ProductDetails)
#if($pd.Code == "Image" && $pd.Files.Length > 0)
#set ($image = $pd.Files.get(0))
#end
#end
<td style="width:150px;" align="center">
#if($image)
<a href="$productPath">
#set ($alternateText = false)
#if($image.AlternateText)
#set ($alternateText = $image.AlternateText)
#else
#set ($alternateText = $li.ProductName)
#end
<img src="$image.Path" alt="$alternateText" border="0" width="150"/>
</a>
#end
</td>
<td valign="top">
<font face="arial,helvetica" size="-1">
<a href="$productPath">$li.ProductName</a>
</font>
<br/>
<font face="arial,helvetica" size="-1">Unit price&nbsp;:</font>
#if($data.DisplayTax)
<font face="arial,helvetica" size="-1">$helper.Money($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount)</font>
#else
<font face="arial,helvetica" size="-1">$helper.Money($li.UnitPriceIncludingUnitDiscount)</font>
#end
#foreach($dd in $li.DiscountDetails)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
#end
<br/>
<font face="arial,helvetica" size="-1">
Quantity&nbsp;:
<b>$li.Quantity</b>
</font>
#set ($saving = false)
#if($data.DisplayTax)
#if($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount < $li.UnitPriceIncludingTaxes)
#set ($saving = $li.TotalIncludingTaxes - $li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)
#end
#else
#if ($li.UnitPriceIncludingUnitDiscount < $li.UnitPrice)
#set($saving = $li.LineItemDiscount)
#end
#end
#if($saving)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">Saving&nbsp;: $helper.Money($saving) </font>
#end
</td>
<td align="right" valign="top">
#if($li.IsGift)
<font face="arial,helvetica" size="-1">
<b>Free</b>
</font>
#else
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
<b>$helper.Money($li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)</b>
#else
<b>$helper.Money($li.TotalIncludingDiscount)</b>
#end
</font>
#end
</td>
</tr>
#end
</table>
</td>
</tr>
<tr>
<td align="right">
<table width="100%">
#if($data.Order.OrderSubsets.Length == 1 && !$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping mode&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
#else
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if(!$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping mode&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping rate&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.ShippingRateValueIncludingDiscountAndTaxes)
#else
$helper.Money($os.ShippingRateValueIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax && $data.ShippingTaxesConsideringShippingDiscount > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$helper.Money($os.ShippingTaxesConsideringShippingDiscount)</font>
</td>
</tr>
#end
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Order subset total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.OrderSubsetTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.OrderSubsetTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
#set ($orderSubsetCount = $orderSubsetCount +1)
#end
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF">
<b>Order Total&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="right" valign="top" style="border-bottom:1px solid #CCCCCC;padding-bottom:10px;">
<table width="100%">
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Products total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#foreach($dd in $data.Order.DiscountDetails)
#if($dd.Value > 0 || $dd.ValueIncludingTaxes > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#if($data.DisplayTax)
-$helper.Money($dd.ValueIncludingTaxes)
#else
-$helper.Money($dd.Value)
#end
</font>
</td>
</tr>
#end
#end

<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.ShippingTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.ShippingTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
$helper.Money($data.Order.ShippingTaxesConsideringShippingDiscount)
</font>
</td>
</tr>
#end
#if(!$data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Subtotal&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
$helper.Money($data.Order.OrderTotalIncludingDiscount)
</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
#set($taxes = $data.Order.LineItemsTaxesConsideringUnitDiscount + $data.Order.ShippingTaxesConsideringShippingDiscount)
<font face="arial,helvetica" size="-1">
$helper.Money($taxes)
</font>
</td>
</tr>
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
<b>$helper.Money($data.Order.OrderTotalIncludingTotalDiscountAndTaxes)</b>
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="padding-top:10px;padding-bottom:5px;">
<font face="arial,helvetica" size="-1">
The billing and shipping addresses associated with your order are the following :
</font>
</td>
</tr>
<tr>
<td align="left" valign="top" style="padding-bottom:10px;">
#set( $billingAddress = $data.Order.BillingAddress )
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateColumns">
<tr>
#if($data.Order.ShippingAddress)
#set( $shippingAddress = $data.Order.ShippingAddress )
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="rightColumnContent">
<font face="arial,helvetica" size="-1">
<b>Shipping address</b>
</font>
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.FirstName $shippingAddress.LastName</font>
</td>
</tr>
#if ($shippingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address1</font>
</td>
</tr>
#if ($shippingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address2</font>
</td>
</tr>
#end
#if ($shippingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address3</font>
</td>
</tr>
#end
#if ($shippingAddress.DigiCode || $shippingAddress.FloorNumber)
<tr>
<td align="left">
#if ($shippingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$shippingAddress.DigiCode</font>
#end
#if ($shippingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$shippingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.ZipCode $shippingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.RegionName $shippingAddress.CountryName</font>
</td>
</tr>
#if($shippingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Phone&nbsp;:</span>
<span>$shippingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($shippingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile&nbsp;:</span>
<span>$shippingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($shippingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax&nbsp;:</span>
<span>$shippingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
#end
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="leftColumnContent">
#if($data.Order.ShippingAddress)
<font face="arial,helvetica" size="-1">
<b>Billing address</b>
</font>
#else
<font face="arial,helvetica" size="-1">
<b>Billing and shipping address</b>
</font>
#end
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.FirstName $billingAddress.LastName</font>
</td>
</tr>
#if ($billingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address1</font>
</td>
</tr>
#if ($billingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address2</font>
</td>
</tr>
#end
#if ($billingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address3</font>
</td>
</tr>
#end
#if ($billingAddress.DigiCode || $billingAddress.FloorNumber)
<tr>
<td align="left">
#if ($billingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$billingAddress.DigiCode</font>
#end
#if ($billingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$billingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.ZipCode $billingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.RegionName $billingAddress.CountryName</font>
</td>
</tr>
#if($billingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Phone&nbsp;:</span>
<span>$billingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($billingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile:&nbsp;:</span>
<span>$billingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($billingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax:&nbsp;:</span>
<span>$billingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="border-top:1px solid #CCCCCC;padding-top:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateFooter">
<tr>
<td valign="top" class="footerContent">
<font face="arial,helvetica" size="-1">
Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.
</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br/>
<br/>
<br/>
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Thank your for your order', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', 9, N'
<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>Contact
</title>
<style type="text/css">
* {
margin: 0;
padding: 0;
}

body {
color: black;
font-size: 11px;
font-family: Arial,sans-serif;
}

table {
width: 50%;
border-collapse: collapse;
}

table td {
padding: 5px;
border: 1px solid #666666;
}
</style>
</head>
<body>
<table>
<tbody>
<tr>
<td><strong>Gender</strong></td>
<td>$data.Gender</td>
</tr>
<tr>
<td><strong>Last name</strong></td>
<td>$data.Lastname</td>
</tr>
<tr>
<td><strong>First name</strong></td>
<td>$data.FirstName</td>
</tr>
<tr>
<td><strong>Email</strong></td>
<td><a href="mailto:$data.Email">$data.Email</a></td>
</tr>
<tr>
<td><strong>Phone number</strong></td>
<td>$data.Phone</td>
</tr>
<tr>
<td colspan="2" style="text-align:center;"><strong>Message</strong></td>
</tr>
<tr>
<td colspan="2">$data.Message</td>
</tr>
</tbody>
</table>
</body>
</html>
', NULL, N'$data.Store - Contact', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Thank you for your payment</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Your payment for order #$data.OrderNumber has been approved.</font>
<br />
<br />
<font face="arial,helvetica" size="-1"><b>Our teams will now proceed with reviewing and finalizing your order for a rapid shipping.</b></font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Thank you for your payment', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your payment for order #$data.OrderNumber could not be approved</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">We regret to inform you that the payment for your order (#$data.OrderNumber) was not approved by your bank.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">In order to obtain your articles, please try placing your order again from our site, or else contact our Customer Service for further assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Client</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your payment could not be approved for order #$data.OrderNumber', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'e077b42f-1965-435f-8037-9806e64df851', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your payment for order #$data.OrderNumber could not be approved</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">We regret to inform you that the payment for your order (#$data.OrderNumber) was not approved by your bank.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">In order to obtain your articles, please try placing your order again from our site, or else contact our Customer Service for further assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Client</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your payment could not be approved for order #$data.OrderNumber', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'e077b42f-1965-435f-8037-9806e64df851', 12, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Le paiement de votre commande a été refusé</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Cher $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Vous avez passé une commande (N°$data.OrderNumber) sur notre site en ligne et nous sommes au regret de vous dire que la demande de paiement pour cette commande a été refusée par votre banque.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Afin d''obtenir les articles que vous avez commandés nous vous invitons à passer une autre commande sur notre site ou à contacter notre Service Client.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Veuillez noter que cet e-mail n''accepte pas les réponses. Pour toute question concernant votre commande, nous vous invitons à utiliser le formulaire de contact disponible sur notre site internet.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Bien cordialement,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Le paiement de votre commande a été refusé', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'ce741697-38eb-4285-bf75-ba219807523d', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Thank you for your payment</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Your payment for order #$data.OrderNumber has been approved.</font>
<br />
<br />
<font face="arial,helvetica" size="-1"><b>Our teams will now proceed with reviewing and finalizing your order for a rapid shipping.</b></font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Thank you for your payment', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'ce741697-38eb-4285-bf75-ba219807523d', 12, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Merci pour le paiement de votre commande</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Cher $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">Nous vous confirmons que le paiement de la commande #$data.OrderNumber a été validé par votre banque.</font>
<br />
<br />
<font face="arial,helvetica" size="-1"><b>Votre commande va maintenant pouvoir être validée par nos équipes et expédiée rapidement.</b></font>
<br />
<br />
<font face="arial,helvetica" size="-1">Veuillez noter que cet e-mail n''accepte pas les réponses. Pour toute question concernant votre commande, nous vous invitons à utiliser le formulaire de contact disponible sur notre site internet.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Bien cordialement,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Merci pour le paiement de votre commande', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your order #$data.OrderNumber cannot be approved</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">We regret to inform you that your order (#$data.OrderNumber) has been refused, and therefore your items will not be processed for shipping.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">If you wish to obtain additional information or if you believe that we have made an error on our side, please contact our Customer Service for further assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please accept our apologies for any inconvenience.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your order #$data.OrderNumber cannot be approved', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'45ca1df3-9328-4b1f-94b1-c2a1eea94b0e', 9, N'
$helper.SetCurrency($data.CurrencyId)
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Thank your for your order</title>
<style type="text/css">
/* /\/\/\/\/\/\/\/\/ CLIENT-SPECIFIC STYLES /\/\/\/\/\/\/\/\/ */
#outlook a{padding:0;} /* Force Outlook to provide a "view in browser" message */
.ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */
.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;} /* Force Hotmail to display normal line spacing */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:100%; -ms-text-size-adjust:100%;} /* Prevent WebKit and Windows mobile changing default text sizes */
table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;} /* Remove spacing between tables in Outlook 2007 and up */
img{-ms-interpolation-mode:bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */

/* /\/\/\/\/\/\/\/\/ RESET STYLES /\/\/\/\/\/\/\/\/ */
body{margin:0; padding:0;}
img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}
table{border-collapse:collapse !important;}
body, #bodyTable, #bodyCell{height:100% !important; margin:0; padding:0; width:100% !important;}

/* /\/\/\/\/\/\/\/\/ TEMPLATE STYLES /\/\/\/\/\/\/\/\/ */

/* ========== Page Styles ========== */

#bodyCell{padding:20px;}
#templateContainer{width:600px;}

/**
* @tab Page
* @section heading 1
* @tip Set the styling for all first-level headings in your emails. These should be the largest of your headings.
* @style heading 1
*/
h1{
/*@editable*/ color:#202020 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:26px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 2
* @tip Set the styling for all second-level headings in your emails.
* @style heading 2
*/
h2{
/*@editable*/ color:#404040 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 3
* @tip Set the styling for all third-level headings in your emails.
* @style heading 3
*/
h3{
/*@editable*/ color:#606060 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 4
* @tip Set the styling for all fourth-level headings in your emails. These should be the smallest of your headings.
* @style heading 4
*/
h4{
/*@editable*/ color:#808080 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/* ========== Header Styles ========== */

/**
* @tab Header
* @section preheader text
* @tip Set the styling for your email''s preheader text. Choose a size and color that is easy to read.
*/
.preheaderContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:125%;
/*@editable*/ text-align:left;
}

/**
* @tab Header
* @section preheader link
* @tip Set the styling for your email''s preheader links. Choose a color that helps them stand out from your text.
*/
.preheaderContent a:link, .preheaderContent a:visited, /* Yahoo! Mail Override */ .preheaderContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Header
* @section header text
* @tip Set the styling for your email''s header text. Choose a size and color that is easy to read.
*/
.headerContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ padding-top:0;
/*@editable*/ padding-right:0;
/*@editable*/ padding-bottom:0;
/*@editable*/ padding-left:0;
/*@editable*/ text-align:left;
/*@editable*/ vertical-align:middle;
}

/**
* @tab Header
* @section header link
* @tip Set the styling for your email''s header links. Choose a color that helps them stand out from your text.
*/
.headerContent a:link, .headerContent a:visited, /* Yahoo! Mail Override */ .headerContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

#headerImage{
height:auto;
max-width:600px;
}

/* ========== Body Styles ========== */

/**
* @tab Body
* @section body text
* @tip Set the styling for your email''s main content text. Choose a size and color that is easy to read.
* @theme main
*/
.bodyContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Body
* @section body link
* @tip Set the styling for your email''s main content links. Choose a color that helps them stand out from your text.
*/
.bodyContent a:link, .bodyContent a:visited, /* Yahoo! Mail Override */ .bodyContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.bodyContent img{
display:inline;
height:auto;
max-width:560px;
}

/* ========== Column Styles ========== */

.templateColumnContainer{width:260px;}

/**
* @tab Columns
* @section left column text
* @tip Set the styling for your email''s left column content text. Choose a size and color that is easy to read.
*/
.leftColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section left column link
* @tip Set the styling for your email''s left column content links. Choose a color that helps them stand out from your text.
*/
.leftColumnContent a:link, .leftColumnContent a:visited, /* Yahoo! Mail Override */ .leftColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Columns
* @section right column text
* @tip Set the styling for your email''s right column content text. Choose a size and color that is easy to read.
*/
.rightColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section right column link
* @tip Set the styling for your email''s right column content links. Choose a color that helps them stand out from your text.
*/
.rightColumnContent a:link, .rightColumnContent a:visited, /* Yahoo! Mail Override */ .rightColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.leftColumnContent img, .rightColumnContent img{
display:inline;
height:auto;
max-width:260px;
}

/* ========== Footer Styles ========== */

/**
* @tab Footer
* @section footer text
* @tip Set the styling for your email''s footer text. Choose a size and color that is easy to read.
* @theme footer
*/
.footerContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Footer
* @section footer link
* @tip Set the styling for your email''s footer links. Choose a color that helps them stand out from your text.
*/
.footerContent a:link, .footerContent a:visited, /* Yahoo! Mail Override */ .footerContent a .yshortcuts, .footerContent a span /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/* /\/\/\/\/\/\/\/\/ MOBILE STYLES /\/\/\/\/\/\/\/\/ */

@media only screen and (max-width: 480px){
/* /\/\/\/\/\/\/ CLIENT-SPECIFIC MOBILE STYLES /\/\/\/\/\/\/ */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:none !important;} /* Prevent Webkit platforms from changing default text sizes */
body{width:100% !important; min-width:100% !important;} /* Prevent iOS Mail from adding padding to the body */

/* /\/\/\/\/\/\/ MOBILE RESET STYLES /\/\/\/\/\/\/ */
#bodyCell{padding:10px !important;}

/* /\/\/\/\/\/\/ MOBILE TEMPLATE STYLES /\/\/\/\/\/\/ */

/* ======== Page Styles ======== */

/**
* @tab Mobile Styles
* @section template width
* @tip Make the template fluid for portrait or landscape view adaptability. If a fluid layout doesn''t work for you, set the width to 500px instead.
*/
#templateContainer{
max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 1
* @tip Make the first-level headings larger in size for better readability on small screens.
*/
h1{
/*@editable*/ font-size:24px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 2
* @tip Make the second-level headings larger in size for better readability on small screens.
*/
h2{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 3
* @tip Make the third-level headings larger in size for better readability on small screens.
*/
h3{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 4
* @tip Make the fourth-level headings larger in size for better readability on small screens.
*/
h4{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:100% !important;
}

/* ======== Header Styles ======== */

#templatePreheader{display:none !important;} /* Hide the template preheader to save space */

/**
* @tab Mobile Styles
* @section header image
* @tip Make the main header image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
#headerImage{
height:auto !important;
/*@editable*/ max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section header text
* @tip Make the header content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.headerContent{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Body Styles ======== */

/**
* @tab Mobile Styles
* @section body text
* @tip Make the body content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.bodyContent{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Column Styles ======== */

.templateColumnContainer{display:block !important; width:100% !important;}

/**
* @tab Mobile Styles
* @section column image
* @tip Make the column image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
.columnImage{
height:auto !important;
/*@editable*/ max-width:480px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section left column text
* @tip Make the left column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.leftColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/**
* @tab Mobile Styles
* @section right column text
* @tip Make the right column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.rightColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Footer Styles ======== */

/**
* @tab Mobile Styles
* @section footer text
* @tip Make the body content text larger in size for better readability on small screens.
*/
.footerContent{
/*@editable*/ font-size:14px !important;
/*@editable*/ line-height:115% !important;
}

.footerContent a{display:block !important;} /* Place footer social and utility links on their own lines, for easier access */
}
</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
<tr>
<td align="center" valign="top" id="bodyCell">
<table border="0" cellpadding="0" cellspacing="0" id="templateContainer" style="width:600px">
<tr>
<td align="center" valign="top" style="padding-bottom:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateBody">
<tr>
<td valign="top" align="left" class="bodyContent">
<h2> <font face="arial,helvetica" size="-1">Dear $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2> <font face="arial,helvetica" size="-1">Thank you for placing your order #$data.Order.OrderNumber via the $data.Store online store.</font>
<br/>
<br/>
<font face="arial,helvetica" size="-1">
You can now follow your order''s status online from the "My Account" section of our website. Upon validation, the order will be shipped rapidly.
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF"> <b>Order summary&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="center" valign="top">
#set ($orderSubsetCount = 1)
<table width="100%">
#foreach($os in $data.Order.OrderSubsets)
<tr>
<td bgcolor="#CCCCCC">
<font face="arial,helvetica" size="-1"> <b>Order subset #$orderSubsetCount</b>
</font>
</td>
</tr>
<tr>
<td>
<table width="100%">
#foreach($li in $os.LineItems)
#set ($productPath = false)
#foreach($path in $data.productPaths)
#if($li.ProductId == $path.Key)
#set ($productPath = $path.Value)
#end
#end
#if(!$productPath)
#set ($productPath = "#")
#end
<tr>
#set ($image = false)
#foreach($pd in $li.ProductDetails)
#if($pd.Code == "Image" && $pd.Files.Length > 0)
#set ($image = $pd.Files.get(0))
#end
#end
<td style="width:150px;" align="center">
#if($image)
<a href="$productPath">
#set ($alternateText = false)
#if($image.AlternateText)
#set ($alternateText = $image.AlternateText)
#else
#set ($alternateText = $li.ProductName)
#end
<img src="$image.Path" alt="$alternateText" border="0" width="150"/>
</a>
#end
</td>
<td valign="top">
<font face="arial,helvetica" size="-1">
<a href="$productPath">$li.ProductName</a>
</font>
<br/>
<font face="arial,helvetica" size="-1">Unit price&nbsp;:</font>
#if($data.DisplayTax)
<font face="arial,helvetica" size="-1">$helper.Money($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount)</font>
#else
<font face="arial,helvetica" size="-1">$helper.Money($li.UnitPriceIncludingUnitDiscount)</font>
#end
#foreach($dd in $li.DiscountDetails)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
#end
<br/>
<font face="arial,helvetica" size="-1">
Quantity&nbsp;:
<b>$li.Quantity</b>
</font>
#set ($saving = false)
#if($data.DisplayTax)
#if($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount < $li.UnitPriceIncludingTaxes)
#set ($saving = $li.TotalIncludingTaxes - $li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)
#end
#else
#if ($li.UnitPriceIncludingUnitDiscount < $li.UnitPrice)
#set($saving = $li.LineItemDiscount)
#end
#end
#if($saving)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">Saving&nbsp;: $helper.Money($saving) </font>
#end
</td>
<td align="right" valign="top">
#if($li.IsGift)
<font face="arial,helvetica" size="-1">
<b>Free</b>
</font>
#else
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
<b>$helper.Money($li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)</b>
#else
<b>$helper.Money($li.TotalIncludingDiscount)</b>
#end
</font>
#end
</td>
</tr>
#end
</table>
</td>
</tr>
<tr>
<td align="right">
<table width="100%">
#if($data.Order.OrderSubsets.Length == 1 && !$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping mode&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
#else
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if(!$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping mode&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping rate&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.ShippingRateValueIncludingDiscountAndTaxes)
#else
$helper.Money($os.ShippingRateValueIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax && $data.ShippingTaxesConsideringShippingDiscount > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$helper.Money($os.ShippingTaxesConsideringShippingDiscount)</font>
</td>
</tr>
#end
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Order subset total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.OrderSubsetTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.OrderSubsetTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
#set ($orderSubsetCount = $orderSubsetCount +1)
#end
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF">
<b>Order Total&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="right" valign="top" style="border-bottom:1px solid #CCCCCC;padding-bottom:10px;">
<table width="100%">
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Products total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#foreach($dd in $data.Order.DiscountDetails)
#if($dd.Value > 0 || $dd.ValueIncludingTaxes > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#if($data.DisplayTax)
-$helper.Money($dd.ValueIncludingTaxes)
#else
-$helper.Money($dd.Value)
#end
</font>
</td>
</tr>
#end
#end

<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.ShippingTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.ShippingTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Shipping taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
$helper.Money($data.Order.ShippingTaxesConsideringShippingDiscount)
</font>
</td>
</tr>
#end
#if(!$data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Subtotal&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
$helper.Money($data.Order.OrderTotalIncludingDiscount)
</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
#set($taxes = $data.Order.LineItemsTaxesConsideringUnitDiscount + $data.Order.ShippingTaxesConsideringShippingDiscount)
<font face="arial,helvetica" size="-1">
$helper.Money($taxes)
</font>
</td>
</tr>
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
<b>$helper.Money($data.Order.OrderTotalIncludingTotalDiscountAndTaxes)</b>
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="padding-top:10px;padding-bottom:5px;">
<font face="arial,helvetica" size="-1">
The billing and shipping addresses associated with your order are the following :
</font>
</td>
</tr>
<tr>
<td align="left" valign="top" style="padding-bottom:10px;">
#set( $billingAddress = $data.Order.BillingAddress )
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateColumns">
<tr>
#if($data.Order.ShippingAddress)
#set( $shippingAddress = $data.Order.ShippingAddress )
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="rightColumnContent">
<font face="arial,helvetica" size="-1">
<b>Shipping address</b>
</font>
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.FirstName $shippingAddress.LastName</font>
</td>
</tr>
#if ($shippingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address1</font>
</td>
</tr>
#if ($shippingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address2</font>
</td>
</tr>
#end
#if ($shippingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address3</font>
</td>
</tr>
#end
#if ($shippingAddress.DigiCode || $shippingAddress.FloorNumber)
<tr>
<td align="left">
#if ($shippingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$shippingAddress.DigiCode</font>
#end
#if ($shippingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$shippingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.ZipCode $shippingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.RegionName $shippingAddress.CountryName</font>
</td>
</tr>
#if($shippingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Phone&nbsp;:</span>
<span>$shippingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($shippingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile&nbsp;:</span>
<span>$shippingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($shippingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax&nbsp;:</span>
<span>$shippingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
#end
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="leftColumnContent">
#if($data.Order.ShippingAddress)
<font face="arial,helvetica" size="-1">
<b>Billing address</b>
</font>
#else
<font face="arial,helvetica" size="-1">
<b>Billing and shipping address</b>
</font>
#end
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.FirstName $billingAddress.LastName</font>
</td>
</tr>
#if ($billingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address1</font>
</td>
</tr>
#if ($billingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address2</font>
</td>
</tr>
#end
#if ($billingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address3</font>
</td>
</tr>
#end
#if ($billingAddress.DigiCode || $billingAddress.FloorNumber)
<tr>
<td align="left">
#if ($billingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$billingAddress.DigiCode</font>
#end
#if ($billingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$billingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.ZipCode $billingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.RegionName $billingAddress.CountryName</font>
</td>
</tr>
#if($billingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Phone&nbsp;:</span>
<span>$billingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($billingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile:&nbsp;:</span>
<span>$billingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($billingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax:&nbsp;:</span>
<span>$billingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="border-top:1px solid #CCCCCC;padding-top:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateFooter">
<tr>
<td valign="top" class="footerContent">
<font face="arial,helvetica" size="-1">
Please note that this e-mail has been automatically generated. Do not reply to this message. For any questions regarding your order, please use the contact form available on our website.
</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Kind regards,</font>
<br/>
<br/>
<br/>
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Thank your for your order', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'45ca1df3-9328-4b1f-94b1-c2a1eea94b0e', 12, N'
$helper.SetCurrency($data.CurrencyId)
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Thank your for your order</title>
<style type="text/css">
/* /\/\/\/\/\/\/\/\/ CLIENT-SPECIFIC STYLES /\/\/\/\/\/\/\/\/ */
#outlook a{padding:0;} /* Force Outlook to provide a "view in browser" message */
.ReadMsgBody{width:100%;} .ExternalClass{width:100%;} /* Force Hotmail to display emails at full width */
.ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height: 100%;} /* Force Hotmail to display normal line spacing */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:100%; -ms-text-size-adjust:100%;} /* Prevent WebKit and Windows mobile changing default text sizes */
table, td{mso-table-lspace:0pt; mso-table-rspace:0pt;} /* Remove spacing between tables in Outlook 2007 and up */
img{-ms-interpolation-mode:bicubic;} /* Allow smoother rendering of resized image in Internet Explorer */

/* /\/\/\/\/\/\/\/\/ RESET STYLES /\/\/\/\/\/\/\/\/ */
body{margin:0; padding:0;}
img{border:0; height:auto; line-height:100%; outline:none; text-decoration:none;}
table{border-collapse:collapse !important;}
body, #bodyTable, #bodyCell{height:100% !important; margin:0; padding:0; width:100% !important;}

/* /\/\/\/\/\/\/\/\/ TEMPLATE STYLES /\/\/\/\/\/\/\/\/ */

/* ========== Page Styles ========== */

#bodyCell{padding:20px;}
#templateContainer{width:600px;}

/**
* @tab Page
* @section heading 1
* @tip Set the styling for all first-level headings in your emails. These should be the largest of your headings.
* @style heading 1
*/
h1{
/*@editable*/ color:#202020 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:26px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 2
* @tip Set the styling for all second-level headings in your emails.
* @style heading 2
*/
h2{
/*@editable*/ color:#404040 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-style:normal;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 3
* @tip Set the styling for all third-level headings in your emails.
* @style heading 3
*/
h3{
/*@editable*/ color:#606060 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/**
* @tab Page
* @section heading 4
* @tip Set the styling for all fourth-level headings in your emails. These should be the smallest of your headings.
* @style heading 4
*/
h4{
/*@editable*/ color:#808080 !important;
display:block;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ font-style:italic;
/*@editable*/ font-weight:normal;
/*@editable*/ line-height:100%;
/*@editable*/ letter-spacing:normal;
margin-top:0;
margin-right:0;
margin-bottom:10px;
margin-left:0;
/*@editable*/ text-align:left;
}

/* ========== Header Styles ========== */

/**
* @tab Header
* @section preheader text
* @tip Set the styling for your email''s preheader text. Choose a size and color that is easy to read.
*/
.preheaderContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:125%;
/*@editable*/ text-align:left;
}

/**
* @tab Header
* @section preheader link
* @tip Set the styling for your email''s preheader links. Choose a color that helps them stand out from your text.
*/
.preheaderContent a:link, .preheaderContent a:visited, /* Yahoo! Mail Override */ .preheaderContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Header
* @section header text
* @tip Set the styling for your email''s header text. Choose a size and color that is easy to read.
*/
.headerContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:20px;
/*@editable*/ font-weight:bold;
/*@editable*/ line-height:100%;
/*@editable*/ padding-top:0;
/*@editable*/ padding-right:0;
/*@editable*/ padding-bottom:0;
/*@editable*/ padding-left:0;
/*@editable*/ text-align:left;
/*@editable*/ vertical-align:middle;
}

/**
* @tab Header
* @section header link
* @tip Set the styling for your email''s header links. Choose a color that helps them stand out from your text.
*/
.headerContent a:link, .headerContent a:visited, /* Yahoo! Mail Override */ .headerContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

#headerImage{
height:auto;
max-width:600px;
}

/* ========== Body Styles ========== */

/**
* @tab Body
* @section body text
* @tip Set the styling for your email''s main content text. Choose a size and color that is easy to read.
* @theme main
*/
.bodyContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:16px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Body
* @section body link
* @tip Set the styling for your email''s main content links. Choose a color that helps them stand out from your text.
*/
.bodyContent a:link, .bodyContent a:visited, /* Yahoo! Mail Override */ .bodyContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.bodyContent img{
display:inline;
height:auto;
max-width:560px;
}

/* ========== Column Styles ========== */

.templateColumnContainer{width:260px;}

/**
* @tab Columns
* @section left column text
* @tip Set the styling for your email''s left column content text. Choose a size and color that is easy to read.
*/
.leftColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section left column link
* @tip Set the styling for your email''s left column content links. Choose a color that helps them stand out from your text.
*/
.leftColumnContent a:link, .leftColumnContent a:visited, /* Yahoo! Mail Override */ .leftColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/**
* @tab Columns
* @section right column text
* @tip Set the styling for your email''s right column content text. Choose a size and color that is easy to read.
*/
.rightColumnContent{
/*@editable*/ color:#505050;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:14px;
/*@editable*/ line-height:150%;
padding-top:0;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Columns
* @section right column link
* @tip Set the styling for your email''s right column content links. Choose a color that helps them stand out from your text.
*/
.rightColumnContent a:link, .rightColumnContent a:visited, /* Yahoo! Mail Override */ .rightColumnContent a .yshortcuts /* Yahoo! Mail Override */{
/*@editable*/ color:#EB4102;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

.leftColumnContent img, .rightColumnContent img{
display:inline;
height:auto;
max-width:260px;
}

/* ========== Footer Styles ========== */

/**
* @tab Footer
* @section footer text
* @tip Set the styling for your email''s footer text. Choose a size and color that is easy to read.
* @theme footer
*/
.footerContent{
/*@editable*/ color:#808080;
/*@editable*/ font-family:Helvetica;
/*@editable*/ font-size:10px;
/*@editable*/ line-height:150%;
padding-top:20px;
padding-right:20px;
padding-bottom:20px;
padding-left:20px;
/*@editable*/ text-align:left;
}

/**
* @tab Footer
* @section footer link
* @tip Set the styling for your email''s footer links. Choose a color that helps them stand out from your text.
*/
.footerContent a:link, .footerContent a:visited, /* Yahoo! Mail Override */ .footerContent a .yshortcuts, .footerContent a span /* Yahoo! Mail Override */{
/*@editable*/ color:#606060;
/*@editable*/ font-weight:normal;
/*@editable*/ text-decoration:underline;
}

/* /\/\/\/\/\/\/\/\/ MOBILE STYLES /\/\/\/\/\/\/\/\/ */

@media only screen and (max-width: 480px){
/* /\/\/\/\/\/\/ CLIENT-SPECIFIC MOBILE STYLES /\/\/\/\/\/\/ */
body, table, td, p, a, li, blockquote{-webkit-text-size-adjust:none !important;} /* Prevent Webkit platforms from changing default text sizes */
body{width:100% !important; min-width:100% !important;} /* Prevent iOS Mail from adding padding to the body */

/* /\/\/\/\/\/\/ MOBILE RESET STYLES /\/\/\/\/\/\/ */
#bodyCell{padding:10px !important;}

/* /\/\/\/\/\/\/ MOBILE TEMPLATE STYLES /\/\/\/\/\/\/ */

/* ======== Page Styles ======== */

/**
* @tab Mobile Styles
* @section template width
* @tip Make the template fluid for portrait or landscape view adaptability. If a fluid layout doesn''t work for you, set the width to 500px instead.
*/
#templateContainer{
max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 1
* @tip Make the first-level headings larger in size for better readability on small screens.
*/
h1{
/*@editable*/ font-size:24px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 2
* @tip Make the second-level headings larger in size for better readability on small screens.
*/
h2{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 3
* @tip Make the third-level headings larger in size for better readability on small screens.
*/
h3{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:100% !important;
}

/**
* @tab Mobile Styles
* @section heading 4
* @tip Make the fourth-level headings larger in size for better readability on small screens.
*/
h4{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:100% !important;
}

/* ======== Header Styles ======== */

#templatePreheader{display:none !important;} /* Hide the template preheader to save space */

/**
* @tab Mobile Styles
* @section header image
* @tip Make the main header image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
#headerImage{
height:auto !important;
/*@editable*/ max-width:600px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section header text
* @tip Make the header content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.headerContent{
/*@editable*/ font-size:20px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Body Styles ======== */

/**
* @tab Mobile Styles
* @section body text
* @tip Make the body content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.bodyContent{
/*@editable*/ font-size:18px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Column Styles ======== */

.templateColumnContainer{display:block !important; width:100% !important;}

/**
* @tab Mobile Styles
* @section column image
* @tip Make the column image fluid for portrait or landscape view adaptability, and set the image''s original width as the max-width. If a fluid setting doesn''t work, set the image width to half its original size instead.
*/
.columnImage{
height:auto !important;
/*@editable*/ max-width:480px !important;
/*@editable*/ width:100% !important;
}

/**
* @tab Mobile Styles
* @section left column text
* @tip Make the left column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.leftColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/**
* @tab Mobile Styles
* @section right column text
* @tip Make the right column content text larger in size for better readability on small screens. We recommend a font size of at least 16px.
*/
.rightColumnContent{
/*@editable*/ font-size:16px !important;
/*@editable*/ line-height:125% !important;
}

/* ======== Footer Styles ======== */

/**
* @tab Mobile Styles
* @section footer text
* @tip Make the body content text larger in size for better readability on small screens.
*/
.footerContent{
/*@editable*/ font-size:14px !important;
/*@editable*/ line-height:115% !important;
}

.footerContent a{display:block !important;} /* Place footer social and utility links on their own lines, for easier access */
}
</style>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" id="bodyTable">
<tr>
<td align="center" valign="top" id="bodyCell">
<table border="0" cellpadding="0" cellspacing="0" id="templateContainer" style="width:600px">
<tr>
<td align="center" valign="top" style="padding-bottom:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateBody">
<tr>
<td valign="top" align="left" class="bodyContent">
<h2> <font face="arial,helvetica" size="-1">Bonjour $data.Customer.Gender $data.Customer.FirstName $data.Customer.LastName,</font>
</h2> <font face="arial,helvetica" size="-1">Nous vous remercions pour la commande N°$data.Order.OrderNumber que vous avez passée sur la boutique $data.Store.</font>
<br/>
<br/>
<font face="arial,helvetica" size="-1">
Vous pouvez suivre l''évolution du statut de votre commande depuis la rubrique "Mon Compte" de notre site internet.Après validation, votre commande sera expédiée rapidement.
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF"> <b>Récapitulatif de commande&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="center" valign="top">
#set ($orderSubsetCount = 1)
<table width="100%">
#foreach($os in $data.Order.OrderSubsets)
<tr>
<td bgcolor="#CCCCCC">
<font face="arial,helvetica" size="-1"> <b>Envoi n°$orderSubsetCount</b>
</font>
</td>
</tr>
<tr>
<td>
<table width="100%">
#set ($productPath = false)
#foreach($li in $os.LineItems)
#foreach($path in $data.productPaths)
#if($li.ProductId == $path.Key)
#set ($productPath = $path.Value)
#end
#end
#if(!$productPath)
#set ($productPath = "#")
#end
<tr>
#set ($image = false)
#foreach($pd in $li.ProductDetails)
#if($pd.Code == "Image" && $pd.Files.Length > 0)
#set ($image = $pd.Files.get(0))
#end
#end
<td style="width:150px;" align="center">
#if($image)
<a href="$productPath">
#set ($alternateText = false)
#if($image.AlternateText)
#set ($alternateText = $image.AlternateText)
#else
#set ($alternateText = $li.ProductName)
#end
<img src="$image.Path" alt="$alternateText" border="0" width="150"/>
</a>
#end
</td>
<td valign="top">
<font face="arial,helvetica" size="-1">
<a href="$productPath">$li.ProductName</a>
</font>
<br/>
<font face="arial,helvetica" size="-1">Prix unitaire&nbsp;:</font>
#if($data.DisplayTax)
<font face="arial,helvetica" size="-1">
$helper.Money($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount)
</font>
#else
<font face="arial,helvetica" size="-1">$helper.Money($li.UnitPriceIncludingUnitDiscount)</font>
#end
#foreach($dd in $li.DiscountDetails)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
#end
<br/>
<font face="arial,helvetica" size="-1">
Quantité&nbsp;:
<b>$li.Quantity</b>
</font>
#set ($saving = false)
#if($data.DisplayTax)
#if($li.UnitPriceIncludingUnitDiscountAndUnitTaxesConsideringUnitDiscount < $li.UnitPriceIncludingTaxes)
#set ($saving = $li.TotalIncludingTaxes - $li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)
#end
#else
#if ($li.UnitPriceIncludingUnitDiscount < $li.UnitPrice)
#set($saving = $li.LineItemDiscount)
#end
#end
#if($saving)
<br/>
<font face="arial,helvetica" size="-1" style="font-style:italic;">&Eacute;conomie&nbsp;: $helper.Money($saving) </font>
#end
</td>
<td align="right" valign="top">
#if($li.IsGift)
<font face="arial,helvetica" size="-1">
<b>Gratuit</b>
</font>
#else
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
<b>$helper.Money($li.TotalIncludingDiscountAndTaxesConsideringUnitDiscount)</b>
#else
<b>$helper.Money($li.TotalIncludingDiscount)</b>
#end
</font>
#end
</td>
</tr>
#end
</table>
</td>
</tr>
<tr>
<td align="right">
<table width="100%">
#if($data.Order.OrderSubsets.Length == 1 && !$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Mode de livraison&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
#else
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if(!$os.IsVirtual)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Mode de livraison&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$os.ShippingRateDescription</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Frais de ports&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.ShippingRateValueIncludingDiscountAndTaxes)
#else
$helper.Money($os.ShippingRateValueIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax && $data.ShippingTaxesConsideringShippingDiscount > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Taxes sur livraison&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$helper.Money($os.ShippingTaxesConsideringShippingDiscount)</font>
</td>
</tr>
#end
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total de l''envoi&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($os.OrderSubsetTotalIncludingDiscountAndTaxes)
#else
$helper.Money($os.OrderSubsetTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
#set ($orderSubsetCount = $orderSubsetCount +1)
#end
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#555555" style="height:20px;line-height:20px;">
<font face="arial,helvetica" size="-1" color="FFFFFF">
<b>Montant de la commande&nbsp;:</b>
</font>
</td>
</tr>
<tr>
<td align="right" valign="top" style="border-bottom:1px solid #CCCCCC;padding-bottom:10px;">
<table width="100%">
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Total des produits&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.LineItemsTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.LineItemsTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#foreach($dd in $data.Order.DiscountDetails)
#if($dd.Value > 0 || $dd.ValueIncludingTaxes > 0)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#set ($discountName = false)
#set ($discountName = $dd.Name)
#if($discountName)
$discountName
#else
$dd.Code
#end
</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1" style="font-style:italic">
#if($data.DisplayTax)
-$helper.Money($dd.ValueIncludingTaxes)
#else
-$helper.Money($dd.Value)
#end
</font>
</td>
</tr>
#end
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Frais de ports&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
#if($data.DisplayTax)
$helper.Money($data.Order.ShippingTotalIncludingDiscountAndTaxes)
#else
$helper.Money($data.Order.ShippingTotalIncludingDiscount)
#end
</font>
</td>
</tr>
#if($data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Taxes sur livraison&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
$helper.Money($data.Order.ShippingTaxesConsideringShippingDiscount)
</font>
</td>
</tr>
#end
#if(!$data.DisplayTax)
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Sous-total&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">$helper.Money($data.Order.OrderTotalIncludingDiscount)</font>
</td>
</tr>
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Taxes&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
#set($taxes = $data.Order.LineItemsTaxesConsideringUnitDiscount + $data.Order.ShippingTaxesConsideringShippingDiscount)
<font face="arial,helvetica" size="-1">$helper.Money($taxes)</font>
</td>
</tr>
#end
<tr>
<td align="right">
<font face="arial,helvetica" size="-1">Montant TTC&nbsp;:</font>
</td>
<td align="right" style="width:50%;">
<font face="arial,helvetica" size="-1">
<b>$helper.Money($data.Order.OrderTotalIncludingTotalDiscountAndTaxes)</b>
</font>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="padding-top:10px;padding-bottom:5px;">
<font face="arial,helvetica" size="-1">
Les adresses de facturation et de livraison associées à votre commande sont les suivantes :
</font>
</td>
</tr>
<tr>
<td align="left" valign="top" style="padding-bottom:10px;">
#set( $billingAddress = $data.Order.BillingAddress )
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateColumns">
<tr>
#if($data.Order.ShippingAddress)
#set( $shippingAddress = $data.Order.ShippingAddress )
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="rightColumnContent">
<font face="arial,helvetica" size="-1">
<b>Adresse de livraison</b>
</font>
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.FirstName $shippingAddress.LastName</font>
</td>
</tr>
#if ($shippingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address1</font>
</td>
</tr>
#if ($shippingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address2</font>
</td>
</tr>
#end
#if ($shippingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.Address3</font>
</td>
</tr>
#end
#if ($shippingAddress.DigiCode || $shippingAddress.FloorNumber)
<tr>
<td align="left">
#if ($shippingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$shippingAddress.DigiCode</font>
#end
#if ($shippingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$shippingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.ZipCode $shippingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$shippingAddress.RegionName $shippingAddress.CountryName</font>
</td>
</tr>
#if($shippingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Téléphone&nbsp;:</span>
<span>$shippingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($shippingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile&nbsp;:</span>
<span>$shippingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($shippingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax&nbsp;:</span>
<span>$shippingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
#end
<td align="left" valign="top" class="templateColumnContainer">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<td valign="top" align="left" class="leftColumnContent">
#if($data.Order.ShippingAddress)
<font face="arial,helvetica" size="-1">
<b>Adresse de facturation</b>
</font>
#else
<font face="arial,helvetica" size="-1">
<b>Adresse de facturation et de livraison</b>
</font>
#end
<table valign="top">
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.FirstName $billingAddress.LastName</font>
</td>
</tr>
#if ($billingAddress.CompanyName)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.CompanyName</font>
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address1</font>
</td>
</tr>
#if ($billingAddress.Address2)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address2</font>
</td>
</tr>
#end
#if ($billingAddress.Address3)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.Address3</font>
</td>
</tr>
#end
#if ($billingAddress.DigiCode || $billingAddress.FloorNumber)
<tr>
<td align="left">
#if ($billingAddress.DigiCode)
<font face="arial,helvetica" size="-1">$billingAddress.DigiCode</font>
#end
#if ($billingAddress.FloorNumber)
<font face="arial,helvetica" size="-1">$billingAddress.FloorNumber</font>
#end
</td>
</tr>
#end
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.ZipCode $billingAddress.CityName</font>
</td>
</tr>
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">$billingAddress.RegionName $billingAddress.CountryName</font>
</td>
</tr>
#if($billingAddress.PhoneNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Téléphone&nbsp;:</span>
<span>$billingAddress.PhoneNumber</span>
</font>
</td>
</tr>
#end
#if($billingAddress.MobileNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Mobile:&nbsp;:</span>
<span>$billingAddress.MobileNumber</span>
</font>
</td>
</tr>
#end
#if ($billingAddress.FaxNumber)
<tr>
<td align="left">
<font face="arial,helvetica" size="-1">
<span>Fax:&nbsp;:</span>
<span>$billingAddress.FaxNumber</span>
</font>
</td>
</tr>
#end
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
<tr>
<td align="center" valign="top" style="border-top:1px solid #CCCCCC;padding-top:10px;">
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="templateFooter">
<tr>
<td valign="top" class="footerContent">
<font face="arial,helvetica" size="-1">
Veuillez noter que cet e-mail n''accepte pas les réponses. Pour toute question concernant votre commande, nous vous invitons à utiliser le formulaire de contact disponible sur notre site internet.
</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Bien cordialement,</font>
<br/>
<br/>
<br/>
<font face="arial,helvetica" size="-1">Le Service Client $data.Store</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Merci pour votre commande', N'noreply@magelia.local', @storeName)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', 9, N'
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$data.Store - Your password has been successfully reset</title>
</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" offset="0">
<center>
<table align="center" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
<tr>
<td align="center" valign="top">
<table border="0" cellpadding="0" cellspacing="0" style="width:600px">
<tr>
<td valign="top">
<h2>
<font face="arial,helvetica" size="-1">Dear $data.Gender $data.FirstName $data.LastName,</font>
</h2>
<font face="arial,helvetica" size="-1">This e-mail confirms that the password for your $data.Store account has successfully been changed.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">If you have not authorized or initiated this request, please contact our customer service for assistance.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">Thank you for choosing $data.Store.</font>
<br />
<br />
<font face="arial,helvetica" size="-1">$data.Store Customer Service</font>
</td>
</tr>
</table>
</td>
</tr>
</table>
</center>
</body>
</html>', NULL, N'$data.Store - Your password has been successfully reset', N'noreply@magelia.local', @storeName)
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'b9edc908-e223-1608-8671-000e5208e26c', 9, N'Online sales', N'Web orders / online sales')
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'b9edc908-e223-1608-8671-000e5208e26c', 12, N'Vente à distance', N'Commandes Web / Vente à distance')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', 9, N'SEO metadata', N'')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', 12, N'Metadonnées référencement', N'')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'0bff109e-fa67-d406-8676-000f2a5057aa', 9, N'Category banner', N'Category banner')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'0bff109e-fa67-d406-8676-000f2a5057aa', 12, N'Bannière de catégorie', N'Bannière de catégorie')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'9595e815-32c2-0908-8931-000f2a526a41', 9, N'Home banner', N'Home banner')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'9595e815-32c2-0908-8931-000f2a526a41', 12, N'Bannière page d''acceuil', N'Bannière page d''acceuil')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'75364dc9-ca74-7c08-7d7f-000f2a531333', 9, N'Password question', N'Password question')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'75364dc9-ca74-7c08-7d7f-000f2a531333', 12, N'Question pour la récupération de mot de passe', N'Question pour la récupération de mot de passe')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'958a6b8e-9424-0809-a3d7-000f2a5425df', 9, N'Reinsurance block', N'Reinsurance block')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'958a6b8e-9424-0809-a3d7-000f2a5425df', 12, N'Block de réassurance', N'Block de réassurance')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', 9, N'Standard content', N'')
INSERT [magelia].[ContentTypeLocalized] ([ContentTypeId], [CultureId], [Name], [Description]) VALUES (N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', 12, N'Contenu standard', N'')
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'451f38ea-0347-2000-d868-000de8ceef83', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Title', N'System.String,mscorlib', 0, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'85e01da3-4f73-2500-1b9d-000de8cef992', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Description', N'System.String,mscorlib', 1, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'0652fe0f-f9d9-fb06-cc3a-000f2a509012', N'0bff109e-fa67-d406-8676-000f2a5057aa', N'Url', N'System.String,mscorlib', 1, 0, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'7aa2e6e8-0f39-1a07-bb88-000f2a50af05', N'0bff109e-fa67-d406-8676-000f2a5057aa', N'New_Tab', N'System.Boolean,mscorlib', 0, 0, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'c21e597d-a77b-7607-7c66-000f2a514a55', N'0bff109e-fa67-d406-8676-000f2a5057aa', N'Content', N'System.String,mscorlib', 2, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">true</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'43ea7609-6150-a707-c2de-000f2a518488', N'0bff109e-fa67-d406-8676-000f2a5057aa', N'Image', N'Magelia.WebStore.Data.Entities.File,Magelia.WebStore.Data', 3, 1, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'2dfba1ef-5305-ab07-67a9-000f2a5186d5', N'0bff109e-fa67-d406-8676-000f2a5057aa', N'CatalogCategory_Association', N'Magelia.WebStore.Data.Entities.CatalogCategory,Magelia.WebStore.Data', 4, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'34e9c099-e5f1-0508-f11f-000f2a52682d', N'9595e815-32c2-0908-8931-000f2a526a41', N'New_Tab', N'System.Boolean,mscorlib', 3, 0, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'7d282e36-a815-3208-3d21-000f2a52a3d3', N'9595e815-32c2-0908-8931-000f2a526a41', N'Url', N'System.String,mscorlib', 2, 0, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'e5c6ea91-7e63-3f08-8d67-000f2a52b9a6', N'9595e815-32c2-0908-8931-000f2a526a41', N'Content', N'System.String,mscorlib', 1, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">true</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'984f0d81-04ca-4c08-40c0-000f2a52cf04', N'9595e815-32c2-0908-8931-000f2a526a41', N'Image', N'Magelia.WebStore.Data.Entities.File,Magelia.WebStore.Data', 0, 1, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'2a672594-8a7f-e408-4c70-000f2a53f64f', N'958a6b8e-9424-0809-a3d7-000f2a5425df', N'Content', N'System.String,mscorlib', 2, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">true</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'6af64d8a-6798-f108-ab30-000f2a540406', N'958a6b8e-9424-0809-a3d7-000f2a5425df', N'Image', N'Magelia.WebStore.Data.Entities.File,Magelia.WebStore.Data', 1, 1, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'e80c233a-ee0c-fd08-ce16-000f2a541b5d', N'958a6b8e-9424-0809-a3d7-000f2a5425df', N'Title', N'System.String,mscorlib', 0, 1, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'146e57e1-1c5f-5900-bce9-000f2cbde826', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'Title', N'System.String,mscorlib', 0, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'9d34aaf4-01a1-8100-3439-000f2cbe783e', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'MainImage', N'Magelia.WebStore.Data.Entities.File,Magelia.WebStore.Data', 2, 0, 0, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="0" />', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'cbdae060-f19b-9a03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Brand_Association', N'Magelia.WebStore.Data.Entities.Brand,Magelia.WebStore.Data', 2, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'535bd408-62a5-9b03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Carrier_Association', N'Magelia.WebStore.Data.Entities.Carrier,Magelia.WebStore.Data', 3, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'29ca5a07-5898-9c03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Catalog_Association', N'Magelia.WebStore.Data.Entities.Catalog,Magelia.WebStore.Data', 4, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'4f559b89-528e-9d03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'CatalogCategory_Association', N'Magelia.WebStore.Data.Entities.CatalogCategory,Magelia.WebStore.Data', 5, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'7b75f77d-ac0d-9e03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Supplier_Association', N'Magelia.WebStore.Data.Entities.Supplier,Magelia.WebStore.Data', 6, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'7bab8490-83d6-9f03-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Warehouse_Association', N'Magelia.WebStore.Data.Entities.Warehouse,Magelia.WebStore.Data', 7, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'6c185a9c-4eae-a003-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Bundle_Association', N'Magelia.WebStore.Data.Entities.Bundle,Magelia.WebStore.Data', 8, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'fc9964ad-ccd0-a103-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'StandardProduct_Association', N'Magelia.WebStore.Data.Entities.StandardProduct,Magelia.WebStore.Data', 9, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'48c4feec-11d6-a203-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'VariableProduct_Association', N'Magelia.WebStore.Data.Entities.VariableProduct,Magelia.WebStore.Data', 10, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'68556ec1-63cf-a303-f23f-000f2fa9fc18', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Variant_Association', N'Magelia.WebStore.Data.Entities.Variant,Magelia.WebStore.Data', 11, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'a3428f89-c1ff-2708-8f2b-000f2fec0c34', N'75364dc9-ca74-7c08-7d7f-000f2a531333', N'Question', N'System.String,mscorlib', 0, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'f38878e4-f73a-6f13-aaeb-000f308cfeeb', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'Content', N'System.String,mscorlib', 3, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">true</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'998318ea-3e76-f013-2861-000f308e21b0', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'Subtitle', N'System.String,mscorlib', 1, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">true</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'16bba7ca-b1f8-201e-fcce-000f30aa1c9a', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'MetaTitle', N'System.String,mscorlib', 4, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'546625f9-8825-311e-e99d-000f30aa2c4f', N'f7642385-d3e6-9500-b8c7-000f2cbeb0fd', N'MetaDescription', N'System.String,mscorlib', 5, 0, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1" z:Size="3"><AdditionalDataItem z:Id="2"><Code z:Id="3">IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="4" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem z:Id="5"><Code z:Id="6">MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="7" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem z:Id="8"><Code z:Id="9">RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" z:Id="10" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'0652fe0f-f9d9-fb06-cc3a-000f2a509012', 9, N'Url')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'0652fe0f-f9d9-fb06-cc3a-000f2a509012', 12, N'Url')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'7aa2e6e8-0f39-1a07-bb88-000f2a50af05', 9, N'Open in a new tab')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'7aa2e6e8-0f39-1a07-bb88-000f2a50af05', 12, N'Ouvrir dans un nouvel onglet')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'c21e597d-a77b-7607-7c66-000f2a514a55', 9, N'Content')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'c21e597d-a77b-7607-7c66-000f2a514a55', 12, N'Contenu')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'43ea7609-6150-a707-c2de-000f2a518488', 9, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'34e9c099-e5f1-0508-f11f-000f2a52682d', 9, N'Open in a new tab')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'34e9c099-e5f1-0508-f11f-000f2a52682d', 12, N'Ouvrir dans un nouvel onglet')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'7d282e36-a815-3208-3d21-000f2a52a3d3', 9, N'Url')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'7d282e36-a815-3208-3d21-000f2a52a3d3', 12, N'Url')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'e5c6ea91-7e63-3f08-8d67-000f2a52b9a6', 9, N'Content')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'e5c6ea91-7e63-3f08-8d67-000f2a52b9a6', 12, N'Contenu')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'984f0d81-04ca-4c08-40c0-000f2a52cf04', 9, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'984f0d81-04ca-4c08-40c0-000f2a52cf04', 12, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'2a672594-8a7f-e408-4c70-000f2a53f64f', 9, N'Content')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'2a672594-8a7f-e408-4c70-000f2a53f64f', 12, N'Contenu')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'6af64d8a-6798-f108-ab30-000f2a540406', 9, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'6af64d8a-6798-f108-ab30-000f2a540406', 12, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'e80c233a-ee0c-fd08-ce16-000f2a541b5d', 9, N'Title')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'e80c233a-ee0c-fd08-ce16-000f2a541b5d', 12, N'Titre')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'146e57e1-1c5f-5900-bce9-000f2cbde826', 9, N'Title')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'146e57e1-1c5f-5900-bce9-000f2cbde826', 12, N'Titre')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'9d34aaf4-01a1-8100-3439-000f2cbe783e', 9, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'9d34aaf4-01a1-8100-3439-000f2cbe783e', 12, N'Image')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'a3428f89-c1ff-2708-8f2b-000f2fec0c34', 9, N'Question')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'a3428f89-c1ff-2708-8f2b-000f2fec0c34', 12, N'Question')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'f38878e4-f73a-6f13-aaeb-000f308cfeeb', 9, N'Content')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'f38878e4-f73a-6f13-aaeb-000f308cfeeb', 12, N'Contenu')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'998318ea-3e76-f013-2861-000f308e21b0', 9, N'Subtitle')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'16bba7ca-b1f8-201e-fcce-000f30aa1c9a', 9, N'Meta title')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'16bba7ca-b1f8-201e-fcce-000f30aa1c9a', 12, N'Meta title')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'546625f9-8825-311e-e99d-000f30aa2c4f', 9, N'Meta description')
INSERT [magelia].[ContentTypeAttributeLocalized] ([ContentTypeAttributeId], [CultureId], [Name]) VALUES (N'546625f9-8825-311e-e99d-000f30aa2c4f', 12, N'Meta description')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', 9, N'DHL')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', 12, N'DHL')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'3ef9b412-efbe-6c0b-8903-000eb79caa18', 9, N'UPS')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', 9, N'FedEx')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', 12, N'FedEx')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'25972b96-5e1a-320b-e43a-000eb79c6859', 9, N'DHL')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'25972b96-5e1a-320b-e43a-000eb79c6859', 12, N'DHL')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'189290cf-04c4-530b-b27d-000eb79c8b99', 9, N'FEDEX')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'189290cf-04c4-530b-b27d-000eb79c8b99', 12, N'FEDEX')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', 9, N'UPS')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', 12, N'UPS')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'81274881-2719-da0b-1dc2-000eb79d30d4', 9, N'Std. Shipping(2-3 days)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'81274881-2719-da0b-1dc2-000eb79d30d4', 12, N'Livraison standard (2-3 j)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', 9, N'Canada standard delivery (2-3 days)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', 12, N'Canada Livr. standard (2-3 jours)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'6210d83a-5816-600a-056c-000f8be32c05', 9, N'DHL Express France')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'6210d83a-5816-600a-056c-000f8be32c05', 12, N'DHL Express France')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'3eb712b5-d821-c80a-b12a-000f8be38586', 9, N'Corsica (Air)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'3eb712b5-d821-c80a-b12a-000f8be38586', 12, N'Corse')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'8418e939-65a3-e90a-e373-000f8be39bd3', 9, N'Fedex')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'8418e939-65a3-e90a-e373-000f8be39bd3', 12, N'FedEx')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'28ca0c77-30dd-302b-846a-00100e45ac1c', 9, N'UPS Worldwide delivery')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'28ca0c77-30dd-302b-846a-00100e45ac1c', 12, N'UPS Monde')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', 9, N'UPS Worldwide')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', 12, N'UPS Monde')
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1e52e073-4fd6-312b-95d4-00100e45ac1d', N'28ca0c77-30dd-302b-846a-00100e45ac1c', CAST(0.00000 AS Decimal(18, 5)), CAST(600.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'05df92c9-bedc-322b-bce2-00100e45ac1d', N'28ca0c77-30dd-302b-846a-00100e45ac1c', CAST(600.00000 AS Decimal(18, 5)), NULL, CAST(60.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'ea1ce9b7-f18c-332b-bce2-00100e45ac1d', N'28ca0c77-30dd-302b-846a-00100e45ac1c', CAST(0.00000 AS Decimal(18, 5)), CAST(500.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'6340612a-f36c-342b-bce2-00100e45ac1d', N'28ca0c77-30dd-302b-846a-00100e45ac1c', CAST(500.00000 AS Decimal(18, 5)), NULL, CAST(50.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'6ea1b38a-ddd3-8652-16d1-00100f1aa19e', N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', CAST(0.00000 AS Decimal(18, 5)), CAST(500.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'65cd9c93-722e-8752-3de5-00100f1aa19e', N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', CAST(500.00000 AS Decimal(18, 5)), NULL, CAST(50.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'78917dea-50db-8852-3de5-00100f1aa19e', N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', CAST(0.00000 AS Decimal(18, 5)), CAST(600.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'0308499b-6c56-8952-3de5-00100f1aa19e', N'cebd86a8-62e3-9c2c-0fe3-00100e466d46', CAST(600.00000 AS Decimal(18, 5)), NULL, CAST(80.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'f4ddba6a-83a4-9f95-772f-00100fb09a4b', N'6210d83a-5816-600a-056c-000f8be32c05', CAST(0.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'86c4bbc7-0ea3-a095-772f-00100fb09a4b', N'6210d83a-5816-600a-056c-000f8be32c05', CAST(100.00000 AS Decimal(18, 5)), NULL, CAST(16.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'd7392112-b96a-a195-9e40-00100fb09a4b', N'6210d83a-5816-600a-056c-000f8be32c05', CAST(0.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'229a668a-28ec-a295-9e40-00100fb09a4b', N'6210d83a-5816-600a-056c-000f8be32c05', CAST(120.00000 AS Decimal(18, 5)), NULL, CAST(18.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'033ed765-8358-e396-65b3-00100fb0d21f', N'25972b96-5e1a-320b-e43a-000eb79c6859', CAST(0.00000 AS Decimal(18, 5)), CAST(800.00000 AS Decimal(18, 5)), CAST(16.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'47e05115-c681-e496-8cc0-00100fb0d21f', N'25972b96-5e1a-320b-e43a-000eb79c6859', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'e991fe06-c01f-2e97-824e-00100fb0e643', N'189290cf-04c4-530b-b27d-000eb79c8b99', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'c23e0958-ab63-2f97-824e-00100fb0e643', N'189290cf-04c4-530b-b27d-000eb79c8b99', CAST(1000.00000 AS Decimal(18, 5)), NULL, CAST(22.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'9f2b0563-cec5-3398-bbf3-00100fb1107f', N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(38.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'e4b40d5b-089f-3498-bbf3-00100fb1107f', N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', CAST(1000.00000 AS Decimal(18, 5)), NULL, CAST(45.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'e2a5bf85-fb01-3598-e302-00100fb1107f', N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(48.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'26110e96-0b7d-3698-e302-00100fb1107f', N'da2beac5-dcb7-8a0b-9ef8-000eb79cc868', CAST(1000.00000 AS Decimal(18, 5)), NULL, CAST(52.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'cd63717c-41ff-b698-9502-00100fb122ac', N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(16.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1109714a-ca94-b798-bc13-00100fb122ac', N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', CAST(1000.00000 AS Decimal(18, 5)), NULL, CAST(25.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'630f5c75-a313-b898-e321-00100fb122ac', N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'd223d66a-c5af-b998-e321-00100fb122ac', N'c2a4785a-2087-6708-e4c6-000f8bdbb6ec', CAST(1000.00000 AS Decimal(18, 5)), NULL, CAST(30.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'6610c8f5-dbed-1c99-3cf6-00100fb12b23', N'81274881-2719-da0b-1dc2-000eb79d30d4', CAST(0.00000 AS Decimal(18, 5)), CAST(1000.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'0d8f60ac-27c8-1d99-3cf6-00100fb12b23', N'81274881-2719-da0b-1dc2-000eb79d30d4', CAST(0.00000 AS Decimal(18, 5)), CAST(1200.00000 AS Decimal(18, 5)), CAST(24.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'f9676898-3dea-6799-eb7f-00100fb130bb', N'3eb712b5-d821-c80a-b12a-000f8be38586', CAST(0.00000 AS Decimal(18, 5)), CAST(2000.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'df49767a-ef3b-6899-1288-00100fb130bc', N'3eb712b5-d821-c80a-b12a-000f8be38586', CAST(2000.00000 AS Decimal(18, 5)), NULL, CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'66463964-8bca-6999-1288-00100fb130bc', N'3eb712b5-d821-c80a-b12a-000f8be38586', CAST(0.00000 AS Decimal(18, 5)), CAST(2000.00000 AS Decimal(18, 5)), CAST(18.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'61f4d2a8-4a55-6a99-3994-00100fb130bc', N'3eb712b5-d821-c80a-b12a-000f8be38586', CAST(2000.00000 AS Decimal(18, 5)), NULL, CAST(22.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'9e557f42-058f-b499-8ab0-00100fb1390e', N'8418e939-65a3-e90a-e373-000f8be39bd3', CAST(0.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'161896b1-fbf0-b599-b1c9-00100fb1390e', N'8418e939-65a3-e90a-e373-000f8be39bd3', CAST(100.00000 AS Decimal(18, 5)), NULL, CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'40a07bae-18a5-b699-b1c9-00100fb1390e', N'8418e939-65a3-e90a-e373-000f8be39bd3', CAST(0.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), CAST(14.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'55e56e1c-60de-b799-d906-00100fb1390e', N'8418e939-65a3-e90a-e373-000f8be39bd3', CAST(120.00000 AS Decimal(18, 5)), NULL, CAST(24.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'faf31383-e167-760e-42d7-000e506f8184', N'be3d415b-a040-750e-42d7-000e506f8184', 4, 124, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'd94c3314-492e-5305-d3fe-000e5408eba6', N'ad704b96-fc1b-5205-5ecc-000e5408eba6', 3, 276, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'20311bd6-c08a-9905-05d1-000e54097118', N'92a46a15-0a10-9805-05d1-000e54097118', 3, 380, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'62d57888-8569-c505-d50a-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'c08f1649-25bb-c605-d50a-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'639719a9-a3af-4c6a-958f-fffcfe0680fa', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'345cf1c7-ee44-c705-fc1b-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'a6731792-2e63-4d3c-abcf-91f780db2b52', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'db116626-081d-c805-fc1b-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'e78f3050-d71e-4e2c-be7b-e5b1606d28d6', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'72eaa775-e8d0-c905-232c-000e5409d098', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'0a050dab-6601-4b59-b9a8-5b033b4560c3', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'c29bd7a7-e642-a503-eed2-000f8ba5eaed', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 40, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'5796bcdd-b813-a603-eed2-000f8ba5eaed', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 56, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'835c71f1-26d1-a703-eed2-000f8ba5eaed', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 100, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'70cfe123-9f6e-a803-eed2-000f8ba5eaed', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 191, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'89a618fd-1884-a903-eed2-000f8ba5eaed', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 196, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'dbeb979a-e362-aa03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 203, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'b42289e7-c903-ab03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 208, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'76b7cdfb-5d6b-ac03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 208, N'f5623340-30a5-4206-82a4-a4faa8788f38', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f8e9d403-bde3-ad03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 208, N'c9255f82-beac-4649-b640-149c9a7a9162', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'13b0c6b1-98ad-ae03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 233, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'205087d8-5e99-af03-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 246, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'143d5ffb-ce7c-b003-15e9-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 246, N'95ae304d-ddf1-4c82-bdfa-1d13f60d5fe1', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'65f532f9-2be4-b103-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 246, N'fa70b7a3-6c57-4919-997b-52ad85f05707', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'c8e135c9-fba3-b203-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 300, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'10defa41-e1e7-b303-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 348, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'5aa492cc-3ab4-b403-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 372, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'fe23314b-a0a1-b503-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 428, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f6c423a6-ed77-b603-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 440, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'bb5c0e88-4fb3-b703-3d00-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 442, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'83c969a4-37b2-b803-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 470, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'7e0e999f-3db3-b903-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 492, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'ef06cf41-c7a6-ba03-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 528, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'8d6266a3-a887-bb03-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 528, N'24a77f23-76d6-4e30-b163-373aa5fd95de', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'51facc1a-49d4-bc03-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 528, N'bd9fc49f-ae83-420b-b78e-898a43cb0b81', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'946c4d72-b243-bd03-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 528, N'7ff16558-69ba-46b2-ac3c-75d2a3407868', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'28f5cfe3-2f9b-be03-641b-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 528, N'd76c744e-6302-4bb3-b676-85f536879a98', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'72f050eb-0384-bf03-8b2d-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 616, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'701f6493-15f0-c003-8b2d-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 620, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f2327598-7bd9-c103-8b2d-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 620, N'd23af6aa-0882-455d-bc34-852dde553aa8', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'28aa2ebb-4ac4-c203-8b2d-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 620, N'2b440613-501f-43df-aae1-1926f186ef76', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'42618124-ee18-c303-8b2d-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 642, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'83a5a80b-c7d3-c403-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 703, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'cf2b6381-4d56-c503-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 705, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f6a629ad-a2a3-c603-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 752, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'4478d7db-5cbc-c703-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'd90b4eda-8336-4c2c-b826-b7d53afd7c50', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'ac3c02a0-da5c-c803-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'eae3ff78-a15e-4f10-8263-cb5750e89bd2', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'52347e47-38b5-c903-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'078276fd-5d59-4e8d-b51e-467275b29e5b', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'a99cdf69-5b65-ca03-b23f-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'8690ff5b-038a-47b1-99ef-f6595543faba', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'7b560e17-7abf-cb03-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'acc4b5fa-d20c-490d-bf53-c45366444d15', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'325434d0-29d9-cc03-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'47906ab0-d222-4916-9d51-ff48320ec46c', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'523b17f0-0894-cd03-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'31ff8339-4cad-406d-9c53-ab3e324005fb', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'2c93415a-19f0-ce03-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'2642ad88-4b50-48b4-8b08-faf953ad1fac', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'4cf11a48-236a-cf03-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'06e34753-bd54-4d60-9577-9b2408ad2561', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'94357115-a562-d003-d956-000f8ba5eaee', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 826, N'79ee2398-db9a-46b9-9762-4f1357ccd73b', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'd1909de0-686e-d103-0069-000f8ba5eaef', N'e90ac1fc-5055-1506-cc06-000e540a9aa7', 3, 336, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'03fea038-af43-0105-90b4-000f8bd517e7', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'6d2cf3ad-ab18-0205-b7d1-000f8bd517e7', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'720cfba4-b7f1-0305-b7d1-000f8bd517e7', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'3ad48ff0-f980-0c05-f8ff-000f8bd51d4c', N'22ee9276-25ea-a40f-d2be-000e5079e671', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'77493db7-ebd3-0d05-f8ff-000f8bd51d4c', N'22ee9276-25ea-a40f-d2be-000e5079e671', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'a3bd5233-a817-ae07-94cc-000f8bdac36f', N'1f94b818-62ec-5e06-5b9f-000e540b1922', 3, 250, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'd16a9deb-945b-af07-94cc-000f8bdac36f', N'1f94b818-62ec-5e06-5b9f-000e540b1922', 3, 250, N'2213877a-8eb9-4945-955d-e450b5ad108a', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'856fed74-0010-4508-b4b2-000f8bdb9c4a', N'b0b8c37b-6a51-4408-8d8f-000f8bdb9c4a', 4, 124, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'72d825d9-1877-a509-d3cf-000f8be222b2', N'05ecadb6-e25e-a409-3778-000f8be222b2', 3, 250, NULL, N'^(([0-1][1-9])|(2[1-9])|([3-8][0-9])|(9[0-6]))[0-9]{3}$', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'0e0eb13e-4429-950a-49ca-000f8be36008', N'001a0ec9-1b82-730a-4190-000f8be34735', 3, 250, NULL, N'^(20|2A|2B)[0-9]{3}$', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'551d2faa-3a9f-0002-43a5-000f8d361bc1', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', 4, 840, N'0fb464da-e8b0-4e00-a9cc-7719f0d7fb76', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'eb6161e3-e3f4-0a06-ade3-00100bacf5e4', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'28be6507-ec51-0b06-578b-00100bacf5e8', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, N'0fb464da-e8b0-4e00-a9cc-7719f0d7fb76', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'34abeada-0978-d606-9891-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 276, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'5b04eee0-a459-d706-9891-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 380, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'4be8005f-f5d2-d806-bf9f-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 724, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'de73b183-86c1-d906-bf9f-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 724, N'a6731792-2e63-4d3c-abcf-91f780db2b52', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'1ae7d26b-972c-da06-bf9f-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 56, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'b1409a01-7a2c-db06-bf9f-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 442, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'c9930f7b-7bba-dc06-e6af-00100bad4a6f', N'a1177c3e-863e-9300-a859-000e52149f83', 3, 756, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'639ac0ac-965b-9329-33c1-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 2, 392, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'fb0d2430-e7fe-9429-33c1-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 2, 156, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f07306b5-348e-9529-33c1-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 2, 356, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'80c1c710-f725-9629-5ade-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 250, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'669e0126-47f7-9729-5ade-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 276, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'59ffa035-6080-9829-5ade-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 724, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'4a891e92-75b7-9929-5ade-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 380, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'db449412-843b-9a29-5ade-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 56, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'44cbf45c-ef1f-9b29-81ec-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 442, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'5b4b188a-feb4-9c29-81ec-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 3, 756, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'450d0b21-73dc-9d29-81ec-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 4, 124, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'7234e437-12a3-9e29-81ec-00100e454d09', N'8f606fbe-35bf-0128-0a17-00100e43bdfe', 4, 840, NULL, N'', 0)
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'759b6b9b-37b2-560f-eb2e-000e5078cc06', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'22ee9276-25ea-a40f-d2be-000e5079e671', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'a1177c3e-863e-9300-a859-000e52149f83', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'b0b8c37b-6a51-4408-8d8f-000f8bdb9c4a', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'05ecadb6-e25e-a409-3778-000f8be222b2', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'001a0ec9-1b82-730a-4190-000f8be34735', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'8f606fbe-35bf-0128-0a17-00100e43bdfe', N'e0109a37-70c3-0307-2f90-000e540c8685')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'759b6b9b-37b2-560f-eb2e-000e5078cc06', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'22ee9276-25ea-a40f-d2be-000e5079e671', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'a1177c3e-863e-9300-a859-000e52149f83', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'b0b8c37b-6a51-4408-8d8f-000f8bdb9c4a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'05ecadb6-e25e-a409-3778-000f8be222b2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'001a0ec9-1b82-730a-4190-000f8be34735', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'8f606fbe-35bf-0128-0a17-00100e43bdfe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'e0109a37-70c3-0307-2f90-000e540c8685', 9, N'Winter Catalog', N'Winter catalog long description', N'Winter catalog short description')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'e0109a37-70c3-0307-2f90-000e540c8685', 12, N'Catalogue hiver', N'Catalogue hiver description longue', N'Catalogue hiver -description courte')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 9, N'Summer Catalog', N'Summer catalog long description', N'Summer catalog short description')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 12, N'Catalogue été', N'Catalogue été description longue', N'Catalogue été description courte')
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'e0109a37-70c3-0307-2f90-000e540c8685', 840)
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 840)
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'e0109a37-70c3-0307-2f90-000e540c8685', 978)
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 978)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'113fd89b-8382-0407-738d-000e540c8704', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Games', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Shirts', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'watches', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'root', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'111ca5f1-b931-0907-55a0-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Books', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Software', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'Home Products', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'Downloads', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'Accessories', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'6a53eea4-f7cf-1107-6714-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Sporting Goods', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'MenClothes', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'MenFragrances', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'home', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'2320adfb-e758-1607-dc45-000e540c870a', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 0, N'Shoes', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'e9e268c2-f128-df00-40af-000ec7f090d9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Misc', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'f70ce676-30fa-fc00-c17f-000ec7f0a505', N'e0109a37-70c3-0307-2f90-000e540c8685', 1, 1, N'Misc', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Games', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Shirts', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Dress watches', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Sport watches', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'root', NULL)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Books', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Sport Sunglasses', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Software', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Home Products', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Downloads', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Watches', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Sunglasses', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Sporting Goods', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'City Sunglasses', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'MenClothes', N'MenClothes')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'MenFragrances', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 0, N'home', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Shoes', N'')
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'be36c89d-d80e-b302-b8d0-000e544aae6e', N'53340d39-719e-a607-8838-000e540c8758', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7440a290-6d32-b402-dfe1-000e544aae6e', N'53340d39-719e-a607-8838-000e540c8758', 978, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a48e9068-606c-b502-dfe1-000e544aae6e', N'f7728012-2fbf-4222-8a6f-c551419ce068', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c26aa5b3-d4be-b602-dfe1-000e544aae6e', N'f7728012-2fbf-4222-8a6f-c551419ce068', 978, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'315149b6-9a51-8800-d582-000ebb99c3a1', N'f7728012-2fbf-4222-8a6f-c551419ce068', 156, 1, CAST(4400.00000 AS Decimal(18, 5)), CAST(4600.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a21b99da-411a-d701-a399-000f2fe77bb9', N'78015c64-5e60-4e07-e2d3-000e540c8752', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a1e7659b-3b3c-d801-a399-000f2fe77bb9', N'78015c64-5e60-4e07-e2d3-000e540c8752', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'27230041-dd88-d901-a399-000f2fe77bb9', N'1635397e-421b-41a6-a396-c509425a392b', 156, 1, CAST(2450.00000 AS Decimal(18, 5)), CAST(2550.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6829ce8d-2a46-da01-a399-000f2fe77bb9', N'1635397e-421b-41a6-a396-c509425a392b', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'423e41ca-dab2-db01-a399-000f2fe77bb9', N'1635397e-421b-41a6-a396-c509425a392b', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9aaeef3c-d94e-dd07-0449-000f2feb43f5', N'33dfed8d-b968-7900-3a53-000ecb44a3bf', 156, 1, CAST(123.00000 AS Decimal(18, 5)), CAST(125.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8feffb95-7dca-de07-0449-000f2feb43f5', N'33dfed8d-b968-7900-3a53-000ecb44a3bf', 840, 1, CAST(19.00000 AS Decimal(18, 5)), CAST(21.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e6f15115-675e-df07-0449-000f2feb43f5', N'33dfed8d-b968-7900-3a53-000ecb44a3bf', 978, 1, CAST(15.00000 AS Decimal(18, 5)), CAST(18.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'db405008-4880-e007-0449-000f2feb43f5', N'355631c4-00b9-7a00-d699-000ecb44a3bf', 156, 1, CAST(123.00000 AS Decimal(18, 5)), CAST(125.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e7f9525f-8360-e107-0449-000f2feb43f5', N'355631c4-00b9-7a00-d699-000ecb44a3bf', 840, 1, CAST(19.00000 AS Decimal(18, 5)), CAST(21.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8a8674c8-194e-e207-0449-000f2feb43f5', N'355631c4-00b9-7a00-d699-000ecb44a3bf', 978, 1, CAST(15.00000 AS Decimal(18, 5)), CAST(18.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bfe3d0ac-e690-7208-6c7f-000f8c72d304', N'9c4215ba-3ffc-5a07-a626-000e540c8753', 978, 1, CAST(112.00000 AS Decimal(18, 5)), CAST(122.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'04e0a280-aa8d-7308-9390-000f8c72d304', N'9c4215ba-3ffc-5a07-a626-000e540c8753', 840, 1, CAST(142.00000 AS Decimal(18, 5)), CAST(152.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7646583e-cf94-7408-9390-000f8c72d304', N'655c5105-ab28-45e7-94ec-10951861b4d7', 978, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'89ab3404-9728-7508-9390-000f8c72d304', N'655c5105-ab28-45e7-94ec-10951861b4d7', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e46ceaaf-d924-7608-9390-000f8c72d304', N'655c5105-ab28-45e7-94ec-10951861b4d7', 156, 1, CAST(2100.00000 AS Decimal(18, 5)), CAST(2200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'46007a9e-93ce-7708-9390-000f8c72d304', N'61db7556-2efc-ce07-2052-000e540c875b', 978, 1, CAST(132.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e062fcda-221b-7808-9390-000f8c72d304', N'61db7556-2efc-ce07-2052-000e540c875b', 840, 1, CAST(152.00000 AS Decimal(18, 5)), CAST(162.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1060c4a2-5171-7908-9390-000f8c72d304', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'353d6074-04c9-7a08-baaf-000f8c72d304', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 840, 1, CAST(170.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4697d02c-7007-7b08-baaf-000f8c72d304', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 156, 1, CAST(2500.00000 AS Decimal(18, 5)), CAST(2600.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e6203b5d-b0b7-7c08-baaf-000f8c72d304', N'b9f27fc7-55a3-0108-a2cf-000e540c875e', 840, 1, CAST(172.00000 AS Decimal(18, 5)), CAST(182.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fb430094-2f32-7d08-baaf-000f8c72d304', N'b9f27fc7-55a3-0108-a2cf-000e540c875e', 978, 1, CAST(152.00000 AS Decimal(18, 5)), CAST(162.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd13a1860-794b-7e08-baaf-000f8c72d304', N'a059713d-a032-4abf-99d9-72ead8819e31', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c8218b57-3330-7f08-baaf-000f8c72d304', N'a059713d-a032-4abf-99d9-72ead8819e31', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8243deed-1f76-8008-baaf-000f8c72d304', N'a059713d-a032-4abf-99d9-72ead8819e31', 156, 1, CAST(1500.00000 AS Decimal(18, 5)), CAST(1600.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd6012e58-2f68-a608-4c9e-000f8c72d8b6', N'ddd44419-f6b7-6107-1b58-000e540c8754', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bbc01e72-99de-a708-4c9e-000f8c72d8b6', N'ddd44419-f6b7-6107-1b58-000e540c8754', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(145.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b455028a-f5dc-a808-4c9e-000f8c72d8b6', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c92ffd25-ff07-a908-4c9e-000f8c72d8b6', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3aff32ac-b72a-aa08-4c9e-000f8c72d8b6', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 156, 1, CAST(1300.00000 AS Decimal(18, 5)), CAST(1350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b9590400-bc82-ab08-73b4-000f8c72d8b6', N'199a5f60-1f42-9a07-c4e6-000e540c8757', 840, 1, CAST(155.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f3623c94-48ad-ac08-73b4-000f8c72d8b6', N'199a5f60-1f42-9a07-c4e6-000e540c8757', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a7c19e5e-ef25-ad08-73b4-000f8c72d8b6', N'18e50023-3749-49f5-aad5-c860ceb68aff', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ef348bbb-ba9e-ae08-73b4-000f8c72d8b6', N'18e50023-3749-49f5-aad5-c860ceb68aff', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bda26d07-9e35-af08-73b4-000f8c72d8b6', N'18e50023-3749-49f5-aad5-c860ceb68aff', 156, 1, CAST(1450.00000 AS Decimal(18, 5)), CAST(1500.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'18508891-c707-b008-73b4-000f8c72d8b6', N'e82c19cc-b56c-fb07-54ae-000e540c875e', 840, 1, CAST(172.00000 AS Decimal(18, 5)), CAST(178.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'259c4b7f-df90-b108-73b4-000f8c72d8b6', N'e82c19cc-b56c-fb07-54ae-000e540c875e', 978, 1, CAST(167.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bd41a078-c980-b208-73b4-000f8c72d8b6', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 840, 1, CAST(172.00000 AS Decimal(18, 5)), CAST(178.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'75722103-e513-b308-9aca-000f8c72d8b6', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 978, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ead9b849-ed2c-b408-9aca-000f8c72d8b6', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 156, 1, CAST(1670.00000 AS Decimal(18, 5)), CAST(1700.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1759a63a-7e6d-df08-a5a4-000f8c72e08b', N'e75562be-e09c-8b07-da82-000e540c8756', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6b48cf70-876d-e008-a5a4-000f8c72e08b', N'e75562be-e09c-8b07-da82-000e540c8756', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aba682b5-05ba-e108-a5a4-000f8c72e08b', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'91b30b5d-7d3c-e208-a5a4-000f8c72e08b', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0fcb14ed-f075-e308-a5a4-000f8c72e08b', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 156, 1, CAST(400.00000 AS Decimal(18, 5)), CAST(450.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'599380b4-a66b-e408-a5a4-000f8c72e08b', N'e5939a52-2d33-a907-d65a-000e540c8758', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(67.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'53600148-2889-e508-a5a4-000f8c72e08b', N'e5939a52-2d33-a907-d65a-000e540c8758', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e1785ee3-b31e-e608-a5a4-000f8c72e08b', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(67.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'361cf403-b05f-e708-ccba-000f8c72e08b', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c366390c-71c8-e808-ccba-000f8c72e08b', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 156, 1, CAST(600.00000 AS Decimal(18, 5)), CAST(670.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'50e556d9-7df2-e908-ccba-000f8c72e08b', N'3afc373b-472f-fe07-7bbf-000e540c875e', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(36.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ef5eb2c8-102f-ea08-ccba-000f8c72e08b', N'3afc373b-472f-fe07-7bbf-000e540c875e', 840, 1, CAST(38.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5ddee662-47c6-eb08-ccba-000f8c72e08b', N'685ae003-b048-42d6-9771-7b3624f74a2d', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(36.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c59dfad0-56c4-ec08-ccba-000f8c72e08b', N'685ae003-b048-42d6-9771-7b3624f74a2d', 840, 1, CAST(38.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6ff391f7-f968-ed08-ccba-000f8c72e08b', N'685ae003-b048-42d6-9771-7b3624f74a2d', 156, 1, CAST(340.00000 AS Decimal(18, 5)), CAST(360.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a75e20c0-7761-4709-eff6-000f8c72e799', N'441ad31b-4b50-4007-aa4f-000e540c8751', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a33f035b-3ce0-4809-eff6-000f8c72e799', N'441ad31b-4b50-4007-aa4f-000e540c8751', 840, 1, CAST(72.00000 AS Decimal(18, 5)), CAST(76.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e6666dfa-e755-4909-eff6-000f8c72e799', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'79852c3a-31d3-4a09-eff6-000f8c72e799', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 840, 1, CAST(72.00000 AS Decimal(18, 5)), CAST(76.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e0101fef-717f-4b09-eff6-000f8c72e799', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 156, 1, CAST(670.00000 AS Decimal(18, 5)), CAST(690.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6bbc36a9-1620-4c09-eff6-000f8c72e799', N'40c077eb-54ce-6a07-b79a-000e540c8754', 978, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(47.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9873fd0b-6490-4d09-1722-000f8c72e79a', N'40c077eb-54ce-6a07-b79a-000e540c8754', 840, 1, CAST(52.00000 AS Decimal(18, 5)), CAST(58.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f054d441-5935-4e09-1722-000f8c72e79a', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 978, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(47.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'635fa73c-863d-4f09-1722-000f8c72e79a', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 840, 1, CAST(52.00000 AS Decimal(18, 5)), CAST(58.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f34f96b3-c6d4-5009-1722-000f8c72e79a', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 156, 1, CAST(450.00000 AS Decimal(18, 5)), CAST(470.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2a766bf1-4b9c-5109-1722-000f8c72e79a', N'db9e007c-28c7-9707-9dd5-000e540c8757', 840, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(34.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7e41bc5d-0273-5209-1722-000f8c72e79a', N'db9e007c-28c7-9707-9dd5-000e540c8757', 978, 1, CAST(27.00000 AS Decimal(18, 5)), CAST(28.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2a8722b0-17fa-5309-1722-000f8c72e79a', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 840, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(34.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6abe44be-087f-5409-1722-000f8c72e79a', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 978, 1, CAST(27.00000 AS Decimal(18, 5)), CAST(28.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c50254f9-cd78-5509-3e33-000f8c72e79a', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 156, 1, CAST(2700.00000 AS Decimal(18, 5)), CAST(280.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9a6fb7bd-d484-7b09-7f52-000f8c72eb33', N'2f939776-df9e-2707-fc98-000e540c874f', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'50f70699-e68d-7c09-7f52-000f8c72eb33', N'2f939776-df9e-2707-fc98-000e540c874f', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'660ff35c-a000-7d09-7f52-000f8c72eb33', N'e1470383-3f50-4c1d-9227-8656608ceedc', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd37a7096-503d-7e09-7f52-000f8c72eb33', N'e1470383-3f50-4c1d-9227-8656608ceedc', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f1aa44fa-103f-7f09-a668-000f8c72eb33', N'e1470383-3f50-4c1d-9227-8656608ceedc', 156, 1, CAST(600.00000 AS Decimal(18, 5)), CAST(640.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e9b4e31a-9dbc-8009-a668-000f8c72eb33', N'0aeb4b3e-b3d2-3607-e6fc-000e540c8750', 978, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4c49d72b-fb08-8109-a668-000f8c72eb33', N'0aeb4b3e-b3d2-3607-e6fc-000e540c8750', 840, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a88e36b5-0461-8209-a668-000f8c72eb33', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 978, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'69f9ae6d-62b2-8309-a668-000f8c72eb33', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 840, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'762604ef-374f-8409-a668-000f8c72eb33', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 156, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'90a53b4f-e710-8509-a668-000f8c72eb33', N'68895dd1-8c4a-9407-76c4-000e540c8757', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cbd567ba-8020-8609-a668-000f8c72eb33', N'68895dd1-8c4a-9407-76c4-000e540c8757', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8855e988-0479-8709-cd7e-000f8c72eb33', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6d7d69e3-9acd-8809-cd7e-000f8c72eb33', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2430f076-9ef8-8909-cd7e-000f8c72eb33', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 156, 1, CAST(400.00000 AS Decimal(18, 5)), CAST(450.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cadf6fc0-77d3-af09-ae34-000f8c72efd6', N'1f919855-c7ea-5107-09e4-000e540c8753', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(56.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f402673f-d11b-b009-ae34-000f8c72efd6', N'1f919855-c7ea-5107-09e4-000e540c8753', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e8571634-3655-b109-ae34-000f8c72efd6', N'f853fa3d-0937-470d-a276-5969c2041719', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(56.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd0f4caec-2343-b209-ae34-000f8c72efd6', N'f853fa3d-0937-470d-a276-5969c2041719', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'68ac2977-b9a0-b309-ae34-000f8c72efd6', N'f853fa3d-0937-470d-a276-5969c2041719', 156, 1, CAST(510.00000 AS Decimal(18, 5)), CAST(560.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bd4fd5c1-2122-b409-ae34-000f8c72efd6', N'107533a6-50d4-5407-30f4-000e540c8753', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9fc0d8fd-1bcf-b509-ae34-000f8c72efd6', N'107533a6-50d4-5407-30f4-000e540c8753', 840, 1, CAST(73.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c5ffd519-7717-b609-d54a-000f8c72efd6', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cf8b56ee-e1db-b709-d54a-000f8c72efd6', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 840, 1, CAST(73.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'61ffc373-996f-b809-d54a-000f8c72efd6', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 156, 1, CAST(670.00000 AS Decimal(18, 5)), CAST(700.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3b3cb796-df71-b909-d54a-000f8c72efd6', N'e75f43e6-15c2-c207-5cff-000e540c875a', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b92048cf-8849-ba09-d54a-000f8c72efd6', N'e75f43e6-15c2-c207-5cff-000e540c875a', 840, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(43.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b2cae4e9-dcf2-bb09-d54a-000f8c72efd6', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cbb6b1fd-7551-bc09-d54a-000f8c72efd6', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 840, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(43.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a818b8ef-520e-bd09-d54a-000f8c72efd6', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 156, 1, CAST(340.00000 AS Decimal(18, 5)), CAST(370.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6ebfb2d9-8238-170a-6132-000f8c72f927', N'6a0419ec-49e9-2407-ae77-000e540c874f', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(165.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9cf1c1d0-a76d-180a-6132-000f8c72f927', N'6a0419ec-49e9-2407-ae77-000e540c874f', 840, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(175.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c4d6e4fe-60bd-190a-6132-000f8c72f927', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(165.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'80884020-cd32-1a0a-8848-000f8c72f927', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 840, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(175.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'444e93b7-4c28-1b0a-8848-000f8c72f927', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 156, 1, CAST(1500.00000 AS Decimal(18, 5)), CAST(1650.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c514aa5c-dbfe-1c0a-8848-000f8c72f927', N'6e22b29a-2e68-7007-05bb-000e540c8755', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e4bbdb0f-41e3-1d0a-8848-000f8c72f927', N'6e22b29a-2e68-7007-05bb-000e540c8755', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'101d1172-f92b-1e0a-8848-000f8c72f927', N'796be820-7f83-4622-838b-85943bb6792f', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'34cbfb15-c92b-1f0a-8848-000f8c72f927', N'796be820-7f83-4622-838b-85943bb6792f', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7d933bd4-f4ed-200a-8848-000f8c72f927', N'796be820-7f83-4622-838b-85943bb6792f', 156, 1, CAST(500.00000 AS Decimal(18, 5)), CAST(550.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eed77849-9e63-210a-8848-000f8c72f927', N'c4209424-2233-bc07-0ede-000e540c875a', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(95.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b0721c79-b9d2-220a-af62-000f8c72f927', N'c4209424-2233-bc07-0ede-000e540c875a', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e36a88a6-2f61-230a-af62-000f8c72f927', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(95.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6ce16dad-bec3-240a-af62-000f8c72f927', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'003c6a59-cb53-250a-af62-000f8c72f927', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 156, 1, CAST(900.00000 AS Decimal(18, 5)), CAST(950.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'00f4e942-3d1e-4b0a-1937-000f8c72fdd2', N'7f7cdb2e-7fed-4707-1f80-000e540c8752', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4977df58-7b3f-4c0a-404d-000f8c72fdd2', N'7f7cdb2e-7fed-4707-1f80-000e540c8752', 840, 1, CAST(58.00000 AS Decimal(18, 5)), CAST(62.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0adb99d4-5721-4d0a-404d-000f8c72fdd2', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4d90eb27-28b3-4e0a-404d-000f8c72fdd2', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 840, 1, CAST(58.00000 AS Decimal(18, 5)), CAST(62.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6f06bddc-7461-4f0a-404d-000f8c72fdd2', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 156, 1, CAST(510.00000 AS Decimal(18, 5)), CAST(540.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8f8fce4c-7d1b-500a-404d-000f8c72fdd2', N'289bfa21-d870-9d07-ebf6-000e540c8757', 840, 1, CAST(82.00000 AS Decimal(18, 5)), CAST(86.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0c7f383e-2379-510a-404d-000f8c72fdd2', N'289bfa21-d870-9d07-ebf6-000e540c8757', 978, 1, CAST(76.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1df775e5-d0b7-520a-404d-000f8c72fdd2', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 840, 1, CAST(82.00000 AS Decimal(18, 5)), CAST(86.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'38ff7f3d-a8fd-530a-404d-000f8c72fdd2', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 978, 1, CAST(76.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'97205d8d-77c1-540a-404d-000f8c72fdd2', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 156, 1, CAST(760.00000 AS Decimal(18, 5)), CAST(790.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'27feb6e6-0e24-550a-676b-000f8c72fdd2', N'98c10c02-9c22-cb07-f942-000e540c875a', 978, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd64b4a17-9f9d-560a-676b-000f8c72fdd2', N'98c10c02-9c22-cb07-f942-000e540c875a', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(44.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5241d2f8-aea2-570a-676b-000f8c72fdd2', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 978, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3cc1f12a-0b28-580a-676b-000f8c72fdd2', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(44.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e53b680d-5162-590a-676b-000f8c72fdd2', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 156, 1, CAST(320.00000 AS Decimal(18, 5)), CAST(370.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9988a712-9bed-7f0a-c774-000f8c73015c', N'92eb8def-2430-7c07-f01f-000e540c8755', 978, 1, CAST(49.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ac332ac7-b249-800a-ee8a-000f8c73015c', N'92eb8def-2430-7c07-f01f-000e540c8755', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f983a0ec-cd38-810a-ee8a-000f8c73015c', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 978, 1, CAST(49.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a307865e-6285-820a-ee8a-000f8c73015c', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'22d722fc-78b4-830a-ee8a-000f8c73015c', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 156, 1, CAST(490.00000 AS Decimal(18, 5)), CAST(550.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ee5fee54-2080-840a-ee8a-000f8c73015c', N'7bc59ecc-9691-b607-99ac-000e540c8759', 840, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(82.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd2138d5a-9c7d-850a-ee8a-000f8c73015c', N'7bc59ecc-9691-b607-99ac-000e540c8759', 978, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(73.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0c936a4a-8548-860a-ee8a-000f8c73015c', N'9efe8692-bc5e-4ecc-a034-48db75585062', 840, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(82.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f842472e-f177-870a-15a0-000f8c73015d', N'9efe8692-bc5e-4ecc-a034-48db75585062', 978, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(73.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9814d3af-54d0-880a-15a0-000f8c73015d', N'9efe8692-bc5e-4ecc-a034-48db75585062', 156, 1, CAST(690.00000 AS Decimal(18, 5)), CAST(730.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'10f15724-066f-890a-15a0-000f8c73015d', N'ca4b99f0-6211-e207-7fe7-000e540c875c', 978, 1, CAST(89.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'06e2f090-18be-8a0a-15a0-000f8c73015d', N'ca4b99f0-6211-e207-7fe7-000e540c875c', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8f50e2ac-41ca-8b0a-15a0-000f8c73015d', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 978, 1, CAST(89.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3a7ee927-591e-8c0a-15a0-000f8c73015d', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'488ea571-0bc4-8d0a-15a0-000f8c73015d', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 156, 1, CAST(890.00000 AS Decimal(18, 5)), CAST(990.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b30c6493-16cd-4402-08f1-000f8d5dc2c8', N'd3408dec-1ec7-6d02-7838-000ecb3fa721', 156, 1, CAST(256.00000 AS Decimal(18, 5)), CAST(325.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'42729cd7-975c-4502-2ffb-000f8d5dc2c8', N'd3408dec-1ec7-6d02-7838-000ecb3fa721', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(52.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3636a311-5fbb-4602-2ffb-000f8d5dc2c8', N'd3408dec-1ec7-6d02-7838-000ecb3fa721', 978, 1, CAST(31.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'acf8d108-3f81-4702-2ffb-000f8d5dc2c8', N'82bc5c06-5c67-6e02-147d-000ecb3fa722', 156, 1, CAST(256.00000 AS Decimal(18, 5)), CAST(325.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'70ce94c5-1e88-4802-2ffb-000f8d5dc2c8', N'82bc5c06-5c67-6e02-147d-000ecb3fa722', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(52.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aa07c6c7-d26f-4902-2ffb-000f8d5dc2c8', N'82bc5c06-5c67-6e02-147d-000ecb3fa722', 978, 1, CAST(31.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ec8338c7-3abd-5a02-fce7-000f8d5dc7c7', N'58e696c2-176e-8207-ad45-000f8c933154', 840, 1, CAST(109.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'452dcd6c-d535-5b02-23f9-000f8d5dc7c8', N'58e696c2-176e-8207-ad45-000f8c933154', 978, 1, CAST(99.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7de451aa-ec20-5c02-23f9-000f8d5dc7c8', N'1836c704-bb78-9b07-c975-000f8c9338a3', 840, 1, CAST(99.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'71cf5dae-4334-5d02-23f9-000f8d5dc7c8', N'1836c704-bb78-9b07-c975-000f8c9338a3', 978, 1, CAST(99.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fc81b91e-b800-6e02-e864-000f8d5dcb7a', N'8bb94077-5945-8107-4b1c-000f8c933152', 840, 1, CAST(20.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c856ec61-8b43-6f02-e864-000f8d5dcb7a', N'8bb94077-5945-8107-4b1c-000f8c933152', 978, 1, CAST(25.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'af2903b3-e21e-7002-e864-000f8d5dcb7a', N'b1565d2c-7452-9a07-c975-000f8c9338a3', 840, 1, CAST(110.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'548f0e9e-a78b-7102-e864-000f8d5dcb7a', N'b1565d2c-7452-9a07-c975-000f8c9338a3', 978, 1, CAST(80.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8c9a6f5c-d5c1-8202-cd28-000f8d5dd011', N'4d5e3e26-83bd-8507-ad45-000f8c933154', 840, 1, CAST(120.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'861b83b6-f1b7-8302-cd28-000f8d5dd011', N'4d5e3e26-83bd-8507-ad45-000f8c933154', 978, 1, CAST(125.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'20dfddd8-a7d8-8402-cd28-000f8d5dd011', N'98f6b307-a596-9e07-c975-000f8c9338a3', 840, 1, CAST(120.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'854d3234-6121-8502-cd28-000f8d5dd011', N'98f6b307-a596-9e07-c975-000f8c9338a3', 978, 1, CAST(125.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b35235ec-3711-9602-0be2-000f8d5dd389', N'71f040d9-f5f0-8807-ad45-000f8c933154', 840, 1, CAST(149.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b64139a3-8478-9702-0be2-000f8d5dd389', N'71f040d9-f5f0-8807-ad45-000f8c933154', 978, 1, CAST(149.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cff94637-1f94-9802-32f9-000f8d5dd389', N'516f49a3-e83e-a107-c975-000f8c9338a3', 840, 1, CAST(15.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'88c9b42c-8e90-9902-32f9-000f8d5dd389', N'516f49a3-e83e-a107-c975-000f8c9338a3', 978, 1, CAST(12.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'67be43d8-c651-bb02-7dfe-000f8d5dd9ad', N'0b2d26c5-3137-8707-ad45-000f8c933154', 840, 1, CAST(215.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4d42e1d1-2e95-bc02-7dfe-000f8d5dd9ad', N'0b2d26c5-3137-8707-ad45-000f8c933154', 978, 1, CAST(185.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'89b99c90-7895-bd02-7dfe-000f8d5dd9ad', N'0e40982d-28e3-a007-c975-000f8c9338a3', 840, 1, CAST(150.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'81eb0eb9-04ca-be02-7dfe-000f8d5dd9ad', N'0e40982d-28e3-a007-c975-000f8c9338a3', 978, 1, CAST(120.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6cabbed7-3d33-ce02-7bcb-000f8d5ddd2f', N'7c215999-b075-8407-ad45-000f8c933154', 840, 1, CAST(25.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'63b99539-0ae9-cf02-7bcb-000f8d5ddd2f', N'7c215999-b075-8407-ad45-000f8c933154', 978, 1, CAST(15.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a1448ca9-179f-e002-7d63-000f8d5de079', N'b7f75d9a-1f3c-8307-ad45-000f8c933154', 840, 1, CAST(199.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'be603060-9945-e102-a46d-000f8d5de079', N'b7f75d9a-1f3c-8307-ad45-000f8c933154', 978, 1, CAST(189.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'951786f4-c47c-e202-a46d-000f8d5de079', N'd38ce263-8c83-9c07-c975-000f8c9338a3', 840, 1, CAST(199.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c1b1eafa-f64c-e302-a46d-000f8d5de079', N'd38ce263-8c83-9c07-c975-000f8c9338a3', 978, 1, CAST(149.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'db1d8994-1e34-fa02-fa26-000f8d5df5cd', N'de4e4ecd-0a26-7307-53dc-000e540c8755', 840, 1, CAST(111.00000 AS Decimal(18, 5)), CAST(121.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ae07e1b9-2bd2-fb02-fa26-000f8d5df5cd', N'de4e4ecd-0a26-7307-53dc-000e540c8755', 978, 1, CAST(101.00000 AS Decimal(18, 5)), CAST(121.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'608e3461-60d7-fc02-fa26-000f8d5df5cd', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 156, 1, CAST(990.00000 AS Decimal(18, 5)), CAST(1190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd221dec7-044f-fd02-fa26-000f8d5df5cd', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 840, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'034d7646-ed9f-fe02-fa26-000f8d5df5cd', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 978, 1, CAST(38.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a10536c7-307b-5d03-f7a7-000f8d5e02fe', N'521b0a6a-91a3-8e07-0193-000e540c8757', 840, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e3ce00b6-f0a9-5e03-f7a7-000f8d5e02fe', N'521b0a6a-91a3-8e07-0193-000e540c8757', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1cbccd05-a86c-5f03-f7a7-000f8d5e02fe', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 156, 1, CAST(2000.00000 AS Decimal(18, 5)), CAST(2200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f633be61-6fb6-6003-f7a7-000f8d5e02fe', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 840, 1, CAST(49.00000 AS Decimal(18, 5)), CAST(75.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c2803e97-7539-6103-f7a7-000f8d5e02fe', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 978, 1, CAST(39.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3177045f-6069-7a03-5553-000f8d5e06c6', N'69515548-1c2d-5707-7f16-000e540c8753', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7bcfe6da-93c6-7b03-5553-000f8d5e06c6', N'69515548-1c2d-5707-7f16-000e540c8753', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5819f966-9840-7c03-7c69-000f8d5e06c6', N'a2bdf0a5-73c2-475d-b259-922257f44631', 156, 1, CAST(900.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'70c66ad5-4c4f-7d03-7c69-000f8d5e06c6', N'a2bdf0a5-73c2-475d-b259-922257f44631', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6412c3ed-4ff8-7e03-7c69-000f8d5e06c6', N'a2bdf0a5-73c2-475d-b259-922257f44631', 978, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'45320dc5-261d-b703-61ef-000f8d5e13d1', N'f28f5cb0-ac15-d107-4763-000e540c875b', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a0517dba-b837-b803-61ef-000f8d5e13d1', N'f28f5cb0-ac15-d107-4763-000e540c875b', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(6.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ee714045-347f-b903-61ef-000f8d5e13d1', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 156, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ace93e8c-974e-ba03-891c-000f8d5e13d1', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e76a565d-f8a1-bb03-891c-000f8d5e13d1', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(6.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b6578070-fc6d-d603-d4e9-000f8d5e1872', N'5c484d3c-00df-f707-068d-000e540c875e', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f092fc47-cbea-d703-d4e9-000f8d5e1872', N'5c484d3c-00df-f707-068d-000e540c875e', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f3d663ac-e650-d803-d4e9-000f8d5e1872', N'016f4014-3566-4fa2-a302-2ae667761d27', 156, 1, CAST(2900.00000 AS Decimal(18, 5)), CAST(3000.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4563f1c4-4203-d903-d4e9-000f8d5e1872', N'016f4014-3566-4fa2-a302-2ae667761d27', 840, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7a30e39f-7f5c-da03-d4e9-000f8d5e1872', N'016f4014-3566-4fa2-a302-2ae667761d27', 978, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eae5401b-d6c4-1204-bd6c-000f8d5e2206', N'711fb309-427c-6407-4268-000e540c8754', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'75665f1f-75be-1304-bd6c-000f8d5e2206', N'711fb309-427c-6407-4268-000e540c8754', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'65ad6b8f-ea72-1404-bd6c-000f8d5e2206', N'0b2f7e63-52b6-465f-b144-098e2507c678', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ff19d428-a1b9-1504-bd6c-000f8d5e2206', N'0b2f7e63-52b6-465f-b144-098e2507c678', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'01b4558d-8f77-1604-e483-000f8d5e2206', N'0b2f7e63-52b6-465f-b144-098e2507c678', 156, 1, CAST(800.00000 AS Decimal(18, 5)), CAST(850.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2c15a4a1-cc3a-1704-e483-000f8d5e2206', N'8fda8d52-4da9-6d07-deab-000e540c8754', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c6141c57-00ed-1804-e483-000f8d5e2206', N'8fda8d52-4da9-6d07-deab-000e540c8754', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'46aa2c40-5b1b-1904-e483-000f8d5e2206', N'00575ef8-b936-485c-ac53-0096f50a54b2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9a7dea40-1d3a-1a04-e483-000f8d5e2206', N'00575ef8-b936-485c-ac53-0096f50a54b2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'453147c5-d579-1b04-e483-000f8d5e2206', N'00575ef8-b936-485c-ac53-0096f50a54b2', 156, 1, CAST(800.00000 AS Decimal(18, 5)), CAST(850.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4a47dcef-79ca-1c04-e483-000f8d5e2206', N'1ae2ea56-ff9b-c507-8410-000e540c875a', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2b93ac6c-716f-1d04-0b96-000f8d5e2207', N'1ae2ea56-ff9b-c507-8410-000e540c875a', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1c90b5ff-6b2d-1e04-0b96-000f8d5e2207', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8ffb65f2-c995-1f04-0b96-000f8d5e2207', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'19f53585-5d47-2004-0b96-000f8d5e2207', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 156, 1, CAST(800.00000 AS Decimal(18, 5)), CAST(850.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a2a7ed5c-3bea-2104-0b96-000f8d5e2207', N'8444e993-3a4d-c807-d231-000e540c875a', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0e999cfc-c6ec-2204-0b96-000f8d5e2207', N'8444e993-3a4d-c807-d231-000e540c875a', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'56611595-4007-2304-0b96-000f8d5e2207', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7ef7d6b8-641a-2404-32b1-000f8d5e2207', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e48277f9-4066-2504-32b1-000f8d5e2207', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 156, 1, CAST(800.00000 AS Decimal(18, 5)), CAST(850.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'29c143ad-6b56-2604-32b1-000f8d5e2207', N'1c7df79a-006b-dd07-31c6-000e540c875c', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'39376c82-956d-2704-32b1-000f8d5e2207', N'1c7df79a-006b-dd07-31c6-000e540c875c', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f6a95ecc-19a7-2804-32b1-000f8d5e2207', N'2f1157cb-f677-49f7-812d-0323ecedf679', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6213955f-cea6-2904-32b1-000f8d5e2207', N'2f1157cb-f677-49f7-812d-0323ecedf679', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd856e57e-4a87-2a04-32b1-000f8d5e2207', N'2f1157cb-f677-49f7-812d-0323ecedf679', 156, 1, CAST(800.00000 AS Decimal(18, 5)), CAST(850.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a3d3494e-3a88-7004-d672-000f8d5e26e3', N'd3181796-ad1b-2d07-4aba-000e540c8750', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1133a6ed-578d-7104-d672-000f8d5e26e3', N'd3181796-ad1b-2d07-4aba-000e540c8750', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8a4b57a7-32d8-7204-d672-000f8d5e26e3', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5c2191a6-316d-7304-fd84-000f8d5e26e3', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a3084c07-7833-7404-fd84-000f8d5e26e3', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'65590d8e-4885-7504-fd84-000f8d5e26e3', N'3482f76f-23e0-4b07-94b2-000e540c8752', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3a3e6452-194e-7604-fd84-000f8d5e26e3', N'3482f76f-23e0-4b07-94b2-000e540c8752', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f854e7e2-7953-7704-fd84-000f8d5e26e3', N'7209d388-381c-466a-9afc-80b3989a38c0', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'030ea4fe-bd76-7804-fd84-000f8d5e26e3', N'7209d388-381c-466a-9afc-80b3989a38c0', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7941e976-8ce0-7904-fd84-000f8d5e26e3', N'7209d388-381c-466a-9afc-80b3989a38c0', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'063e67dc-2f76-7a04-248a-000f8d5e26e4', N'cb5b510c-5e2a-7f07-172f-000e540c8756', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'73f22a47-32c0-7b04-248a-000f8d5e26e4', N'cb5b510c-5e2a-7f07-172f-000e540c8756', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'051cd93d-d996-7c04-248a-000f8d5e26e4', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f1b1b402-f96d-7d04-248a-000f8d5e26e4', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'93d5b180-1025-7e04-248a-000f8d5e26e4', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 156, 1, CAST(1200.00000 AS Decimal(18, 5)), CAST(1200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e71e4900-5ef9-7f04-248a-000f8d5e26e4', N'918084c3-0504-8507-6550-000e540c8756', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7f3c9fb0-b6ba-8004-248a-000f8d5e26e4', N'918084c3-0504-8507-6550-000e540c8756', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cbf42bab-a86a-8104-4b98-000f8d5e26e4', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8149fb8c-29ce-8204-4b98-000f8d5e26e4', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'44a6151c-a25f-8304-4b98-000f8d5e26e4', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'03664d9f-b61a-8404-4b98-000f8d5e26e4', N'e48f1816-88f9-ac07-fd6a-000e540c8758', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9793bc58-5db7-8504-4b98-000f8d5e26e4', N'e48f1816-88f9-ac07-fd6a-000e540c8758', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2840301d-5634-8604-4b98-000f8d5e26e4', N'15519388-9bff-454f-b0c1-93ae7c852e51', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9b461a76-fc27-8704-4b98-000f8d5e26e4', N'15519388-9bff-454f-b0c1-93ae7c852e51', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'29fa936b-940c-8804-4b98-000f8d5e26e4', N'15519388-9bff-454f-b0c1-93ae7c852e51', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'15319acf-2e80-8904-72fc-000f8d5e26e4', N'e6375062-8752-af07-247b-000e540c8759', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3f6408d6-371b-8a04-72fc-000f8d5e26e4', N'e6375062-8752-af07-247b-000e540c8759', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fcb7a825-2c04-8b04-72fc-000f8d5e26e4', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fd6bf170-707d-8c04-72fc-000f8d5e26e4', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'41bb7581-4367-8d04-72fc-000f8d5e26e4', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e419ad9e-44df-8e04-72fc-000f8d5e26e4', N'263b8eff-de92-f407-df7c-000e540c875d', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2a3d7fb3-0fde-8f04-72fc-000f8d5e26e4', N'263b8eff-de92-f407-df7c-000e540c875d', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cb206f66-9a9a-9004-99d2-000f8d5e26e4', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'624ec129-e8b9-9104-99d2-000f8d5e26e4', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'58ea10a2-0314-9204-99d2-000f8d5e26e4', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cfbdf78a-2849-1405-81fc-000f8d5e4bb3', N'114bdb2b-cfec-8907-ad45-000f8c933154', 840, 1, CAST(200.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e75655a2-efba-1505-81fc-000f8d5e4bb3', N'114bdb2b-cfec-8907-ad45-000f8c933154', 978, 1, CAST(180.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'50411aa1-e777-1605-a920-000f8d5e4bb3', N'1612a3a5-52ca-a207-c975-000f8c9338a3', 840, 1, CAST(150.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ffaea306-1672-1705-a920-000f8d5e4bb3', N'1612a3a5-52ca-a207-c975-000f8c9338a3', 978, 1, CAST(120.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'de612660-3514-6205-a390-000f8d5e5f42', N'242cc81a-2043-7607-7aed-000e540c8755', 840, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'68051db2-5eab-6305-a390-000f8d5e5f42', N'242cc81a-2043-7607-7aed-000e540c8755', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6a40f579-ec74-6405-caa7-000f8d5e5f42', N'21890331-11bc-40af-9cec-2c146abe638d', 156, 1, CAST(3300.00000 AS Decimal(18, 5)), CAST(3400.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'718864c5-c2a3-6505-caa7-000f8d5e5f42', N'21890331-11bc-40af-9cec-2c146abe638d', 840, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'20e3f315-784a-6605-caa7-000f8d5e5f42', N'21890331-11bc-40af-9cec-2c146abe638d', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1bc49e1f-3eaa-f50e-4517-000f8d5edc87', N'18f9055f-7be5-8607-ad45-000f8c933154', 840, 1, CAST(99.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'daa3a3d6-c2fb-f60e-4517-000f8d5edc87', N'18f9055f-7be5-8607-ad45-000f8c933154', 978, 1, CAST(120.00000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0451829b-edf4-f70e-4517-000f8d5edc87', N'693dcaca-6f7c-9f07-c975-000f8c9338a3', 840, 1, CAST(99.99000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8e3446a4-08da-f80e-6c2d-000f8d5edc87', N'693dcaca-6f7c-9f07-c975-000f8c9338a3', 978, 1, CAST(89.99000 AS Decimal(18, 5)), NULL, NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9d5429a3-af52-b613-6407-000f8d5f3546', N'799e979b-9f63-8807-b372-000e540c8756', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(137.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4623b4fd-8991-b713-6407-000f8d5f3546', N'799e979b-9f63-8807-b372-000e540c8756', 978, 1, CAST(82.00000 AS Decimal(18, 5)), CAST(92.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7be98dfe-6133-b813-6407-000f8d5f3546', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 156, 1, CAST(2800.00000 AS Decimal(18, 5)), CAST(3100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5b434112-22ee-b913-6407-000f8d5f3546', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 840, 1, CAST(98.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'31aa061b-6977-ba13-8b1a-000f8d5f3546', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5a5c8630-4fcc-d813-a40f-000f8d5f41df', N'0e0e8525-8316-a007-3a17-000e540c8758', 840, 1, CAST(210.00000 AS Decimal(18, 5)), CAST(230.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'db421045-e1e6-d913-a40f-000f8d5f41df', N'0e0e8525-8316-a007-3a17-000e540c8758', 978, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e13f91d3-e9ec-da13-cb26-000f8d5f41df', N'9e252cec-7869-430d-a717-2bd944b7319e', 156, 1, CAST(2800.00000 AS Decimal(18, 5)), CAST(2900.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aa0980c2-557d-db13-cb26-000f8d5f41df', N'9e252cec-7869-430d-a717-2bd944b7319e', 840, 1, CAST(210.00000 AS Decimal(18, 5)), CAST(230.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cefe9760-ed60-dc13-cb26-000f8d5f41df', N'9e252cec-7869-430d-a717-2bd944b7319e', 978, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'582cf2c3-f36d-d11d-7fbd-000f8d5fed7b', N'1a3514d9-1096-a307-6128-000e540c8758', 840, 1, CAST(250.00000 AS Decimal(18, 5)), CAST(260.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b0b93664-dcc1-d21d-7fbd-000f8d5fed7b', N'1a3514d9-1096-a307-6128-000e540c8758', 978, 1, CAST(220.00000 AS Decimal(18, 5)), CAST(230.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c4d03f8a-98c5-d31d-7fbd-000f8d5fed7b', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 156, 1, CAST(3200.00000 AS Decimal(18, 5)), CAST(3300.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'73749173-3a22-d41d-7fbd-000f8d5fed7b', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(119.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f9af0d54-54e4-d51d-7fbd-000f8d5fed7b', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e3edfe6f-7d12-f31d-aa58-000f8d5ffbf4', N'22e5bceb-7706-bf07-35ef-000e540c875a', 840, 1, CAST(250.00000 AS Decimal(18, 5)), CAST(280.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3f290fb3-1bfa-f41d-d16e-000f8d5ffbf4', N'22e5bceb-7706-bf07-35ef-000e540c875a', 978, 1, CAST(225.00000 AS Decimal(18, 5)), CAST(235.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'faf1a9b4-4ecb-f51d-d16e-000f8d5ffbf4', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 156, 1, CAST(3250.00000 AS Decimal(18, 5)), CAST(3350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0ac78d9b-6039-f61d-d16e-000f8d5ffbf4', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a51aa239-4902-f71d-d16e-000f8d5ffbf4', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 978, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f76629b5-e9fd-161e-cf46-000f8d60080a', N'6bd6dd90-2ae3-8207-3e40-000e540c8756', 840, 1, CAST(55.00000 AS Decimal(18, 5)), CAST(650.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c3d5b4a5-ed78-171e-cf46-000f8d60080a', N'6bd6dd90-2ae3-8207-3e40-000e540c8756', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'72aa3a3b-a39d-181e-f65d-000f8d60080a', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 156, 1, CAST(5000.00000 AS Decimal(18, 5)), CAST(5400.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2b66e802-3429-191e-f65d-000f8d60080a', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 840, 1, CAST(55.00000 AS Decimal(18, 5)), CAST(56.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7d2681d1-c7a5-1a1e-f65d-000f8d60080a', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0fa374d7-ea6d-3c23-6cf6-000f8d60654e', N'33df410e-74d4-141e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd3ff5766-d6ae-3d23-6cf6-000f8d60654e', N'33df410e-74d4-141e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1a6bea1f-f18d-3e23-6cf6-000f8d60654e', N'33df410e-74d4-141e-177d-000d990b9dd9', 156, 1, CAST(1350.00000 AS Decimal(18, 5)), CAST(1490.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'78b3a20d-a5b4-3f23-6cf6-000f8d60654e', N'8378eec1-76e7-1807-3d6e-000e540c874d', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e23df318-a4ca-4023-6cf6-000f8d60654e', N'8378eec1-76e7-1807-3d6e-000e540c874d', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'deedd8b9-b743-4123-9408-000f8d60654e', N'b85c097b-a88c-151e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c5c43dc1-771e-4223-9408-000f8d60654e', N'b85c097b-a88c-151e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cf9b3a78-0175-4323-9408-000f8d60654e', N'b85c097b-a88c-151e-177d-000d990b9dd9', 156, 1, CAST(1350.00000 AS Decimal(18, 5)), CAST(1490.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b162ef4a-f336-4423-9408-000f8d60654e', N'a4355e57-2c62-1b07-3946-000e540c874f', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3d5bbf70-e54f-4523-9408-000f8d60654e', N'a4355e57-2c62-1b07-3946-000e540c874f', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7b97649a-32fc-4623-9408-000f8d60654e', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'735d2028-3df0-4723-bb23-000f8d60654e', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1330879b-2700-4823-bb23-000f8d60654e', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 156, 1, CAST(1350.00000 AS Decimal(18, 5)), CAST(1490.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'949d492c-5201-4923-bb23-000f8d60654e', N'27151e92-f075-1e07-6056-000e540c874f', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f50a0f4b-6ab6-4a23-bb23-000f8d60654e', N'27151e92-f075-1e07-6056-000e540c874f', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'96b5c1c8-682f-4b23-bb23-000f8d60654e', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'edd98465-8ff8-4c23-bb23-000f8d60654e', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'34c9ada4-d601-4d23-bb23-000f8d60654e', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 156, 1, CAST(1350.00000 AS Decimal(18, 5)), CAST(1490.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ce1bd715-aeca-4e23-e235-000f8d60654e', N'c2e13537-3194-2107-8767-000e540c874f', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c3b1b3d7-f749-4f23-e235-000f8d60654e', N'c2e13537-3194-2107-8767-000e540c874f', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'61d9db78-ce26-8723-43b5-000f8d608efd', N'9a2f0986-e2e9-e507-ce08-000e540c875c', 840, 1, CAST(230.00000 AS Decimal(18, 5)), CAST(250.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a9961b61-5292-8823-43b5-000f8d608efd', N'9a2f0986-e2e9-e507-ce08-000e540c875c', 978, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(210.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0bfa5587-712e-8923-43b5-000f8d608efd', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 156, 1, CAST(3900.00000 AS Decimal(18, 5)), CAST(4100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9899aa98-f8b7-8a23-43b5-000f8d608efd', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 840, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(210.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'00ea4eab-a09a-8b23-43b5-000f8d608efd', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 978, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(210.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cece06ad-9263-5718-bace-00100bb26b63', N'1071bb2e-bec5-9d07-c975-000f8c9338a3', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8ff64a2e-48d1-bc18-6408-00100bb26d6e', N'1071bb2e-bec5-9d07-c975-000f8c9338a3', 840, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2d1cb6a9-948b-8724-17fb-00100e41ec31', N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', 156, 1, CAST(1250.00000 AS Decimal(18, 5)), CAST(1350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'798698a0-a9e3-8824-17fb-00100e41ec31', N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8852e16c-48ba-8924-17fb-00100e41ec31', N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', 978, 1, CAST(25.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd1cbc2e9-f492-8a24-17fb-00100e41ec31', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 156, 1, CAST(1250.00000 AS Decimal(18, 5)), CAST(1350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bb874177-72b9-8b24-17fb-00100e41ec31', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e03917e4-160a-8c24-3f0b-00100e41ec31', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 978, 1, CAST(25.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1b7be169-a900-e024-c1de-00100e41f76f', N'08b41186-e2c8-b307-729c-000e540c8759', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(165.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd5ca83b9-b9ee-e124-c1de-00100e41f76f', N'08b41186-e2c8-b307-729c-000e540c8759', 978, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1c76de3b-512b-e224-c1de-00100e41f76f', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 156, 1, CAST(1250.00000 AS Decimal(18, 5)), CAST(1350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'001dff7c-ac12-e324-c1de-00100e41f76f', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(125.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4e39d3f8-641d-e424-c1de-00100e41f76f', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 978, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6018e6d6-d00b-3925-c7dc-00100e4200f2', N'444d80ee-3f83-eb07-1c2a-000e540c875d', 840, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3257b80b-4991-3a25-c7dc-00100e4200f2', N'444d80ee-3f83-eb07-1c2a-000e540c875d', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1427f82a-15e8-3b25-c7dc-00100e4200f2', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 156, 1, CAST(1600.00000 AS Decimal(18, 5)), CAST(1700.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eb184b38-3b71-3c25-c7dc-00100e4200f2', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 840, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'11a0e318-25bc-3d25-c7dc-00100e4200f2', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd0c90daf-cc37-9125-d896-00100e420e4c', N'6cf52034-edb0-2a07-23a9-000e540c8750', 840, 1, CAST(33.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cca89e32-b5d4-9225-ffa8-00100e420e4c', N'6cf52034-edb0-2a07-23a9-000e540c8750', 978, 1, CAST(20.00000 AS Decimal(18, 5)), CAST(23.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ac777626-031a-9325-ffa8-00100e420e4c', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 156, 1, CAST(1000.00000 AS Decimal(18, 5)), CAST(1100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aec0c23c-a8dc-9425-ffa8-00100e420e4c', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(125.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1db62f1d-c795-9525-ffa8-00100e420e4c', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 978, 1, CAST(79.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6dd4509b-e7b9-e925-9854-00100e421a0d', N'2cd228d4-3249-d407-9584-000e540c875b', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'823bff99-2748-ea25-9854-00100e421a0d', N'2cd228d4-3249-d407-9584-000e540c875b', 978, 1, CAST(85.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'903e5aac-4c4e-eb25-9854-00100e421a0d', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 156, 1, CAST(850.00000 AS Decimal(18, 5)), CAST(900.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cb7251fd-8f09-ec25-9854-00100e421a0d', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2bd4fe1b-dc2d-ed25-9854-00100e421a0d', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 978, 1, CAST(85.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2882e13a-ed32-4226-38df-00100e42271e', N'8372b206-89cd-3d07-833e-000e540c8751', 840, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1bd045d0-7179-4326-38df-00100e42271e', N'8372b206-89cd-3d07-833e-000e540c8751', 978, 1, CAST(105.00000 AS Decimal(18, 5)), CAST(115.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b7903172-a25b-4426-38df-00100e42271e', N'97851de3-ea87-4780-809d-c0801758a765', 156, 1, CAST(1050.00000 AS Decimal(18, 5)), CAST(1150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6016ee21-d4e9-4526-38df-00100e42271e', N'97851de3-ea87-4780-809d-c0801758a765', 840, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'dca83e2b-96d1-4626-38df-00100e42271e', N'97851de3-ea87-4780-809d-c0801758a765', 978, 1, CAST(105.00000 AS Decimal(18, 5)), CAST(115.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'28d62f3f-10ec-9a26-4491-00100e422d95', N'6d595ac1-f1de-7907-a1fe-000e540c8755', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'135aebbc-a5f4-9b26-4491-00100e422d95', N'6d595ac1-f1de-7907-a1fe-000e540c8755', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fc005a8c-9c33-9c26-4491-00100e422d95', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 156, 1, CAST(1200.00000 AS Decimal(18, 5)), CAST(1300.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f509ff42-ac8a-9d26-4491-00100e422d95', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 840, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'56a55fa0-0aa6-9e26-6ba7-00100e422d95', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 978, 1, CAST(28.00000 AS Decimal(18, 5)), CAST(39.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e9a91ed2-c4e4-316a-fbe1-00100fa5db55', N'8c32729a-ce35-9300-839b-000ec7f0473c', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'88eb4e56-1e16-326a-bf34-00100fa5db56', N'8c32729a-ce35-9300-839b-000ec7f0473c', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'18e7cd18-8026-336a-bf34-00100fa5db56', N'0e3e6e43-ef56-9400-e4fb-000ec7f0473e', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'13913a1f-923b-346a-e641-00100fa5db56', N'0e3e6e43-ef56-9400-e4fb-000ec7f0473e', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'8321da62-565b-2f1b-c969-000d990ad30e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'2320adfb-e758-1607-dc45-000e540c870a', N'2e02e9d6-4957-1707-0912-000e540c874a', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'6cf52034-edb0-2a07-23a9-000e540c8750', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'6cf52034-edb0-2a07-23a9-000e540c8750', 9)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'070f8f60-c696-3c07-5c2e-000e540c8751', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'070f8f60-c696-3c07-5c2e-000e540c8751', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'8372b206-89cd-3d07-833e-000e540c8751', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'a8a2fce8-7098-4307-d15f-000e540c8751', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'a8a2fce8-7098-4307-d15f-000e540c8751', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'07e521e2-fd4d-4a07-4691-000e540c8752', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'78015c64-5e60-4e07-e2d3-000e540c8752', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'78015c64-5e60-4e07-e2d3-000e540c8752', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'78015c64-5e60-4e07-e2d3-000e540c8752', 11)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', N'69515548-1c2d-5707-7f16-000e540c8753', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', N'69515548-1c2d-5707-7f16-000e540c8753', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'db6a1860-c6f2-6007-f447-000e540c8753', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'db6a1860-c6f2-6007-f447-000e540c8753', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'113fd89b-8382-0407-738d-000e540c8704', N'de4e4ecd-0a26-7307-53dc-000e540c8755', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', N'de4e4ecd-0a26-7307-53dc-000e540c8755', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'242cc81a-2043-7607-7aed-000e540c8755', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'242cc81a-2043-7607-7aed-000e540c8755', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'6d595ac1-f1de-7907-a1fe-000e540c8755', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'6bd6dd90-2ae3-8207-3e40-000e540c8756', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'6bd6dd90-2ae3-8207-3e40-000e540c8756', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'6bd6dd90-2ae3-8207-3e40-000e540c8756', 10)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'799e979b-9f63-8807-b372-000e540c8756', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', N'521b0a6a-91a3-8e07-0193-000e540c8757', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'0e0e8525-8316-a007-3a17-000e540c8758', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'0e0e8525-8316-a007-3a17-000e540c8758', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'1a3514d9-1096-a307-6128-000e540c8758', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'1a3514d9-1096-a307-6128-000e540c8758', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'53340d39-719e-a607-8838-000e540c8758', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'53340d39-719e-a607-8838-000e540c8758', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'3c8ec439-37b2-b207-4b8b-000e540c8759', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'3c8ec439-37b2-b207-4b8b-000e540c8759', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'08b41186-e2c8-b307-729c-000e540c8759', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'ffc05ecc-c3fe-b907-c0bd-000e540c8759', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'22e5bceb-7706-bf07-35ef-000e540c875a', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6a53eea4-f7cf-1107-6714-000e540c870a', N'22e5bceb-7706-bf07-35ef-000e540c875a', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'111ca5f1-b931-0907-55a0-000e540c8709', N'f28f5cb0-ac15-d107-4763-000e540c875b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'2cd228d4-3249-d407-9584-000e540c875b', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'2cd228d4-3249-d407-9584-000e540c875b', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'8f1ae831-02db-e007-58d7-000e540c875c', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'd6a63c04-99b3-e107-7fe7-000e540c875c', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'd6a63c04-99b3-e107-7fe7-000e540c875c', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'9a2f0986-e2e9-e507-ce08-000e540c875c', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'9a2f0986-e2e9-e507-ce08-000e540c875c', 12)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'444d80ee-3f83-eb07-1c2a-000e540c875d', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', N'ac836d65-8258-ee07-6a4b-000e540c875d', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', N'ac836d65-8258-ee07-6a4b-000e540c875d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'195a5f96-04a5-ef07-6a4b-000e540c875d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'195a5f96-04a5-ef07-6a4b-000e540c875d', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'103e1cd3-f009-f307-b86c-000e540c875d', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', N'5c484d3c-00df-f707-068d-000e540c875e', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', N'5c484d3c-00df-f707-068d-000e540c875e', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', N'c060e8a9-e9e6-fa07-2d9e-000e540c875e', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', N'c060e8a9-e9e6-fa07-2d9e-000e540c875e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'c060e8a9-e9e6-fa07-2d9e-000e540c875e', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e9e268c2-f128-df00-40af-000ec7f090d9', N'8c32729a-ce35-9300-839b-000ec7f0473c', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'8c32729a-ce35-9300-839b-000ec7f0473c', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'0e3e6e43-ef56-9400-e4fb-000ec7f0473e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'f70ce676-30fa-fc00-c17f-000ec7f0a505', N'0e3e6e43-ef56-9400-e4fb-000ec7f0473e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'd3408dec-1ec7-6d02-7838-000ecb3fa721', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'd3408dec-1ec7-6d02-7838-000ecb3fa721', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'33dfed8d-b968-7900-3a53-000ecb44a3bf', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'33dfed8d-b968-7900-3a53-000ecb44a3bf', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'4d5e3e26-83bd-8507-ad45-000f8c933154', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'0b2d26c5-3137-8707-ad45-000f8c933154', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'b1565d2c-7452-9a07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'b1565d2c-7452-9a07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'1836c704-bb78-9b07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'1836c704-bb78-9b07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'd38ce263-8c83-9c07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'd38ce263-8c83-9c07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'1071bb2e-bec5-9d07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'1071bb2e-bec5-9d07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'98f6b307-a596-9e07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'98f6b307-a596-9e07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'693dcaca-6f7c-9f07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'693dcaca-6f7c-9f07-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'0e40982d-28e3-a007-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'0e40982d-28e3-a007-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'516f49a3-e83e-a107-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'516f49a3-e83e-a107-c975-000f8c9338a3', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 10)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'016f4014-3566-4fa2-a302-2ae667761d27', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'016f4014-3566-4fa2-a302-2ae667761d27', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'9e252cec-7869-430d-a717-2bd944b7319e', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'9e252cec-7869-430d-a717-2bd944b7319e', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'21890331-11bc-40af-9cec-2c146abe638d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'21890331-11bc-40af-9cec-2c146abe638d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'44ff3d5b-f560-4b46-8f7b-402d0717d0a6', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'a2bdf0a5-73c2-475d-b259-922257f44631', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'a2bdf0a5-73c2-475d-b259-922257f44631', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'e9fec841-7b25-4666-9259-a75a90573f5b', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'e9fec841-7b25-4666-9259-a75a90573f5b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'bc2b5ec1-61c5-4469-b48f-b4954824964a', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'bc2b5ec1-61c5-4469-b48f-b4954824964a', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'97851de3-ea87-4780-809d-c0801758a765', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 9)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 12)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'1635397e-421b-41a6-a396-c509425a392b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'1635397e-421b-41a6-a396-c509425a392b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'1635397e-421b-41a6-a396-c509425a392b', 11)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'f7728012-2fbf-4222-8a6f-c551419ce068', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'f7728012-2fbf-4222-8a6f-c551419ce068', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'f6529c64-6baf-426c-9414-cb0e70d9e589', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'5baddd31-b9ae-466d-90e8-cc06a8935de1', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'4b7dbec8-49db-4c99-80f9-f09d206e1604', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'71c787e3-d779-492d-9700-fbedf6353093', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'71c787e3-d779-492d-9700-fbedf6353093', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 9)
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'113fd89b-8382-0407-738d-000e540c8704', 9, N'Games', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'113fd89b-8382-0407-738d-000e540c8704', 12, N'Jeux vidéos', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', 9, N'Shirts', N'Dress Shirts', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', 12, N'Chemises', N'Chemises', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', 9, N'watches', N'<p>Dress watches</p>', N'<p>Dress watches</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', 12, N'Montres', N'<p>Montres classiques</p>', N'<p>Montres classiques</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'111ca5f1-b931-0907-55a0-000e540c8709', 9, N'Books', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'111ca5f1-b931-0907-55a0-000e540c8709', 12, N'Livres', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', 9, N'Software', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', 12, N'Software', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', 9, N'Home Products', N'Home Products', N'Home Products')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', 12, N'Produits pour la maison', N'Description courte catégorie Produits pour la maison', N'Description courte catégorie Produits pour la maison')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', 9, N'Downloads', N'Downloads (books, software, games, etc.)', N'Downloads (books, software, games, etc.)')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', 12, N'Téléchargements', N'Téléchargements de jeux, livres et logiciels', N'Téléchargements de jeux, livres et logiciels')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', 9, N'Accessories', N'<p>Watches</p>', N'<p>Watches</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', 12, N'Accessoire', N'<p>Description courte cat&eacute;gorie Montres</p>', N'<p>Description longue cat&eacute;gorie Montres</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'6a53eea4-f7cf-1107-6714-000e540c870a', 9, N'Sporting Goods', N'Sporting Goods', N'Sporting Goods')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', 9, N'Men''s Clothes', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', 12, N'Vêtement pour hommes', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', 9, N'Men''s Fragrances', N'Men''s Fragrances', N'Men''s Fragrances')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', 12, N'Parfums pour Homme', N'Parfums pour Homme', N'Parfums pour Homme')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'2320adfb-e758-1607-dc45-000e540c870a', 9, N'Shoes', N'Shoes', N'Shoes')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e9e268c2-f128-df00-40af-000ec7f090d9', 9, N'Miscellaneous', N'<p>Miscellaneous</p>', N'<p>Miscellaneous</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e9e268c2-f128-df00-40af-000ec7f090d9', 12, N'Divers', N'<p>Divers</p>', N'<p>Divers</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'f70ce676-30fa-fc00-c17f-000ec7f0a505', 9, N'Miscellaneous', N'<p>Miscellaneous</p>', N'<p>Miscellaneous</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'f70ce676-30fa-fc00-c17f-000ec7f0a505', 12, N'Divers', N'<p>Divers</p>', N'<p>Divers</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', 9, N'Games', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', 12, N'Jeux vidéos', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', 9, N'Shirts', N'Dress Shirts', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', 12, N'Chemises', N'Chemises', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', 9, N'Dress watches', N'Dress watches', N'Dress watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', 12, N'Montres classiques', N'Montres classiques', N'Montres classiques')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', 9, N'Sport watches', N'Sport watches', N'Sport watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', 9, N'Books', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', 12, N'Livres', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', 9, N'Sport Sunglasses', N'Sport Sunglasses', N'Sport Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', 12, N'Lunettes de sport', N'Lunettes de sport', N'Lunettes de sport')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', 9, N'Software', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', 12, N'Software', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', 9, N'Home Products', N'Home Products', N'Home Products')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', 12, N'Produits pour la maison', N'Description courte catégorie Produits pour la maison', N'Description courte catégorie Produits pour la maison')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 9, N'Downloads', N'Downloads (books, software, games, etc.)', N'Downloads (books, software, games, etc.)')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 12, N'Téléchargements', N'Téléchargements de jeux, livres et logiciels', N'Téléchargements de jeux, livres et logiciels')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', 9, N'Watches', N'Watches', N'Watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', 12, N'Montres', N'Description courte catégorie Montres', N'Description longue catégorie Montres')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 9, N'Sunglasses', N'Sunglasses', N'Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 12, N'Lunettes de soleil', N'Description courte catégorie Lunettes de soleil', N'Description longue catégorie Lunettes de soleil')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', 9, N'Sporting Goods', N'Sporting Goods', N'Sporting Goods')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', 9, N'City Sunglasses', N'City Sunglasses', N'City Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', 9, N'Men''s Clothes', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', 12, N'Vêtement pour hommes', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', 9, N'Men''s Fragrances', N'<p>Men''s Fragrances</p>', N'<p>Men''s Fragrances</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', 12, N'Parfums pour Homme', N'<p>Parfums pour Homme</p>', N'<p>Parfums pour Homme</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', 9, N'Shoes', N'Shoes', N'Shoes')
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'72dee6db-9c56-0c07-a3c1-000e540c8709', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'4e4a3acd-b389-0d07-f1e2-000e540c8709', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 3)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'52a7ecab-d131-0f07-18f2-000e540c870a', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'10aba4c8-0c38-1307-8e24-000e540c870a', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'7d4ff066-0932-1407-b535-000e540c870a', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 4)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'721f6fa4-cd00-1507-b535-000e540c870a', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 6)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'f70ce676-30fa-fc00-c17f-000ec7f0a505', N'ee1fc4e8-d0ac-0807-2e8f-000e540c8709', 5)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'113fd89b-8382-0407-738d-000e540c8704', N'4e4a3acd-b389-0d07-f1e2-000e540c8709', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'111ca5f1-b931-0907-55a0-000e540c8709', N'4e4a3acd-b389-0d07-f1e2-000e540c8709', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'99b84a8b-f84a-0b07-7cb0-000e540c8709', N'4e4a3acd-b389-0d07-f1e2-000e540c8709', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'd1fb13b5-7fa9-0607-077e-000e540c8709', N'52a7ecab-d131-0f07-18f2-000e540c870a', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'08c967e5-5b87-0507-b95d-000e540c8708', N'10aba4c8-0c38-1307-8e24-000e540c870a', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'6a53eea4-f7cf-1107-6714-000e540c870a', N'10aba4c8-0c38-1307-8e24-000e540c870a', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'2320adfb-e758-1607-dc45-000e540c870a', N'10aba4c8-0c38-1307-8e24-000e540c870a', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'e9e268c2-f128-df00-40af-000ec7f090d9', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 7)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 3)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 6)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 4)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 5)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'18d1be81-d944-46ae-be10-c2126c7aa79c', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', N'18d1be81-d944-46ae-be10-c2126c7aa79c', 0)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'18d1be81-d944-46ae-be10-c2126c7aa79c', 2)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'dfc05133-857d-5404-9616-000f8bdf2395', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', 0, 6)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'2f6e8d23-d1f2-f607-9c5d-000f8c727af6', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 1, 15)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'3ebaeef7-7efb-fd07-ae53-000f8c7281f5', N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 2, 15)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 2, 39)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'863e14ee-13c3-4a9a-97cc-2b2384e70845', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 0, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'3b41b916-adc8-492f-a6c3-363894f3ee18', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 1, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'a4d685c9-206f-4525-b259-4a2c21389574', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'cddde355-e651-47b6-87ca-845afeb43fb1', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', N'bcee6a24-2b82-495d-a772-23f1b706077c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'381a77f4-eef6-4e10-84e4-5e06168eb041', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 1, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'4499d369-9384-4074-bab1-adf1c417b337', 3, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'0038c753-40e0-473f-9383-7d0d08693adc', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'cddde355-e651-47b6-87ca-845afeb43fb1', 1, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'a7b0652a-2d4b-4968-b774-82667dfe5981', N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', N'4499d369-9384-4074-bab1-adf1c417b337', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'7f0edb45-a7c3-400a-a507-8e8705b15c33', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'4499d369-9384-4074-bab1-adf1c417b337', 1, 30)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'9500fdb3-b5fc-42e5-9162-b08cd827e17d', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 1, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'6bbf1767-74e9-422e-817b-dff0a40aec24', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 1, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'cddde355-e651-47b6-87ca-845afeb43fb1', 2, 30)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'cddde355-e651-47b6-87ca-845afeb43fb1', 3, 0)
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'33-34')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'59c23fbd-5421-4455-8845-33067f319c34', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'34-35')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'36-37')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'84e3d379-c577-4215-b57f-d45d66276b5f', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'M')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'fc4eaa3e-ad43-4f1e-abe4-50b3c39c51d9', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'N')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'4b6e4c59-61d2-4e52-b1b9-a256465846e5', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'R')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'68f3d6b5-a65f-43b6-a034-d8f74d736962', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'W')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'1d335dbd-36f0-4602-3a87-000f8bd1c78e', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'ml')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'6096d18a-ebfe-4455-9662-12251ae494ce', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'oz')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'Blue')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'Pink')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'40e962e7-d485-472b-9a5d-855722809e45', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'Purple')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'White')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'54daeec0-064a-4f4a-899d-8c62babb4cc5', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'White - Blue Stripes')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'996a9afb-a468-4650-9f86-d783be9140d3', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'15')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'd6f97035-3ac3-4426-9d09-23bd9c494d8f', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'15.5')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'16')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'4dfbc46f-d078-4999-9102-54e3261d0d5c', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'16.5')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'e7393b1b-34f6-4265-a5f7-657be29c4ef2', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'17')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'e1f4a471-600d-408b-a5dd-2070b09cdb80', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'Linux')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'41327fbd-a1a9-4e7f-8000-b0c929b66ea5', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'Mac OS')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'ffc22e24-d978-4252-9efe-9a48cb799921', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'Windows')
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'760e9e68-ac4f-306a-785f-00100fa5db2e', N'4ce4d083-11e3-2f6a-5151-00100fa5db2e', N'dfc05133-857d-5404-9616-000f8bdf2395', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'853b23c7-c02e-d303-86cd-000f8d5e1872', N'ebb0a4ba-4141-d203-86cd-000f8d5e1872', N'2f6e8d23-d1f2-f607-9c5d-000f8c727af6', NULL, NULL, NULL, NULL, N'ffc22e24-d978-4252-9efe-9a48cb799921', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5cbdb110-cd6f-d403-86cd-000f8d5e1872', N'ebb0a4ba-4141-d203-86cd-000f8d5e1872', N'3ebaeef7-7efb-fd07-ae53-000f8c7281f5', NULL, NULL, CAST(0x070058A5C8C0CF370B3C00 AS DateTimeOffset), NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'466dcc36-896c-7108-5edc-000f8c72d301', N'eed8a2e2-65fb-7008-5edc-000f8c72d301', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd5f10328-574f-a508-b04a-000f8c72d8b5', N'18e80de8-c2d2-a408-b04a-000f8c72d8b5', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'fa0800d9-2948-de08-e236-000f8c72e08a', N'd1230e53-93e4-dd08-e236-000f8c72e08a', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0095a01a-1d78-4609-2ca2-000f8c72e799', N'2994ec2a-ae86-4509-2ca2-000f8c72e799', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'259d1340-9737-7a09-e2ff-000f8c72eb32', N'21886544-3f59-7909-e2ff-000f8c72eb32', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'453779f3-a4d4-ae09-eab9-000f8c72efd5', N'f433442b-0dc0-ad09-eab9-000f8c72efd5', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0d2dd63b-08bf-160a-c4de-000f8c72f926', N'131914e2-afd1-150a-c4de-000f8c72f926', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'1d335dbd-36f0-4602-3a87-000f8bd1c78e', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'733c0244-7b75-4a0a-7cdf-000f8c72fdd1', N'cf8be317-229e-490a-7cdf-000f8c72fdd1', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'fe6201de-05cb-7e0a-2b21-000f8c73015c', N'672380b4-da51-7d0a-2b21-000f8c73015c', N'c80a8f3c-88fc-1a08-a7aa-000f8c7295dc', NULL, NULL, NULL, NULL, N'1d335dbd-36f0-4602-3a87-000f8bd1c78e', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2fc1c762-a36a-d503-86cd-000f8d5e1872', N'ebb0a4ba-4141-d203-86cd-000f8d5e1872', N'863e14ee-13c3-4a9a-97cc-2b2384e70845', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cdab32b5-e60b-6808-6dc0-000f8c72d300', N'b8d62c1a-261b-6708-6dc0-000f8c72d300', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'695be9b2-87e3-6b08-e996-000f8c72d300', N'9e8c21ff-44f7-6a08-e996-000f8c72d300', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8d01856e-d37d-6f08-10a4-000f8c72d301', N'23c465ec-2da6-6d08-10a4-000f8c72d301', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f4cfc3da-bb15-9c08-de9d-000f8c72d8b4', N'a58dfe1e-0b05-9b08-de9d-000f8c72d8b4', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a2a085af-3fb7-9f08-1d5a-000f8c72d8b5', N'94370729-ebcb-9e08-1d5a-000f8c72d8b5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ecefaf59-2543-a208-620d-000f8c72d8b5', N'555cdc5f-9e36-a108-620d-000f8c72d8b5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'45165b35-1a04-d608-45c0-000f8c72e08a', N'f22e3983-d4c1-d508-45c0-000f8c72e08a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3c80f468-de3c-db08-bb24-000f8c72e08a', N'500119b8-1208-da08-bb24-000f8c72e08a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cc4119cd-6bfd-3d09-2e86-000f8c72e798', N'2425da1a-a617-3c09-2e86-000f8c72e798', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'87d5f6d8-d1c0-4009-a3c4-000f8c72e798', N'e394c571-e8ce-3f09-a3c4-000f8c72e798', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0aeb3c2d-8258-4309-cad6-000f8c72e798', N'68dcd8c4-14c0-4209-cad6-000f8c72e798', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8a1c6bcc-0640-7109-f85d-000f8c72eb31', N'52e400f6-6128-7009-f85d-000f8c72eb31', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9d0fcb8a-d762-7409-6dbd-000f8c72eb32', N'64b8b0dc-0f98-7309-6dbd-000f8c72eb32', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dea7cc6e-2659-7709-94d3-000f8c72eb32', N'ac4d5736-24a8-7609-94d3-000f8c72eb32', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'409c3c33-43f7-a509-2769-000f8c72efd5', N'a854ad80-fd98-a409-2769-000f8c72efd5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e9ac4a85-7421-a809-75a2-000f8c72efd5', N'768944da-d0d4-a709-75a2-000f8c72efd5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b507f232-2fa4-ab09-c3f9-000f8c72efd5', N'72f259ad-9029-aa09-c3f9-000f8c72efd5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'17910f1f-980b-0d0a-fa39-000f8c72f925', N'cfadafb2-a436-0c0a-fa39-000f8c72f925', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'61b2284e-5cea-100a-377d-000f8c72f926', N'6f99f1d9-6910-0f0a-377d-000f8c72f926', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ca2a437b-959a-130a-769d-000f8c72f926', N'9ab6590d-e0a6-120a-769d-000f8c72f926', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'06e23107-97f8-410a-b979-000f8c72fdd0', N'73030882-ceeb-400a-b979-000f8c72fdd0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b19c274f-6ccc-440a-07a5-000f8c72fdd1', N'6fa750b4-d9da-430a-07a5-000f8c72fdd1', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'246e1773-8a47-470a-2eb3-000f8c72fdd1', N'5f3a62ba-d232-460a-2eb3-000f8c72fdd1', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'be9a7f51-5d60-750a-67aa-000f8c73015b', N'ea20e16a-b029-740a-67aa-000f8c73015b', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'55f002f2-40df-780a-b5df-000f8c73015b', N'0559928d-30b5-770a-b5df-000f8c73015b', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'20d10ecb-5049-7b0a-0402-000f8c73015c', N'db70c93d-a89d-7a0a-0402-000f8c73015c', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f8e632b0-4f3d-fa03-24dc-000f8d5e2204', N'6933bbe6-6885-f903-24dc-000f8d5e2204', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'30a73e1b-25c3-ff03-7316-000f8d5e2204', N'131f1677-2b84-fe03-7316-000f8d5e2204', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c3353acc-2fda-0404-e85b-000f8d5e2204', N'fc117891-87ed-0304-e85b-000f8d5e2204', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c789f07e-6eb7-0904-3688-000f8d5e2205', N'f19e6837-346a-0804-3688-000f8d5e2205', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9dac8e0d-fe06-0e04-84b6-000f8d5e2205', N'21d221cb-fe92-0d04-84b6-000f8d5e2205', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c2408dac-d16d-4e04-6f71-000f8d5e26df', N'b44e3679-f10f-4d04-6f71-000f8d5e26df', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'122edeff-50f4-5304-bda3-000f8d5e26df', N'7c268dab-0dad-5204-bda3-000f8d5e26df', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b053e26c-f96d-5804-32df-000f8d5e26e0', N'1a0448ce-2322-5704-32df-000f8d5e26e0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dd1d5f56-19a7-5d04-810c-000f8d5e26e0', N'6c2ced5a-b000-5c04-810c-000f8d5e26e0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3425aeb9-924b-6204-efa6-000f8d5e26e0', N'61c1135c-6180-6104-efa6-000f8d5e26e0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f14cf297-ab03-6704-3dd4-000f8d5e26e1', N'024773da-d158-6604-3dd4-000f8d5e26e1', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6c0a85a5-d0d3-6c04-b332-000f8d5e26e1', N'b671cc12-725c-6b04-b332-000f8d5e26e1', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'427ec052-662d-6908-c25a-000f8c72d300', N'b8d62c1a-261b-6708-6dc0-000f8c72d300', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'db1daf76-4b69-6c08-e996-000f8c72d300', N'9e8c21ff-44f7-6a08-e996-000f8c72d300', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'22012f8d-d05a-6e08-10a4-000f8c72d301', N'23c465ec-2da6-6d08-10a4-000f8c72d301', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'51c76d85-5aaf-9d08-1d5a-000f8c72d8b5', N'a58dfe1e-0b05-9b08-de9d-000f8c72d8b4', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1a1f624a-4168-a008-620d-000f8c72d8b5', N'94370729-ebcb-9e08-1d5a-000f8c72d8b5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bb908b6d-8329-a308-8934-000f8c72d8b5', N'555cdc5f-9e36-a108-620d-000f8c72d8b5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b40c8499-b275-d708-9401-000f8c72e08a', N'f22e3983-d4c1-d508-45c0-000f8c72e08a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'75d16684-c9a7-d908-9401-000f8c72e08a', N'704cbe53-402d-d808-9401-000f8c72e08a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bf4812b6-5f2d-dc08-e236-000f8c72e08a', N'500119b8-1208-da08-bb24-000f8c72e08a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'da8edb2d-2c4f-3e09-7cb2-000f8c72e798', N'2425da1a-a617-3c09-2e86-000f8c72e798', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ccb36110-baf9-4109-cad6-000f8c72e798', N'e394c571-e8ce-3f09-a3c4-000f8c72e798', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'fca8030f-27a0-4409-0566-000f8c72e799', N'68dcd8c4-14c0-4209-cad6-000f8c72e798', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6248d824-8d81-7209-4696-000f8c72eb32', N'52e400f6-6128-7009-f85d-000f8c72eb31', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'01609ef9-958f-7509-6dbd-000f8c72eb32', N'64b8b0dc-0f98-7309-6dbd-000f8c72eb32', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'da5fbdad-722d-7809-bbed-000f8c72eb32', N'ac4d5736-24a8-7609-94d3-000f8c72eb32', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'791a8c18-720a-a609-4e90-000f8c72efd5', N'a854ad80-fd98-a409-2769-000f8c72efd5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bdef1b9e-9e4e-a909-9cbc-000f8c72efd5', N'768944da-d0d4-a709-75a2-000f8c72efd5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9b99c708-4588-ac09-eab9-000f8c72efd5', N'72f259ad-9029-aa09-c3f9-000f8c72efd5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b59066dc-8f34-0e0a-377d-000f8c72f926', N'cfadafb2-a436-0c0a-fa39-000f8c72f925', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1b02fe24-2dcb-110a-769d-000f8c72f926', N'6f99f1d9-6910-0f0a-377d-000f8c72f926', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ed92b11a-8b55-140a-9dd1-000f8c72f926', N'9ab6590d-e0a6-120a-769d-000f8c72f926', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f7a4d08a-821a-420a-e08f-000f8c72fdd0', N'73030882-ceeb-400a-b979-000f8c72fdd0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cf93d8b6-c16c-450a-2eb3-000f8c72fdd1', N'6fa750b4-d9da-430a-07a5-000f8c72fdd1', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1849e3a0-2d5a-480a-55d1-000f8c72fdd1', N'5f3a62ba-d232-460a-2eb3-000f8c72fdd1', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd87a3c5a-0d83-760a-8ec0-000f8c73015b', N'ea20e16a-b029-740a-67aa-000f8c73015b', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4705479b-7e82-790a-dcf5-000f8c73015b', N'0559928d-30b5-770a-b5df-000f8c73015b', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c6e0602e-c0be-7c0a-0402-000f8c73015c', N'db70c93d-a89d-7a0a-0402-000f8c73015c', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'65b60b94-f7b0-f902-abeb-000f8d5df5cd', N'5f132da5-0f95-f802-abeb-000f8d5df5cd', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'373a5bce-c539-5c03-a96d-000f8d5e02fe', N'cd9e065d-df93-5b03-a96d-000f8d5e02fe', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c8f40b75-66ed-7903-0721-000f8d5e06c6', N'18c6208b-7a8e-7803-0721-000f8d5e06c6', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'305051b3-b0c9-b603-13c2-000f8d5e13d1', N'c8c5844f-179c-b503-13c2-000f8d5e13d1', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'da8a1aa0-0a27-2d23-fb90-000f8d60654b', N'3df6d799-8dac-2c23-fb90-000f8d60654b', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f8ad464c-004c-3123-70d8-000f8d60654c', N'8eb80906-042c-3023-70d8-000f8d60654c', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5c75687b-413a-3523-bf05-000f8d60654c', N'4e4ab417-36e9-3423-bf05-000f8d60654c', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5e617dda-0b39-3923-0d26-000f8d60654d', N'7f4dc08c-b683-3823-0d26-000f8d60654d', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'73b1afaf-0ff5-fb03-24dc-000f8d5e2204', N'6933bbe6-6885-f903-24dc-000f8d5e2204', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b03295e3-3eab-0004-7316-000f8d5e2204', N'131f1677-2b84-fe03-7316-000f8d5e2204', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd9997e1d-7acb-0504-e85b-000f8d5e2204', N'fc117891-87ed-0304-e85b-000f8d5e2204', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7fc2bae1-5ec6-0a04-3688-000f8d5e2205', N'f19e6837-346a-0804-3688-000f8d5e2205', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1679edad-c0ea-0f04-84b6-000f8d5e2205', N'21d221cb-fe92-0d04-84b6-000f8d5e2205', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'470e3a66-ae62-4f04-6f71-000f8d5e26df', N'b44e3679-f10f-4d04-6f71-000f8d5e26df', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c9712650-ca6b-5404-bda3-000f8d5e26df', N'7c268dab-0dad-5204-bda3-000f8d5e26df', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7d609761-5f73-5904-32df-000f8d5e26e0', N'1a0448ce-2322-5704-32df-000f8d5e26e0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'954a1796-f95b-5e04-810c-000f8d5e26e0', N'6c2ced5a-b000-5c04-810c-000f8d5e26e0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6dc4e737-eaa3-6304-efa6-000f8d5e26e0', N'61c1135c-6180-6104-efa6-000f8d5e26e0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5947db4d-a0ab-6804-3dd4-000f8d5e26e1', N'024773da-d158-6604-3dd4-000f8d5e26e1', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5fbd4748-1d4b-6d04-b332-000f8d5e26e1', N'b671cc12-725c-6b04-b332-000f8d5e26e1', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'19ec1261-e576-2e23-22ab-000f8d60654c', N'3df6d799-8dac-2c23-fb90-000f8d60654b', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ff78d6d1-92d7-3223-97e6-000f8d60654c', N'8eb80906-042c-3023-70d8-000f8d60654c', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd864b098-d801-3623-e618-000f8d60654c', N'4e4ab417-36e9-3423-bf05-000f8d60654c', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bb52fed4-32c1-3a23-3445-000f8d60654d', N'7f4dc08c-b683-3823-0d26-000f8d60654d', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5eb67b18-8839-2f23-49f9-000f8d60654c', N'3df6d799-8dac-2c23-fb90-000f8d60654b', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4b71af20-b652-3323-97e6-000f8d60654c', N'8eb80906-042c-3023-70d8-000f8d60654c', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a67886dc-f2f9-3723-e618-000f8d60654c', N'4e4ab417-36e9-3423-bf05-000f8d60654c', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'55f834d7-c82e-3b23-3445-000f8d60654d', N'7f4dc08c-b683-3823-0d26-000f8d60654d', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c26b1a1b-fab2-8623-ce7e-000f8d608efc', N'4ea00b01-7423-8523-ce7e-000f8d608efc', N'9500fdb3-b5fc-42e5-9162-b08cd827e17d', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0b4d4c9b-01fa-b202-1c8e-000e544aae6e', N'b341e3c0-650a-b002-ce6d-000e544aae6d', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8b8098bb-2359-d601-55ff-000f2fe77bab', N'368e542c-26e8-d401-f3e2-000f2fe77ba8', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c2d2a293-4c91-d807-0449-000f2feb43f5', N'f50fec4b-f7f5-d607-0449-000f2feb43f5', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7e584968-0746-4302-939b-000f8d5dc2c7', N'6492a46d-e134-4202-939b-000f8d5dc2c7', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7dac2d35-ab48-5902-aeca-000f8d5dc7c7', N'ca26560e-4084-5802-aeca-000f8d5dc7c7', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a4af23bc-970d-6d02-8885-000f8d5dcb7a', N'2eb02369-a0f9-6c02-8885-000f8d5dcb7a', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9eefebf5-cb27-8102-57ec-000f8d5dd011', N'6dc6a4b6-91e5-8002-57ec-000f8d5dd011', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e7feea4d-636b-9502-bdb9-000f8d5dd388', N'4a0c700d-28a9-9402-bdb9-000f8d5dd388', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'84adbd2b-6bf5-ba02-f9f1-000f8d5dd9ac', N'873661ca-127f-b902-f9f1-000f8d5dd9ac', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'30c06e53-9e2f-cd02-2d95-000f8d5ddd2f', N'1813b58d-dbb7-cc02-2d95-000f8d5ddd2f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6df37f4f-ab07-df02-2f35-000f8d5de079', N'15852515-ee3a-de02-2f35-000f8d5de079', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0a37f488-7ed8-6105-557c-000f8d5e5f42', N'3292cbfb-4237-6005-557c-000f8d5e5f42', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0ef3f7d4-c6d9-f40e-f70c-000f8d5edc86', N'07d2ffb0-b8da-f30e-f70c-000f8d5edc86', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'38dd7439-2bdc-b513-eec3-000f8d5f3545', N'252270f0-877e-b413-eec3-000f8d5f3545', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd9efb81e-c5b8-d713-55c0-000f8d5f41df', N'ffc16ab0-6b73-d613-55c0-000f8d5f41df', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f50d3b3f-ffff-d01d-0a75-000f8d5fed7b', N'81f71704-504c-cf1d-0a75-000f8d5fed7b', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3e71be9d-8080-f21d-5c2a-000f8d5ffbf4', N'bc0f046c-d7c2-f11d-5c2a-000f8d5ffbf4', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'73b51d30-579f-151e-8126-000f8d60080a', N'4e6083e4-25ab-141e-8126-000f8d60080a', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'90f88a05-efa4-8624-7d87-00100e41ec30', N'a4256b25-9401-8524-7d87-00100e41ec30', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7fc83290-631f-df24-257b-00100e41f76f', N'2710615d-9441-de24-257b-00100e41f76f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dd7e9872-51d4-3825-5283-00100e4200f2', N'14fe73fb-238b-3725-5283-00100e4200f2', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0dd23e1b-778c-9025-8a7b-00100e420e4c', N'36662e51-635b-8f25-8a7b-00100e420e4c', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd0633cfc-72a0-e825-fc43-00100e421a0c', N'7ffc8bd1-3dd4-e725-fc43-00100e421a0c', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'498cd8a3-ca9b-4126-c3b0-00100e42271d', N'8bc55120-646c-4026-9ca0-00100e42271d', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'26714f22-8bea-9926-cf5a-00100e422d94', N'e9f5f5c5-5d78-9826-cf5a-00100e422d94', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'83c8b5c7-caa4-fc03-24dc-000f8d5e2204', N'6933bbe6-6885-f903-24dc-000f8d5e2204', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c0cda02b-cb94-0104-7316-000f8d5e2204', N'131f1677-2b84-fe03-7316-000f8d5e2204', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'eee56463-1efd-0604-e85b-000f8d5e2204', N'fc117891-87ed-0304-e85b-000f8d5e2204', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5f0e8d8b-4393-0b04-3688-000f8d5e2205', N'f19e6837-346a-0804-3688-000f8d5e2205', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b92f7392-808d-1004-84b6-000f8d5e2205', N'21d221cb-fe92-0d04-84b6-000f8d5e2205', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2439ef39-febf-5004-6f71-000f8d5e26df', N'b44e3679-f10f-4d04-6f71-000f8d5e26df', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'567a9931-dec4-5504-bda3-000f8d5e26df', N'7c268dab-0dad-5204-bda3-000f8d5e26df', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'68518be4-ac11-5a04-32df-000f8d5e26e0', N'1a0448ce-2322-5704-32df-000f8d5e26e0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'36775ed4-55c5-5f04-810c-000f8d5e26e0', N'6c2ced5a-b000-5c04-810c-000f8d5e26e0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'46daa3e0-4572-6404-efa6-000f8d5e26e0', N'61c1135c-6180-6104-efa6-000f8d5e26e0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'922e65b4-e3ed-6904-3dd4-000f8d5e26e1', N'024773da-d158-6604-3dd4-000f8d5e26e1', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a30dbdbe-28f8-6e04-b332-000f8d5e26e1', N'b671cc12-725c-6b04-b332-000f8d5e26e1', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1255161a-23ce-fd03-24dc-000f8d5e2204', N'6933bbe6-6885-f903-24dc-000f8d5e2204', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a19a06a8-35d3-0204-7316-000f8d5e2204', N'131f1677-2b84-fe03-7316-000f8d5e2204', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'beced9fd-0d69-0704-e85b-000f8d5e2204', N'fc117891-87ed-0304-e85b-000f8d5e2204', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'edffb6b8-9703-0c04-3688-000f8d5e2205', N'f19e6837-346a-0804-3688-000f8d5e2205', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c0b52fab-78d9-1104-84b6-000f8d5e2205', N'21d221cb-fe92-0d04-84b6-000f8d5e2205', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'86225e00-799c-5104-6f71-000f8d5e26df', N'b44e3679-f10f-4d04-6f71-000f8d5e26df', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e38ab42d-7506-5604-bda3-000f8d5e26df', N'7c268dab-0dad-5204-bda3-000f8d5e26df', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'355f6cf7-9c83-5b04-32df-000f8d5e26e0', N'1a0448ce-2322-5704-32df-000f8d5e26e0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8e98dbe6-b96d-6004-810c-000f8d5e26e0', N'6c2ced5a-b000-5c04-810c-000f8d5e26e0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a2aa459f-4704-6504-efa6-000f8d5e26e0', N'61c1135c-6180-6104-efa6-000f8d5e26e0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7b2dfef0-a55c-6a04-3dd4-000f8d5e26e1', N'024773da-d158-6604-3dd4-000f8d5e26e1', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f773f5bb-1f3d-6f04-b332-000f8d5e26e1', N'b671cc12-725c-6b04-b332-000f8d5e26e1', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'65b60b94-f7b0-f902-abeb-000f8d5df5cd', N'748934de-1027-5a24-67ea-000d984b1967')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'da8a1aa0-0a27-2d23-fb90-000f8d60654b', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f8ad464c-004c-3123-70d8-000f8d60654c', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5c75687b-413a-3523-bf05-000f8d60654c', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5e617dda-0b39-3923-0d26-000f8d60654d', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'305051b3-b0c9-b603-13c2-000f8d5e13d1', N'5a042996-03e2-a004-f7d2-000f8bdf4021')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'760e9e68-ac4f-306a-785f-00100fa5db2e', N'64ce3ff8-8f79-8107-290f-00100e374500')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'45165b35-1a04-d608-45c0-000f8c72e08a', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'3c80f468-de3c-db08-bb24-000f8c72e08a', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9eefebf5-cb27-8102-57ec-000f8d5dd011', N'fbdb23a3-75c0-4659-8361-0cb99abdc758')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f4cfc3da-bb15-9c08-de9d-000f8c72d8b4', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a2a085af-3fb7-9f08-1d5a-000f8c72d8b5', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ecefaf59-2543-a208-620d-000f8c72d8b5', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c8f40b75-66ed-7903-0721-000f8d5e06c6', N'14f9957e-1560-4a7e-97fe-143a1ab89504')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'90f88a05-efa4-8624-7d87-00100e41ec30', N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'73b51d30-579f-151e-8126-000f8d60080a', N'0326cd06-9719-4385-84a0-2d384c5a5b1f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'26714f22-8bea-9926-cf5a-00100e422d94', N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0b4d4c9b-01fa-b202-1c8e-000e544aae6e', N'6b5d10be-1008-449f-9b83-3fd935fabdfb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a4af23bc-970d-6d02-8885-000f8d5dcb7a', N'ab583d60-2f3c-497b-b267-4028d3233533')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'2fc1c762-a36a-d503-86cd-000f8d5e1872', N'0845f8da-21df-4fca-be60-421052f1598d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'6df37f4f-ab07-df02-2f35-000f8d5de079', N'906d47a5-74ea-4f2a-9e87-4cdd98ed093b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0ef3f7d4-c6d9-f40e-f70c-000f8d5edc86', N'30a566cc-0614-4cf0-bdd4-4f22ba3b3c36')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'84adbd2b-6bf5-ba02-f9f1-000f8d5dd9ac', N'25d98e24-a6a4-4e61-b239-54135959c09d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7fc83290-631f-df24-257b-00100e41f76f', N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'373a5bce-c539-5c03-a96d-000f8d5e02fe', N'25350954-c42d-4c23-87cf-5efda6412ade')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'dd7e9872-51d4-3825-5283-00100e4200f2', N'a8f082d2-7e31-42b3-97c6-5f41502c358b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'be9a7f51-5d60-750a-67aa-000f8c73015b', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'55f002f2-40df-780a-b5df-000f8c73015b', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'20d10ecb-5049-7b0a-0402-000f8c73015c', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0a37f488-7ed8-6105-557c-000f8d5e5f42', N'2814add4-dff3-4a2a-9c12-6f15e3a46777')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cc4119cd-6bfd-3d09-2e86-000f8c72e798', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'87d5f6d8-d1c0-4009-a3c4-000f8c72e798', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0aeb3c2d-8258-4309-cad6-000f8c72e798', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0dd23e1b-778c-9025-8a7b-00100e420e4c', N'fb99292b-aec0-4200-91ac-7e57ca81b305')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cdab32b5-e60b-6808-6dc0-000f8c72d300', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'695be9b2-87e3-6b08-e996-000f8c72d300', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8d01856e-d37d-6f08-10a4-000f8c72d301', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'3e71be9d-8080-f21d-5c2a-000f8d5ffbf4', N'a5881e10-5938-4ba6-b041-8b1beb5b89be')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7dac2d35-ab48-5902-aeca-000f8d5dc7c7', N'092b5569-4a7a-4e6b-952d-9614a7396a95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c2d2a293-4c91-d807-0449-000f2feb43f5', N'47df82d3-7312-416f-9145-9b6e3d258dff')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'38dd7439-2bdc-b513-eec3-000f8d5f3545', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f50d3b3f-ffff-d01d-0a75-000f8d5fed7b', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'17910f1f-980b-0d0a-fa39-000f8c72f925', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'61b2284e-5cea-100a-377d-000f8c72f926', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ca2a437b-959a-130a-769d-000f8c72f926', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'409c3c33-43f7-a509-2769-000f8c72efd5', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e9ac4a85-7421-a809-75a2-000f8c72efd5', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b507f232-2fa4-ab09-c3f9-000f8c72efd5', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8b8098bb-2359-d601-55ff-000f2fe77bab', N'94d680b0-7e1f-4d0e-aca8-be12500fff95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c26b1a1b-fab2-8623-ce7e-000f8d608efc', N'40b3586c-ce62-490e-9f7f-c4231cfdeb8c')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd9efb81e-c5b8-d713-55c0-000f8d5f41df', N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'06e23107-97f8-410a-b979-000f8c72fdd0', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b19c274f-6ccc-440a-07a5-000f8c72fdd1', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'246e1773-8a47-470a-2eb3-000f8c72fdd1', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'86225e00-799c-5104-6f71-000f8d5e26df', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e38ab42d-7506-5604-bda3-000f8d5e26df', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'355f6cf7-9c83-5b04-32df-000f8d5e26e0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8e98dbe6-b96d-6004-810c-000f8d5e26e0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a2aa459f-4704-6504-efa6-000f8d5e26e0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7b2dfef0-a55c-6a04-3dd4-000f8d5e26e1', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f773f5bb-1f3d-6f04-b332-000f8d5e26e1', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd0633cfc-72a0-e825-fc43-00100e421a0c', N'2301a850-22de-4ab6-a4a1-d285b4deb8a8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'30c06e53-9e2f-cd02-2d95-000f8d5ddd2f', N'8ed1a10b-071b-47f2-afb1-d4b288badb3b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1255161a-23ce-fd03-24dc-000f8d5e2204', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a19a06a8-35d3-0204-7316-000f8d5e2204', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'beced9fd-0d69-0704-e85b-000f8d5e2204', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'edffb6b8-9703-0c04-3688-000f8d5e2205', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c0b52fab-78d9-1104-84b6-000f8d5e2205', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8a1c6bcc-0640-7109-f85d-000f8c72eb31', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9d0fcb8a-d762-7409-6dbd-000f8c72eb32', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'dea7cc6e-2659-7709-94d3-000f8c72eb32', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'498cd8a3-ca9b-4126-c3b0-00100e42271d', N'44a5602b-5415-48c3-a81a-f83118c8647d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7e584968-0746-4302-939b-000f8d5dc2c7', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e7feea4d-636b-9502-bdb9-000f8d5dd388', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5a0b5cbe-6c4b-8a00-f61d-000f2a6c8549', 9, N'', N'Images')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5a0b5cbe-6c4b-8a00-f61d-000f2a6c8549', 12, N'', N'Images')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', 9, N'', N'Volume')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', 12, N'', N'contenance')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', 9, N'', N'Release Date')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', 12, N'', N'Date de sortie')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', 9, N'', N'Image')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', 12, N'', N'Image')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', 9, N'', N'Sleeves')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', 12, N'', N'manches')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', 9, N'', N'Shoe width')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', 12, N'', N'Largeur de Chaussure')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', 9, N'', N'Unit')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', 12, N'', N'unité de contenance')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', 9, N'', N'Color')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', 12, N'', N'Couleur')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', 9, N'', N'Neck')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', 12, N'', N'cou')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', 9, N'', N'Shoes size')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', 12, N'', N'Pointure de chaussures')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', 9, N'', N'Operating System')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', 12, N'', N'Système d''Exploitation')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'1d335dbd-36f0-4602-3a87-000f8bd1c78e', 9, N'ml')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'1d335dbd-36f0-4602-3a87-000f8bd1c78e', 12, N'ml')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'6096d18a-ebfe-4455-9662-12251ae494ce', 9, N'oz.')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'6096d18a-ebfe-4455-9662-12251ae494ce', 12, N'onces')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', 9, N'Pink')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', 12, N'Rose')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', 9, N'Blue')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', 12, N'Bleu')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e1f4a471-600d-408b-a5dd-2070b09cdb80', 9, N'Linux')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e1f4a471-600d-408b-a5dd-2070b09cdb80', 12, N'Linux')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'd6f97035-3ac3-4426-9d09-23bd9c494d8f', 9, N'15 ½ in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'd6f97035-3ac3-4426-9d09-23bd9c494d8f', 12, N'39 cm')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', 9, N'33-34')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', 12, N'Normales-petites')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'59c23fbd-5421-4455-8845-33067f319c34', 9, N'34-35')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'59c23fbd-5421-4455-8845-33067f319c34', 12, N'Normales')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', 9, N'16 in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', 12, N'41 cm')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'fc4eaa3e-ad43-4f1e-abe4-50b3c39c51d9', 9, N'N')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'fc4eaa3e-ad43-4f1e-abe4-50b3c39c51d9', 12, N'N')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4dfbc46f-d078-4999-9102-54e3261d0d5c', 9, N'16 ½ in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4dfbc46f-d078-4999-9102-54e3261d0d5c', 12, N'42 cm')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e7393b1b-34f6-4265-a5f7-657be29c4ef2', 9, N'17')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e7393b1b-34f6-4265-a5f7-657be29c4ef2', 12, N'43 cm')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'40e962e7-d485-472b-9a5d-855722809e45', 9, N'Purple')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'40e962e7-d485-472b-9a5d-855722809e45', 12, N'Violet')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'54daeec0-064a-4f4a-899d-8c62babb4cc5', 9, N'White w. Blue Stripes')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'54daeec0-064a-4f4a-899d-8c62babb4cc5', 12, N'Blanche rayée bleue')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'ffc22e24-d978-4252-9efe-9a48cb799921', 9, N'Windows')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'ffc22e24-d978-4252-9efe-9a48cb799921', 12, N'Windows')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4b6e4c59-61d2-4e52-b1b9-a256465846e5', 9, N'R')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4b6e4c59-61d2-4e52-b1b9-a256465846e5', 12, N'R')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'41327fbd-a1a9-4e7f-8000-b0c929b66ea5', 9, N'Mac OS')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'41327fbd-a1a9-4e7f-8000-b0c929b66ea5', 12, N'Mac OS')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', 9, N'White')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', 12, N'Blanc')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'84e3d379-c577-4215-b57f-d45d66276b5f', 9, N'M')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'84e3d379-c577-4215-b57f-d45d66276b5f', 12, N'M')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'996a9afb-a468-4650-9f86-d783be9140d3', 9, N'15 in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'996a9afb-a468-4650-9f86-d783be9140d3', 12, N'38 cm')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'68f3d6b5-a65f-43b6-a034-d8f74d736962', 9, N'W')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'68f3d6b5-a65f-43b6-a034-d8f74d736962', 12, N'W')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', 9, N'36-37')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', 12, N'Grandes longueur')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'c6e92a62-74a2-800e-0f48-000eb7aad3d6', 9, N'Food products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'388d935a-5e91-9500-4861-000ebbb0068d', 9, N'A week End and 1 associated product')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'388d935a-5e91-9500-4861-000ebbb0068d', 12, N'Un Week End avec un produit associé')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 9, N'Physical Products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 12, N'Produits physiques')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 9, N'Downloadable products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 12, N'Produits téléchargeables')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 9, N'Bundle watch + sunglasses')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 12, N'Pack montres + lunettes de soleil')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 9, N'Fragrance')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 12, N'Parfum')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 9, N'Bundle of IT softwares')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 12, N'Pack de logiciels')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', 9, N'Shirts')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', 12, N'Chemise')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', 9, N'Shoes')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', 12, N'Chaussures')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'75ddb67c-7198-4d1e-ba56-06800feb79cd', 9, N'Coast to Coast', N'', N'Coast to Coast', N'Coast to Coast')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'75ddb67c-7198-4d1e-ba56-06800feb79cd', 12, N'Coast to Coast', N'Coast to Coast', N'Coast to Coast', N'Coast to Coast')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed', 9, N'Beige straps pillow', N'Beige straps pillow', N'Beige straps pillow', N'Beige straps pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed', 12, N'Coussin beige', N'Coussin beige', N'Coussin beige', N'Coussin beige')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'0326cd06-9719-4385-84a0-2d384c5a5b1f', 9, N'White Light', N'White Light', N'White Light', N'White Light')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'0326cd06-9719-4385-84a0-2d384c5a5b1f', 12, N'White Light', N'White Light', N'White Light', N'White Light')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'd07e48e0-9e54-41b0-9e0b-2fd6fcbe1497', 9, N'Men''s Chrono Day', N'Men''s Chrono Day', N'Men''s Chrono Day', N'Men''s Chrono Day')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'd07e48e0-9e54-41b0-9e0b-2fd6fcbe1497', 12, N'Montre Chrono Homme', N'Montre Chrono Homme', N'Montre Chrono Homme', N'Montre Chrono Homme')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975', 9, N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975', 12, N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'ab583d60-2f3c-497b-b267-4028d3233533', 9, N'Purple Sun', N'Purple Sun', N'Purple Sun', N'Purple Sun')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'906d47a5-74ea-4f2a-9e87-4cdd98ed093b', 12, N'Trend-e', N'Trend-e', N'Trend-e', N'Trend-e')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'25d98e24-a6a4-4e61-b239-54135959c09d', 12, N'Aviatissimo', N'Aviatissimo', N'Aviatissimo', N'Aviatissimo')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1', 9, N'Blue decor pillow', N'Blue decor pillow', N'Blue decor pillow', N'Blue decor pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1', 12, N'Coussin Bleu d''Orient', N'Coussin Bleu d''Orient', N'Coussin Bleu d''Orient', N'Coussin Bleu d''Orient')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'a8f082d2-7e31-42b3-97c6-5f41502c358b', 9, N'Green Pillow', N'Green Pillow', N'Green Pillow', N'Green Pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'a8f082d2-7e31-42b3-97c6-5f41502c358b', 12, N'Coussin vert', N'Coussin vert', N'Coussin vert', N'Coussin vert')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'2814add4-dff3-4a2a-9c12-6f15e3a46777', 12, N'Black diving', N'Black diving', N'Black diving', N'Black diving')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fb99292b-aec0-4200-91ac-7e57ca81b305', 9, N'Grey Pilliow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Grey Pilliow', N'Grey Pilliow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fb99292b-aec0-4200-91ac-7e57ca81b305', 12, N'Coussin argent', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Coussin argent', N'Coussin argent')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'4cf33b3f-d345-4539-8585-8a16f492ac2f', 9, N'A journey', N'A journey', N'A journey', N'A journey')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'4cf33b3f-d345-4539-8585-8a16f492ac2f', 12, N'A journey', N'A journey', N'A journey', N'A journey')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'092b5569-4a7a-4e6b-952d-9614a7396a95', 9, N'Weekend Sport', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Weekend Sport', N'Weekend Sport')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'092b5569-4a7a-4e6b-952d-9614a7396a95', 12, N'Weekend Sport', N'La monture de ces lunettes est parfaites pour se sentir en week-end. Les verres sont japonais, en polycarbonate,  polarisés, résistent aux UVA/UVB.', N'Weekend Sport', N'Weekend Sport')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'67bc5435-a533-4429-ae0f-a3f93210b60f', 12, N'45mm SS Case Automatic', N'45mm SS Case Automatic', N'45mm SS Case Automatic', N'45mm SS Case Automatic')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'94d680b0-7e1f-4d0e-aca8-be12500fff95', 9, N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'94d680b0-7e1f-4d0e-aca8-be12500fff95', 12, N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78', 9, N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78', 12, N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'2301a850-22de-4ab6-a4a1-d285b4deb8a8', 9, N'Orange pillow. Clipping path', N'Orange pillow. Clipping path', N'Orange pillow. Clipping path', N'Orange pillow. Clipping path')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'2301a850-22de-4ab6-a4a1-d285b4deb8a8', 12, N'Coussin orange mandarine', N'Coussin orange mandarine', N'Coussin orange mandarine', N'Coussin orange mandarine')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'8ed1a10b-071b-47f2-afb1-d4b288badb3b', 9, N'Orange', N'Orange', N'Orange', N'Orange')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'8ed1a10b-071b-47f2-afb1-d4b288badb3b', 12, N'Orange', N'Orange', N'Orange', N'Orange')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'44a5602b-5415-48c3-a81a-f83118c8647d', 9, N'Rose & Rosy Pillow', N'Rose & Rosy Pillow', N'Rose & Rosy Pillow', N'Rose & Rosy Pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'79d1ca8a-fbdd-436b-9199-fc71a6af6803', 9, N'Surf & Kite', N'Surf & Kite', N'Surf & Kite', N'Surf & Kite')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'79d1ca8a-fbdd-436b-9199-fc71a6af6803', 12, N'Surf & Kite', N'Surf & Kite', N'Surf & Kite', N'Surf & Kite')
