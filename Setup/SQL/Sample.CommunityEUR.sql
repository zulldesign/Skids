--declare @sellerId uniqueidentifier = 'ac5757f0-b120-11e0-a00b-0800200c9a66'
--declare @storeId uniqueidentifier = 'dcafd470-b122-11e0-a00b-0800200c9a66'
INSERT [magelia].[Seller] ([SellerId], [IsActive], [AdditionalDataXml], [Code]) VALUES (@sellerId, 1, N'<SellerSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><CacheSettings z:Id="2"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration></CacheSettings><Color xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.Common.Drawing" i:nil="true" /><ETLSettings z:Id="3"><BatchSize>1000</BatchSize><CommandTimeout>PT1M</CommandTimeout><IndentXML>false</IndentXML><ValidateBaseInput>false</ValidateBaseInput><ValidateBaseOutput>false</ValidateBaseOutput></ETLSettings><ImagesSettings z:Id="4"><DisplayThumbs>true</DisplayThumbs><ThumbsFolder z:Id="5">_thumbs</ThumbsFolder></ImagesSettings><LengthUnit z:Id="6">Inch</LengthUnit><WeightUnit z:Id="7">g</WeightUnit></SellerSettings>', @SellerName)
INSERT [magelia].[TaxType] ([TaxTypeId], [Code], [SellerId]) VALUES (N'5e539033-ad80-380b-28f8-000ebb765b10', N'Value Added Tax (VAT)', @sellerId)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'VAT Standard Rate', N'5e539033-ad80-380b-28f8-000ebb765b10', NULL)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'VAT reduced rate', N'5e539033-ad80-380b-28f8-000ebb765b10', NULL)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Downloadable products', @sellerId, 0, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Fragrance', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'IT softwares', @sellerId, 3, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'Physical Products', @sellerId, 0, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'Shirts', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'Shoes', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'watch + sunglasses', @sellerId, 3, 0)
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', 9, N'VAT Standard Rate')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', 12, N'TVA Taux normal')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', 9, N'VAT Reduced Rate')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', 12, N'TVA taux réduit')
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'France', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'470ab639-d8f2-9b13-47cf-000ebb82ea73', N'France (Corsica)', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'114789d9-d273-8d13-8cf8-000ebb82dd4f', N'France metropolitan', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'7522e202-6f64-b513-f261-000ebb83128b', N'Germany', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'ad704b96-fc1b-5205-5ecc-000e5408eba6', N'Germany', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'8fdbb4ba-ed6d-a813-ed30-000ebb82fea9', N'Italy', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'92a46a15-0a10-9805-05d1-000e54097118', N'Italy', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'e90ac1fc-5055-1506-cc06-000e540a9aa7', N'Other European Union countries', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'Spain', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'4faee487-d3f4-d513-803f-000ebb834969', N'Spain (Canary Islands)', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'40b52b0f-9746-c713-dca2-000ebb8333cb', N'Spain (Excluding Canary Islands)', @sellerId, 0)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'e59a26ab-c0b8-6a06-1d6b-000e540b2a05', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(20.00000 AS Decimal(18, 5)), N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'0fccc3a6-7da2-6e06-7425-000e540b37fc', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(19.00000 AS Decimal(18, 5)), N'ad704b96-fc1b-5205-5ecc-000e5408eba6', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'cbcede1c-04bc-7206-ca39-000e540b4cd0', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(21.00000 AS Decimal(18, 5)), N'92a46a15-0a10-9805-05d1-000e54097118', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'93df7f71-953a-7a06-e3ac-000e540b68e9', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(21.00000 AS Decimal(18, 5)), N'7e97b1cc-a9b6-c405-d50a-000e5409d097', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'ce54e499-c13f-8406-caf8-000e540b85d6', N'9e8228fa-f90c-3606-e784-000e540ac46f', CAST(19.60000 AS Decimal(18, 5)), N'e90ac1fc-5055-1506-cc06-000e540a9aa7', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'93f91deb-7074-a412-9325-000e57013e14', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(5.50000 AS Decimal(18, 5)), N'1f94b818-62ec-5e06-5b9f-000e540b1922', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'79d06c17-1e92-8215-cca7-000ebb85cbc4', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(7.00000 AS Decimal(18, 5)), N'ad704b96-fc1b-5205-5ecc-000e5408eba6', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'47caf300-6bf5-8615-9d7d-000ebb85d97c', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(10.00000 AS Decimal(18, 5)), N'92a46a15-0a10-9805-05d1-000e54097118', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'6a049d77-5aae-8a15-1530-000ebb85e775', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(10.00000 AS Decimal(18, 5)), N'7e97b1cc-a9b6-c405-d50a-000e5409d097', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'ead22573-6909-4b04-4a33-000f8bac7e10', N'55660420-c1b0-4606-bf57-000e540adb7b', CAST(5.50000 AS Decimal(18, 5)), N'e90ac1fc-5055-1506-cc06-000e540a9aa7', NULL, NULL, NULL)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'e55e8b6c-638f-1618-e9d8-000d9845bdb7', @sellerId, N'Carrousel/Carroussel32.jpg', CAST(0x07509D5782C453350B0000 AS DateTimeOffset), CAST(0x0750E7E4D46858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0ffbbe8c-5525-291b-9924-000d9846ed8d', @sellerId, N'Carrousel/Carroussel12.jpg', CAST(0x07B04A2DB2C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'327453a7-8b59-2f1b-2ce4-000d9846f0d5', @sellerId, N'Carrousel/Carroussel21.jpg', CAST(0x07708674B5C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'748934de-1027-5a24-67ea-000d984b1967', @sellerId, N'Downloads/2012-Olympics.jpg', CAST(0x07C0D59CB30054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5bdce504-ed74-5e24-dea8-000d984b1b0f', @sellerId, N'Downloads/2012-Olympics-carr.jpg', CAST(0x07B07C45B50054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'54328758-0329-5c1a-1530-000d990a82f8', @sellerId, N'Clothes/RunningS.jpg', CAST(0x0770ED2D1DC054350B0000 AS DateTimeOffset), CAST(0x07B0F2A3AA6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'9c2529e7-b625-1600-d2b1-00100ba95565', @sellerId, N'food/Chocolate-Chip-cookie.jpg', CAST(0x07B19232584472380B7800 AS DateTimeOffset), CAST(0x07B7D70F604472380B7800 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'75ddb67c-7198-4d1e-ba56-06800feb79cd', @sellerId, N'Fragrances/Webstore-Parfums-05-Large.jpg', CAST(0x0790EAF720BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'2137df37-bb87-4462-9d1d-0afe0b76facc', @sellerId, N'Fragrances/Webstore-Parfums-02-Large.jpg', CAST(0x07A06E2D20BC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fbdb23a3-75c0-4659-8361-0cb99abdc758', @sellerId, N'SunGlasses/Webstore-Eyewear-02-Large.jpg', CAST(0x07508B6D1DBC4A350B0000 AS DateTimeOffset), CAST(0x07609B946B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'42971be0-7f44-4bc7-89f4-11fd2ae892fb', @sellerId, N'Fragrances/Webstore-Parfums-01-Large.jpg', CAST(0x07508BDE1FBC4A350B0000 AS DateTimeOffset), CAST(0x07106A7B796858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'14f9957e-1560-4a7e-97fe-143a1ab89504', @sellerId, N'Downloads/Fotolia_30807776_XS.jpg', CAST(0x07D05868B5C24D350B0000 AS DateTimeOffset), CAST(0x07107AC9B16858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed', @sellerId, N'Pillow/Webstore-Deco-03-Large.jpg', CAST(0x07E0F91C0BBC4A350B0000 AS DateTimeOffset), CAST(0x079032F38B6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'dbe26328-7ac0-4476-a840-2d1544aabf02', @sellerId, N'Downloads/Book.png', CAST(0x07C0D59CB30054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
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
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'2045aa25-c242-477b-b834-78acab772344', @sellerId, N'365 Design House', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'9584f634-1780-479b-b367-cc306e3cfdb7', @sellerId, N'BrandNewWeb', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', @sellerId, N'Fragranza', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'8b187b39-d642-440e-b631-8cb99c84cddc', @sellerId, N'OverBrand', NULL)
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', @sellerId, N'United Designers', NULL)
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', @sellerId, N'CityStreet Company')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', @sellerId, N'HeavyLoadSupplies')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'955987d1-fef6-424c-9fe6-b2bae86dabfd', @sellerId, N'MajorSupplies')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'a742be90-a993-48da-a0f7-308591fb5814', @sellerId, N'Storm Company')
INSERT [magelia].[Supplier] ([SupplierId], [SellerId], [Code]) VALUES (N'd58c3053-1313-4eb4-aa33-769dd38080ea', @sellerId, N'The Not4Resale Company')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'4499d369-9384-4074-bab1-adf1c417b337', N'234567', 1, NULL, CAST(389.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(12.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL, 1, NULL, NULL, N'234567')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12129', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12130', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'9ec3e59c-c916-851d-d589-000d990b7930', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12131', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'895e9f89-a787-f11d-d025-000d990b9747', NULL, NULL, N'4499d369-9384-4074-bab1-adf1c417b337', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'12132', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'530f8194-6b68-ea01-ce31-00100b59018c', NULL, NULL, N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'', 1, 1, CAST(250.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, N'CCC1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b921987e-51e1-4985-ab44-019965b52d0f', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'003', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'FRAG003', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'K67', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0019', 1, 1, CAST(1200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(65.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0019', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'881055b6-d532-42c4-9818-15bdb80e1e39', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'1234567765432', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10003', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0013', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(11.90000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.70000 AS Decimal(18, 5)), N'SKU0013', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0002', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(13.00000 AS Decimal(18, 5)), CAST(14.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0002', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'K17', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0007', 1, 1, CAST(260.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(12.50000 AS Decimal(18, 5)), CAST(13.00000 AS Decimal(18, 5)), CAST(4.80000 AS Decimal(18, 5)), N'SKU0007', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Ajourney', 1, NULL, CAST(180.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Ajourney')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0024', 1, 1, CAST(1050.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(75.00000 AS Decimal(18, 5)), CAST(25.00000 AS Decimal(18, 5)), CAST(75.00000 AS Decimal(18, 5)), N'SKU0024', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I67', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Stillriver', 1, NULL, CAST(129.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Stillriver')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0001', 1, 1, CAST(250.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(12.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0001', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0f15cc01-2a0e-464c-9990-33fce918ab4b', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'SR34', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'75ac5adb-22ac-42fa-8f72-34515265151b', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Idole', 1, NULL, CAST(250.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Idole')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5243cba2-3003-42e0-bc1c-3c85470b9087', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'98977665645333', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10001', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0031', 1, 1, CAST(250.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(11.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0031', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'MK34', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5f70f381-94e9-46f4-b67d-4b1afc729521', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'MK67', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'001', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'FWALL001', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5488b334-d396-4079-bb14-4d45cd97c271', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'J34', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0008', 1, 1, CAST(360.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(11.50000 AS Decimal(18, 5)), CAST(12.50000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0008', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Altitude', 1, NULL, CAST(220.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Altitude')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'AL17', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'657461234968', 1, 0, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0001', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I34', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'0789776726', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0005', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 4, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'057fb737-a362-46fa-8a3d-5f651d5de371', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'001', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'FRAG001', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'2012LOG', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'2012LOG', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0032', 1, 1, CAST(225.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.50000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0032', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0020', 1, 1, CAST(1100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(55.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), N'SKU0020', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'15124216-83f5-4a96-a776-6de4d33e29a5', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'F1000', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'71e032cf-2592-49a9-a166-6eea06ca4014', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'1278909876429', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10000', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0027', 1, 1, CAST(240.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(2.50000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(3.00000 AS Decimal(18, 5)), N'SKU0027', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'13b0719d-1441-4d3e-a1de-765cd22c913b', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'9898988877676656', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10006', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 6, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0028', 1, 1, CAST(150.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0028', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a9c9aadc-46eb-4bff-a213-78740730b8af', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'C34', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'AV1', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'AV1', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0006', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(10.00000 AS Decimal(18, 5)), CAST(12.50000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0006', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'K34', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I17', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd94858ed-6538-4958-a147-846dc651c79f', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'AL34', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'SR67', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0029', 1, 1, CAST(220.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0029', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0026', 1, 1, CAST(220.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(5.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), N'SKU0026', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0030', 1, 1, CAST(190.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(6.00000 AS Decimal(18, 5)), CAST(11.50000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0030', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'C67', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2fc3d613-302c-4f9b-850c-8eded3486e32', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'87766566443333', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10004', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 4, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'35b57194-4a77-4665-91fc-90eaa18a0b1c', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6786766574444', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10002', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Karma4men', 1, NULL, CAST(230.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Karma4men')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0025', 1, 1, CAST(1200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(65.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0025', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'F1001', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0021', 1, 1, CAST(1150.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(70.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), N'SKU0021', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1bdd4491-4af6-4941-84e6-a6c73c46347a', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'002', 1, 1, CAST(200.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(7.00000 AS Decimal(18, 5)), N'FRAG002', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ff3d5209-e549-4437-999a-aad44f5340dd', N'a742be90-a993-48da-a0f7-308591fb5814', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0017', 1, 1, CAST(315.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(11.80000 AS Decimal(18, 5)), CAST(13.00000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0017', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', NULL, N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'MK17', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'87614916164', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0002', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'64786164313', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0003', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'SR17', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'J67', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Gatsby', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'Gatsby', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0018', 1, 1, CAST(1250.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(60.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), N'SKU0018', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'a742be90-a993-48da-a0f7-308591fb5814', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0003', 1, 1, CAST(320.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(14.00000 AS Decimal(18, 5)), CAST(10.00000 AS Decimal(18, 5)), CAST(5.50000 AS Decimal(18, 5)), N'SKU0003', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0de77b97-c976-448f-9776-c732a43d65d8', N'a742be90-a993-48da-a0f7-308591fb5814', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0033', 1, 1, CAST(210.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(6.00000 AS Decimal(18, 5)), CAST(11.50000 AS Decimal(18, 5)), CAST(4.50000 AS Decimal(18, 5)), N'SKU0033', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'02e8e67c-f95e-4145-b475-c974016fe4a8', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6545634534', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0004', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 3, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'CoasttoCoast', 1, NULL, CAST(115.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'CoasttoCoast')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Whitemusc', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Whitemusc')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'8b779da6-e306-44c1-a673-d464ec8a4b34', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'F1002', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'BUNDLE001', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(30.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), N'SKUBUNDLE001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0005', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(13.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(4.90000 AS Decimal(18, 5)), N'SKU0005', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'2045aa25-c242-477b-b834-78acab772344', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0023', 1, 1, CAST(1000.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(65.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), N'SKU0023', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'Shirt001', 1, NULL, NULL, @sellerId, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Shirt001')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Mankind', 1, NULL, CAST(200.00000 AS Decimal(18, 5)), @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'Mankind')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0004', 1, 1, CAST(290.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(11.00000 AS Decimal(18, 5)), CAST(12.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'SKU0004', NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'PureWater', 1, NULL, NULL, @sellerId, N'', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'PureWater')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'341c84b5-d194-40d6-80bd-eea300e9ee45', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'33222132323233', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'10005', N'e32d7fc3-a151-423e-8b35-f238b643671c', 0, 5, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'SOFT001', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'PACKSOFT001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'01b4f028-edbb-46b0-ad8a-2d2fb86977f1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'shirt002', 1, NULL, NULL, @sellerId, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, N'shirt002')
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(9.00000 AS Decimal(18, 5)), N'AL67', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 2, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', N'a742be90-a993-48da-a0f7-308591fb5814', N'f7dc91c4-4b7d-42fa-be3e-b8262a6cc9e4', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'C17', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'1265aa84-8242-46b2-9d97-fef35ceaa67f', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'J17', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0f2ff1ea-145b-1815-8132-000d9907b8f2')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'530f8194-6b68-ea01-ce31-00100b59018c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'55660420-c1b0-4606-bf57-000e540adb7b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'9e8228fa-f90c-3606-e784-000e540ac46f', N'e32d7fc3-a151-423e-8b35-f238b643671c')
INSERT [magelia].[Warehouse] ([WarehouseId], [SellerId], [Code], [TaxZoneId]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', @sellerId, N'WHParis', N'1f94b818-62ec-5e06-5b9f-000e540b1922')
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'DHL', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'UPS', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', N'Fedex', @sellerId, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'daa69a54-60ed-fd13-7ae3-000ebb83947e', N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'cea219ee-0088-b806-7c0a-000e540c0620', N'FRANCE - Standard delivery', N'114789d9-d273-8d13-8cf8-000ebb82dd4f', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'6eed3882-ce41-1f14-a88f-000ebb83dee7', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'cea219ee-0088-b806-7c0a-000e540c0620', N'FRANCE - Corsica Air delivery', N'470ab639-d8f2-9b13-47cf-000ebb82ea73', 0, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'168910df-5680-6114-5d90-000ebb844256', N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', N'cea219ee-0088-b806-7c0a-000e540c0620', N'FRANCE - Express delivery', N'114789d9-d273-8d13-8cf8-000ebb82dd4f', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'18ada672-eb9c-b214-ee2f-000ebb84a35d', N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'cea219ee-0088-b806-7c0a-000e540c0620', N'ITALY - Standard delivery', N'8fdbb4ba-ed6d-a813-ed30-000ebb82fea9', 1, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'2093e0f3-8b16-d214-454c-000ebb84c02e', N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'cea219ee-0088-b806-7c0a-000e540c0620', N'GERMANY - Standard delivery', N'7522e202-6f64-b513-f261-000ebb83128b', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'b34fc40b-e260-f214-dd2c-000ebb84eca7', N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'cea219ee-0088-b806-7c0a-000e540c0620', N'SPAIN - Standard delivery', N'40b52b0f-9746-c713-dca2-000ebb8333cb', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'35f18a00-c768-1915-4837-000ebb85127e', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'cea219ee-0088-b806-7c0a-000e540c0620', N'SPAIN - Canary  (Air delivery)', N'4faee487-d3f4-d513-803f-000ebb834969', 0, 1, NULL)
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'daa69a54-60ed-fd13-7ae3-000ebb83947e', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'6eed3882-ce41-1f14-a88f-000ebb83dee7', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'168910df-5680-6114-5d90-000ebb844256', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'18ada672-eb9c-b214-ee2f-000ebb84a35d', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'2093e0f3-8b16-d214-454c-000ebb84c02e', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'b34fc40b-e260-f214-dd2c-000ebb84eca7', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'35f18a00-c768-1915-4837-000ebb85127e', N'9e8228fa-f90c-3606-e784-000e540ac46f')
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'9ec3e59c-c916-851d-d589-000d990b7930', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'895e9f89-a787-f11d-d025-000d990b9747', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'530f8194-6b68-ea01-ce31-00100b59018c', 990, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b921987e-51e1-4985-ab44-019965b52d0f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 10000, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'881055b6-d532-42c4-9818-15bdb80e1e39', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5243cba2-3003-42e0-bc1c-3c85470b9087', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5f70f381-94e9-46f4-b67d-4b1afc729521', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'5488b334-d396-4079-bb14-4d45cd97c271', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'057fb737-a362-46fa-8a3d-5f651d5de371', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'413e0337-1c99-4b53-aa27-69475c0b0468', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'15124216-83f5-4a96-a776-6de4d33e29a5', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'71e032cf-2592-49a9-a166-6eea06ca4014', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'91e54477-ad3e-4821-9895-727c5058a4d9', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'13b0719d-1441-4d3e-a1de-765cd22c913b', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2310c6a3-840a-455d-ab03-7726290ecc05', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a9c9aadc-46eb-4bff-a213-78740730b8af', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd94858ed-6538-4958-a147-846dc651c79f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2fc3d613-302c-4f9b-850c-8eded3486e32', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ff3d5209-e549-4437-999a-aad44f5340dd', 996, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', 997, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', 949, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', 1999, 1999, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'0de77b97-c976-448f-9776-c732a43d65d8', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'02e8e67c-f95e-4145-b475-c974016fe4a8', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'8b779da6-e306-44c1-a673-d464ec8a4b34', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 998, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', 999, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', 1000, 1000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'be496881-d786-1902-be2b-000e544a60cf', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'01e61b88-4e52-5302-c5bc-000e544a880f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b23e38cd-a27f-8a02-57a7-000e544a9a6e', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b341e3c0-650a-b002-ce6d-000e544aae6d', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'28ffeeba-f8f3-1603-1496-000e544aed99', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'756c1043-2918-f906-c731-000e56f7fe25', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ef372f41-7f4c-1f07-64a9-000e56f80d28', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fc2bdb1f-ce7c-4507-ff9b-000e56f87c10', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ca6b1b33-48b0-6b07-0cdd-000e56f8878f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ab2da1bd-9aef-8b07-b36d-000e56f88f69', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'60d5800a-01cc-b107-61ad-000e56f89e8a', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'69cdaa8f-7522-d707-a6dd-000e56f8a7d9', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5ca59fc9-6093-f707-136d-000e56f8b282', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f5781561-0ae1-1d08-9bdd-000e56f8bd42', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f938815b-ba4f-3d08-476d-000e56f8c4b4', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'be0c15e9-6507-5d08-f26d-000e56f8cbac', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bd587f2b-9ba7-7d08-facd-000e56f8d2fb', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bc3c259f-8b4b-a308-dc9d-000e56f8dd6c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'93cad765-1905-c908-7d0d-000e56f8e72f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7cefa15b-0357-ef08-171d-000e56f8f149', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'acbcbebe-8e37-0f09-ff5d-000e56f8fb2a', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4e9b39ea-75b8-3509-2fcd-000e56f9064d', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bf0ef486-6211-7a0e-2a96-000e56fc626c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'871305eb-bbac-9a0e-b2e5-000e56fc74f1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5a26dec5-d1f0-c30e-b80c-000e56fc8c3f', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd1fef77e-c1bb-3c00-dfc9-00100baa1676', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'530f8194-6b68-ea01-ce31-00100b59018c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'db75fe00-8ba0-c709-b8bd-000e56f969a2', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a5d8a8ba-1521-1c0a-0e1d-000e56f98388', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bfc4d344-14cf-b702-ac6e-000f8bab7a8c', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'3b853a30-61e7-dc01-5eaa-00100b58dddd', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'c9330422-4d44-fb03-9aca-000e56f7806e', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8ab1a7b5-3b3b-ae04-c231-000f8c6fc2c0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5488b334-d396-4079-bb14-4d45cd97c271')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4dbb21c5-e08d-b104-c231-000f8c6fc2c0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'726618b7-e72d-b404-c231-000f8c6fc2c0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1265aa84-8242-46b2-9d97-fef35ceaa67f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'60e0e588-2140-b704-249d-000f8c6fc2c3', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e2b85a3f-494b-d204-45f1-000f8c6fc6cb', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f0c0f910-5771-d504-45f1-000f8c6fc6cb', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'd94858ed-6538-4958-a147-846dc651c79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5d996ac3-9fbe-d804-45f1-000f8c6fc6cb', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'af4c8c4e-3e4e-db04-45f1-000f8c6fc6cb', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5062ddb8-aea9-1905-0f6a-000f8c6fce1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a9c9aadc-46eb-4bff-a213-78740730b8af')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4f5901cc-d9ae-1c05-0f6a-000f8c6fce1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'30aefbe7-3770-1e05-0f6a-000f8c6fce1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9e7b0013-aa16-2105-0f6a-000f8c6fce1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f0e04eb3-1362-3c05-9b33-000f8c6fd27b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'c73d19f7-02b7-3f05-9b33-000f8c6fd27b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e7c6d6ad-e6f7-4205-9b33-000f8c6fd27b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'65a6a8a6-1ead-4505-9b33-000f8c6fd27b', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'76b7a2d8-22f2-6005-4408-000f8c6fd66e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4a763d49-af8d-6305-4408-000f8c6fd66e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'462cb80d-b824-6605-4408-000f8c6fd66e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'dbea11aa-f9c2-6905-4408-000f8c6fd66e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8a88ef4a-e30e-a805-81d9-000f8c6fdd66', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'16e08b37-f435-ab05-81d9-000f8c6fdd66', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5f70f381-94e9-46f4-b67d-4b1afc729521')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'99e8436d-ee5f-ae05-81d9-000f8c6fdd66', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b1c12a79-e372-b105-81d9-000f8c6fdd66', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1cc1f2f8-3bd3-f005-fa14-000f8c6fe71a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'0f15cc01-2a0e-464c-9990-33fce918ab4b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b018d59f-9b7b-f305-fa14-000f8c6fe71a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'305fec30-4e12-f605-fa14-000f8c6fe71a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'db0d7060-0eaf-f905-fa14-000f8c6fe71a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0aab2b06-7132-1406-73aa-000f8c6fe9f7', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b921987e-51e1-4985-ab44-019965b52d0f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'45129605-edd0-1706-73aa-000f8c6fe9f7', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'057fb737-a362-46fa-8a3d-5f651d5de371')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'502ce292-7eb0-1a06-73aa-000f8c6fe9f7', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1bdd4491-4af6-4941-84e6-a6c73c46347a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd325ccb9-ff5e-1d06-73aa-000f8c6fe9f7', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'23f570d3-7cfa-3806-3666-000f8c6fedac', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'15124216-83f5-4a96-a776-6de4d33e29a5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'025a7c69-ca31-3b06-3666-000f8c6fedac', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'46d5c2be-4ecc-3e06-3666-000f8c6fedac', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'8b779da6-e306-44c1-a673-d464ec8a4b34')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'38d8f952-bed7-4106-3666-000f8c6fedac', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'4e55b089-f84f-9304-db8b-000f8c6fb8c2', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'536f308d-6fbf-0406-f107-000e56f7da37', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9720d4cd-4fcd-0906-2977-000e56f7da39', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bcfa1d19-2a71-0e06-c5af-000e56f7da39', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b2c03442-6bb1-1306-61e7-000e56f7da3a', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f4815f45-92c0-1806-fe1f-000e56f7da3a', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'02e8e67c-f95e-4145-b475-c974016fe4a8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'933ff2c8-7745-5c06-e329-000e56f7e992', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'881055b6-d532-42c4-9818-15bdb80e1e39')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'077c537a-83fd-6106-5853-000e56f7e993', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'5243cba2-3003-42e0-bc1c-3c85470b9087')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ae93922e-e725-6606-cd7d-000e56f7e993', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'71e032cf-2592-49a9-a166-6eea06ca4014')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7fb0fbba-8ade-6b06-69b5-000e56f7e994', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'13b0719d-1441-4d3e-a1de-765cd22c913b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9f393b0f-2fea-7006-05ed-000e56f7e995', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'2fc3d613-302c-4f9b-850c-8eded3486e32')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1d7628bd-af1c-7506-7b17-000e56f7e995', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'35b57194-4a77-4665-91fc-90eaa18a0b1c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'46c31e12-2848-7a06-174f-000e56f7e996', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'341c84b5-d194-40d6-80bd-eea300e9ee45')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0cd861e2-2941-c006-73a7-000e56f7f3e0', N'4499d369-9384-4074-bab1-adf1c417b337', N'5f28a084-fd33-5c1c-f13f-000d990b29b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'45e08da3-39ef-c506-36ed-000e56f7f3e1', N'4499d369-9384-4074-bab1-adf1c417b337', N'f2a39343-e8a5-cf1c-0452-000d990b50dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'bf1648c7-d7f9-ca06-fa33-000e56f7f3e1', N'4499d369-9384-4074-bab1-adf1c417b337', N'9ec3e59c-c916-851d-d589-000d990b7930')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'04114070-8363-cf06-966b-000e56f7f3e2', N'4499d369-9384-4074-bab1-adf1c417b337', N'895e9f89-a787-f11d-d025-000d990b9747')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 9, N'Running Shoes', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 12, N'Chaussures de running', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.', N'Chaussures de running destinées à la fois aux amateurs et aux profesisonnels. Ces chaussures élitistes soont disponibles dans différentes largeurs.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'530f8194-6b68-ea01-ce31-00100b59018c', 9, N'Chocolate chip cookies', N'', N'', N'')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'530f8194-6b68-ea01-ce31-00100b59018c', 12, N'Cookies au chocolat', N'', N'', N'')
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
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 9, N'2012 London Summer Olympics - The Game', N'<p>The Sumer Olympic games. An all family entertainment available for your PC.</p>', N'<p>The Sumer Olympic games. An all family entertainment available for your PC.</p>', N'<p>The Sumer Olympic games. An all family entertainment available for your PC.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 12, N'2012 Jeux Olympiques d''été - Le Jeu', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ', N'Le jeu électronique des Jeux Olympiques d''été. Un divertissement pour toute la famille disponible dès maintenant pour votre PC. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 9, N'Black diving', N'<p>Black Diving Alarm Digital Military Chime Mens Watch.</p>', N'<p>Black Diving Alarm Digital Military Chime Mens Watch.</p>', N'<p>Black Diving Alarm Digital Military Chime Mens Watch.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 12, N'Black diving', N'Montre militaire de plongée disposant d''une alarme.', N'Montre militaire de plongée disposant d''une alarme.', N'Montre militaire de plongée disposant d''une alarme.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', 9, N'Soft decorated pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', 12, N'Coussin Décoré', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.', N'Des coussins aux couleurs coordonnées et un confort exceptionnel mettant en évidence la chaleur de votre intérieur. Ces oreillers dureront longtemps et s''intégreront parfaitement  avec vos meubles.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', 9, N'White Light', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>', N'<p>Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', 12, N'White Light', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ', N'Scintillez tout au long de la nuit ! ! Cette montre est sûre de vous faire briller ! Entourée d''une rangée entière des cristaux autrichiens, le motif intérieur de cette montre est un cœur fait de cristaux. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', 9, N'45mm SS Case Automatic', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>', N'<p>45mm SS Case Automatic White Dial Brown Strap Men watch.</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', 12, N'45mm SS Case Automatic', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.', N'Montre homme 45mm SS automatique disposant d''un cadran blanc et d''un bracelet en cuir marron.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', 9, N'Citadel Antivirus', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', 12, N'Citadel Antivirus', N'Protégez vos ordinateurs des menaces virales', N'Protégez vos ordinateurs des menaces virales', N'Protégez vos ordinateurs des menaces virales')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 9, N'Orange', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.')
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
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 9, N'Beige straps pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
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
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 12, N'Man-Kind', N'Élégance et moderne masculins. Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.', N'Élégance et moderne masculins.Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.', N'Élégance et moderne masculins.Ce parfum séduisant est fort, pourtant doux, viril pourtant tendre… un mélange délicieux des notes grisantes qui, comme l''homme qui le porte, nous charme avec un mélange moderne de passion et de sensibilité.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 9, N'Surf & Kite', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 12, N'Surf & Kite', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.', N'Eyewear sont conçus pour surfer, windsurfer, kitesurfier, kayaker, kiteboarder, et pour la plupart des sports d''eau et sports extrêmes.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 9, N'Pure Water', N'Pure Water', N'Pure Water', N'Pure Water')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 12, N'Eau Pure', N'Eau Pure', N'Eau Pure', N'Eau Pure')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 9, N'Software Security Pack', N'Software Security Pack', N'Software Security Pack', N'Software Security Pack')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 12, N'Pack Logiciel Securité', N'Pack Logiciel Securité', N'Pack Logiciel Securité', N'Pack Logiciel Securité')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', 9, N'Dress Shirt', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ', N'Italian Collar and Long Sleeves  Dress Shirts', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', 12, N'Chemise de ville', N'Chemise habillée  à manche longue et col italien', N'Chemise habillée  à manche longue et col italien (55% Coton/45% Polyester) ', N'Chemise habillée  à manche longue et col italien')
INSERT [magelia].[Catalog] ([CatalogId], [StartDate], [EndDate], [SellerId], [Code], [IsActive], [IsTaxInclusive], [ExternalId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', NULL, NULL, @sellerId, N'MainCatalog', 1, 0, N'')
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bec9c124-9142-e706-5567-000e56f7f3e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b21823e4-abd6-0407-74cb-000e56f7fe27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ee425c24-729e-0507-c2e7-000e56f7fe27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'493793a6-cb2e-0707-e9f5-000e56f7fe27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'752022fa-2993-0607-e9f5-000e56f7fe27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bbf90a14-8e60-2d07-23a5-000e56f80d2b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ea4eac2c-28d8-2c07-fc97-000e56f80d2a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1f52b6f8-f3c4-2b07-ae7b-000e56f80d2a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f8008cb5-6165-2a07-876d-000e56f80d2a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3e06970b-c564-5107-fb51-000e56f87c12', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5c97745e-7be5-5307-496d-000e56f87c13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'2310c6a3-840a-455d-ab03-7726290ecc05', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fe5a3a37-40b0-5207-225f-000e56f87c13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'57a598db-25d4-5007-ad35-000e56f87c12', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4ad87de4-0d62-7707-08ad-000e56f88791', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8c4c7264-2d1c-7607-e19d-000e56f88790', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd7900da6-9234-7807-2fbd-000e56f88791', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6ff34958-1d52-7907-56cd-000e56f88791', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a06464a6-43d8-c104-8712-000f8c6fc2c5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'df50990a-ff13-c204-8712-000f8c6fc2c5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd872386a-acf4-bf04-8712-000f8c6fc2c5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cde3f529-7312-c004-8712-000f8c6fc2c5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2be3494d-b639-9907-fd5d-000e56f88f6b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a76b227b-1f49-9607-882d-000e56f88f6b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0684fb03-9926-9707-af3d-000e56f88f6b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'eb81f7f2-33d0-9807-d64d-000e56f88f6b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0de77b97-c976-448f-9776-c732a43d65d8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'211e7d5e-877b-0306-fa14-000f8c6fe71a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2f3a9cf3-51db-0406-fa14-000f8c6fe71a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'413e0337-1c99-4b53-aa27-69475c0b0468', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'93ee53ff-5c3d-0106-fa14-000f8c6fe71a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e286b2e7-62ed-0206-fa14-000f8c6fe71a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'826ec505-2b62-bc07-5d7d-000e56f89e8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'37c84b87-1058-be07-848d-000e56f89e8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7e059566-033a-bf07-ab9d-000e56f89e8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'05e0d691-a7f3-bd07-5d7d-000e56f89e8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bfba34d8-521a-4f05-9b33-000f8c6fd27b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'50b7bd89-26f0-4d05-9b33-000f8c6fd27b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'04b33a3a-459d-5005-9b33-000f8c6fd27b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aa786b1c-3c30-4e05-9b33-000f8c6fd27b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1ae86c88-a5ed-a50e-aec2-000e56fc74f3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f21ef24b-57eb-a60e-fce4-000e56fc74f3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'13885ada-e865-a70e-23f5-000e56fc74f4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd52a0b9d-72e7-a80e-4b06-000e56fc74f4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'84774cde-1aa5-d209-666d-000e56f969a4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5313a445-5871-d309-8d7d-000e56f969a4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b7db4fb6-45e4-d409-8d7d-000e56f969a4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'635edc6a-faa2-d509-02ad-000e56f969a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0edbd8e-9650-e407-f0cd-000e56f8a7db', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ebcaf59d-01eb-e507-17dd-000e56f8a7dc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'be62fe8a-6ccb-e307-c9bd-000e56f8a7db', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'011abbbb-b637-e207-a2ad-000e56f8a7db', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'19d54cc3-a883-e504-45f1-000f8c6fc6cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'25dbca78-7cf0-e604-45f1-000f8c6fc6cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'72878a8b-1e5c-e304-45f1-000f8c6fc6cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ba91fd7e-65ec-e404-45f1-000f8c6fc6cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e63fa0c8-0bf9-e101-5b3d-00100b58dde8', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0fec3f5d-cd7d-e201-8247-00100b58dde8', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd98b150d-2a5a-df01-8670-00100b58dde6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f19d2048-b769-e001-0d38-00100b58dde8', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4e4053f0-c05e-cf0e-b3e9-000e56fc8c41', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3510bdb5-3e6a-ce0e-8cd8-000e56fc8c41', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6cf6062d-c204-d10e-020b-000e56fc8c42', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e1a6716a-ca18-d00e-dafa-000e56fc8c41', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'adb2f451-72db-0208-c11d-000e56f8b283', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0229fc08-712c-0508-364d-000e56f8b284', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'155a5d04-dd33-0308-e82d-000e56f8b283', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9ba85c0a-dd1e-0408-0f3d-000e56f8b284', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3b08618a-98df-880e-ad1d-000e56fc626f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a844b1c4-385b-850e-10d9-000e56fc626f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1240df04-aa37-860e-5efb-000e56fc626f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'620f334e-5d8d-870e-860c-000e56fc626f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c90965b3-7fa6-2702-792d-000e544a60d4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1f932ea9-a3c0-2602-2b0c-000e544a60d4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'692105f1-db38-2502-dceb-000e544a60d3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'366d6995-264a-2402-8ec9-000e544a60d3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'ff3d5209-e549-4437-999a-aad44f5340dd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5d399a08-6853-270a-94bd-000e56f98389', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8629c144-9755-2a0a-09ed-000e56f9838a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4e56a4b4-61c8-280a-bbcd-000e56f98389', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1a9a8384-bb1d-290a-e2dd-000e56f98389', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1617a9b4-6183-2808-709d-000e56f8bd44', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9670a6be-054c-2a08-e5cd-000e56f8bd44', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'79f9b27f-4b2b-2b08-0cdd-000e56f8bd45', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e6404d77-a0c8-2908-bebd-000e56f8bd44', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9fb694b5-918c-6002-965a-000e544a8813', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd281c0d4-854a-5f02-4839-000e544a8813', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'91e54477-ad3e-4821-9895-727c5058a4d9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'084b981b-d3cc-5e02-fa18-000e544a8812', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f033dc93-7623-6102-e47b-000e544a8813', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c6e79045-cad4-9602-da24-000e544a9a71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9429398d-b693-9702-2845-000e544a9a72', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7fcda33a-0012-9502-8c03-000e544a9a71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b0e5192e-bdb6-9802-7666-000e544a9a72', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9bd0aeb8-9a13-bb02-02c9-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'78e849ae-86f2-bc02-50ea-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0140bd6-fd8a-bd02-9f0b-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bfd5e276-2324-be02-ed2c-000e544aae71', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'66e41c41-6cde-7105-4408-000f8c6fd66e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'534e3c21-d0b0-7205-4408-000f8c6fd66e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ee73f2ba-b242-7305-4408-000f8c6fd66e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5584a4b2-d77d-7405-4408-000f8c6fd66e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'96467f0b-6e4c-4808-1c2d-000e56f8c4b6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a314922b-1a00-4a08-6a4d-000e56f8c4b6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5c563d79-3f11-4b08-6a4d-000e56f8c4b6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c8c23925-747f-4908-433d-000e56f8c4b6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'78cf7792-d092-6a08-ee3d-000e56f8cbae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4d291fea-4ff8-6808-a01d-000e56f8cbae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a65c5820-bfcd-6908-c72d-000e56f8cbae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4f26531a-a8ac-6b08-154d-000e56f8cbaf', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'93f62d2f-9e8e-2203-be24-000e544aed9c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6c4b89ff-f063-2103-7003-000e544aed9c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'17393fc4-77c9-2303-0c45-000e544aed9d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0183fe9-8281-2403-5a66-000e544aed9d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e1ea77e0-77a1-bd02-878a-000f8bab7a95', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd2d45aab-4b8f-be02-aeae-000f8bab7a95', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fc272de1-63cb-bb02-27c3-000f8bab7a94', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'835133c8-daa5-bc02-6067-000f8bab7a95', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bef7445b-d95e-8a08-44bd-000e56f8d2fe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2e95895c-46fe-8808-f69d-000e56f8d2fd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5ef025f5-4f63-8908-1dad-000e56f8d2fe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'311c5494-56ce-8b08-6bcd-000e56f8d2fe', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c28b9bfe-334e-ae08-b15d-000e56f8dd6e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fff715c7-9ab3-b008-268d-000e56f8dd6f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6fe24b18-ee77-b108-4d9d-000e56f8dd6f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd8ea6e0d-89eb-af08-ff7d-000e56f8dd6e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'30906fb7-356f-d408-03ad-000e56f8e731', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0e56cd3e-0937-d608-51cd-000e56f8e731', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2edd34c5-7367-d508-2abd-000e56f8e731', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7142b9cb-ebce-d708-78dd-000e56f8e731', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0a0b7e0-3239-2905-0f6a-000f8c6fce1a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0c8f0aaa-5781-2b05-0f6a-000f8c6fce1a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'eae53bfb-5f84-2a05-0f6a-000f8c6fce1a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f1d8e7e9-4a9c-2c05-0f6a-000f8c6fce1a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'608e53a4-6f76-4b06-3666-000f8c6fedac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ed34cb43-c1b7-4c06-3666-000f8c6fedac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4863b66f-c043-4906-3666-000f8c6fedac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'69e8adea-3837-4a06-3666-000f8c6fedac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'944ee4f0-3142-0804-bdaa-000e56f78070', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'538deb7a-867b-0904-e4ba-000e56f78070', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2bf7c0cc-b0a5-0704-969a-000e56f78070', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5fb1aad4-f46b-fc08-39fd-000e56f8f14b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6d626349-c719-fb08-12ed-000e56f8f14b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'eb737d4f-200d-fd08-610d-000e56f8f14b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'074d6d98-1194-fa08-ebdd-000e56f8f14a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c8f981bb-927f-1a09-d41d-000e56f8fb2c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f349238c-a3d0-1c09-223d-000e56f8fb2d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ac27271c-3529-1d09-494d-000e56f8fb2d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'231a61fb-e1a4-1b09-fb2d-000e56f8fb2c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aae6451e-80f1-3806-f58b-000e56f7da3e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cf8efca2-63bc-3706-ce7d-000e56f7da3e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a43a15a3-50a0-3506-5953-000e56f7da3e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7ec61318-b2ea-3606-8061-000e56f7da3e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'71e032cf-2592-49a9-a166-6eea06ca4014', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'24efa872-1f12-b905-81d9-000f8c6fdd66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6e6ef700-0027-bb05-81d9-000f8c6fdd66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'16128371-f8b2-bc05-81d9-000f8c6fdd66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'44d8c793-869d-ba05-81d9-000f8c6fdd66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'44819d2b-bdb7-4209-52ad-000e56f9064f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2b510d61-1261-4309-79bd-000e56f9064f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'60d370d5-cf93-4109-2b9d-000e56f9064f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0f4fab06-c41a-4009-048d-000e56f9064f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cdbdb004-7356-2706-73aa-000f8c6fe9f7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0689f20d-80a4-2806-73aa-000f8c6fe9f7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'868bff70-8223-2506-73aa-000f8c6fe9f7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f161229f-07b2-2606-73aa-000f8c6fe9f7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f2a2345b-cbb8-9a04-6538-000f8c6fb8cc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'792f1b24-815d-9b04-c7a8-000f8c6fb8ce', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd3d5cf37-48a0-9904-6538-000f8c6fb8cc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8a5a3976-b441-a206-d201-000e56f7e99a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'50094251-132c-a106-aaf3-000e56f7e99a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bbc66c01-9f7b-a006-83e5-000e56f7e99a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'de712808-de8a-9f06-5cd7-000e56f7e99a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 0, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'bec8d392-4279-4195-9c76-79d7bec0715f', 1, 0)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8321da62-565b-2f1b-c969-000d990ad30e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'33df410e-74d4-141e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b85c097b-a88c-151e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ca9e1386-3a90-161e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ec3e59c-c916-851d-d589-000d990b7930', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'895e9f89-a787-f11d-d025-000d990b9747', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ba356c58-3a79-1b02-c20d-00100b595da1', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'530f8194-6b68-ea01-ce31-00100b59018c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'00575ef8-b936-485c-ac53-0096f50a54b2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f1157cb-f677-49f7-812d-0323ecedf679', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'02e8e67c-f95e-4145-b475-c974016fe4a8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a6ff3a85-a6de-4a04-b3d9-05d722465701', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0b2f7e63-52b6-465f-b144-098e2507c678', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'15124216-83f5-4a96-a776-6de4d33e29a5', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'655c5105-ab28-45e7-94ec-10951861b4d7', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5488b334-d396-4079-bb14-4d45cd97c271', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'31aaed2e-e938-4f43-ba3f-13720419c4db', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'fb908585-2fbe-48d8-a0f8-14bc10f56720', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'8b779da6-e306-44c1-a673-d464ec8a4b34', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f4de9812-877e-41aa-9ace-1baebd3b731d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'734eb62a-9fa4-4ca3-acd7-20297215d996', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9ac78b94-6cdb-462f-8023-27005cac67c2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'881055b6-d532-42c4-9818-15bdb80e1e39', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'016f4014-3566-4fa2-a302-2ae667761d27', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9e252cec-7869-430d-a717-2bd944b7319e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'21890331-11bc-40af-9cec-2c146abe638d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7b9d0950-178e-4f1d-8961-3b43e50409aa', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5f70f381-94e9-46f4-b67d-4b1afc729521', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'44ff3d5b-f560-4b46-8f7b-402d0717d0a6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'9efe8692-bc5e-4ecc-a034-48db75585062', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'7abf2b2e-39df-454a-8a31-4e655fa2e381', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f21839f3-b35f-4203-98c3-50ac05ca0509', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'eab4aec9-6eac-491c-ba34-546e9e498769', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f63da8f-28d9-4d49-917c-5713d360a69a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f853fa3d-0937-470d-a276-5969c2041719', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', NULL)
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
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'4c165f12-29d9-44ef-ae69-95077b8ac738', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'fa5a0fdf-361d-44af-a1db-9accf783e79b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', NULL)
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
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'13b0719d-1441-4d3e-a1de-765cd22c913b', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'66961b58-bbae-46ba-83b8-eb3132289717', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', NULL)
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
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', 9, N'Paris Warehouse (France)')
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'cea219ee-0088-b806-7c0a-000e540c0620', 12, N'Entrepôt de Paris (France)')
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', @sellerId, N'Discount on 1st Order', N'', 1, 0, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:ValuesAction"><a:Condition i:nil="true" /><a:Target>Basket</a:Target><b:Values><b:ValuesAction.DiscountValue><b:CurrencyId>978</b:CurrencyId><b:IncludeTaxes>false</b:IncludeTaxes><b:Value>10</b:Value></b:ValuesAction.DiscountValue></b:Values></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:BinaryCondition"><b:ChildConditionNodes><a:BaseCondition i:type="b:PromoCodeCondition"><b:PromoCode>magelia</b:PromoCode></a:BaseCondition><a:BaseCondition i:type="b:MaxApplicationCondition"><b:MaxApplicationCount>1</b:MaxApplicationCount><b:Type>PerUser</b:Type></a:BaseCondition></b:ChildConditionNodes><b:Operand>And</b:Operand></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', @sellerId, N'SunGlasses-5%', N'', 1, 1000, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:PercentageAction"><a:Condition i:nil="true" /><a:Target>ProductUnit</a:Target><b:Accumulative>false</b:Accumulative><b:IncludeShippingRates>false</b:IncludeShippingRates><b:Percentage>5</b:Percentage></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:CategoriesCondition"><b:CategoryCodes xmlns:c="http://schemas.microsoft.com/2003/10/Serialization/Arrays"><c:string>Sunglasses</c:string></b:CategoryCodes></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail], [MinRequiredUserNameLength]) VALUES (N'52f034c1-7969-9400-4654-000da7b9e2a4', @sellerId, @storeName, 1, 10, 0, 3, 60, NULL, 0, 0, 1, 3)
INSERT [magelia].[StoreConfiguration] ([StoreConfigurationId], [SellerId], [Description], [Code]) VALUES (N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @sellerId, NULL, N'DefaultConfiguration')
INSERT [magelia].[Store] ([StoreId], [SellerId], [StoreConfigurationId], [Code], [IsActive], [AdditionalDataXml], [CustomerSetId], [DefaultCountryId], [BurstedContentTypeAssemblyBinary]) VALUES (@storeId, @sellerId, N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @storeName, 1, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><LastOrderNumber>0</LastOrderNumber></StoreSettings>', N'52f034c1-7969-9400-4654-000da7b9e2a4', 250, NULL)
INSERT [magelia].[OrderChannel] ([OrderChannelId], [Code], [SellerId]) VALUES (N'2e2db52c-bf01-7300-add3-000ebb9168e0', N'Online channel', @sellerId)
INSERT [magelia].[OrderChannel] ([OrderChannelId], [Code], [SellerId]) VALUES (N'7aeef92d-0606-8000-10c0-000ebb917902', N'Point of sales', @sellerId)
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', @sellerId, NULL, N'Metadata')
INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 9)
INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 12)
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
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', 9, N'1st order promotion code discount', N'10€ off for your 1st order')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', 12, N'Remise sur 1ère commande Code promotionnel', N'10€ de remise sur votre 1ère commande')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', 9, N'5% off sunglasses', N'5% off sunglasses')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', 12, N'5% de remise sur lunettes de soleil', N'5% de remise sur lunettes de soleil')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'7d542c6e-243a-4524-9b72-d86169a191eb')
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeId, 9, 1)
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeId, 12, 0)
INSERT [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (@storeId, 978, 1)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'f4949132-3c79-a606-2473-000f8ba8091f', @storeId, 12, 978, 250)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'6af7a1ff-7945-ab06-b835-000f8ba8101d', @storeId, 9, 978, 276)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'50aa5a37-23aa-ac06-b835-000f8ba8101d', @storeId, 9, 978, 380)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'2c453a2f-1223-ae06-b835-000f8ba8101d', @storeId, 9, 978, 724)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'9250fb35-b6a6-9715-cf82-000ebb86140e', @storeId, 250, N'1f94b818-62ec-5e06-5b9f-000e540b1922', N'114789d9-d273-8d13-8cf8-000ebb82dd4f', 12, NULL)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'b0e236ce-f17a-a615-54bf-000ebb863434', @storeId, 724, N'7e97b1cc-a9b6-c405-d50a-000e5409d097', N'40b52b0f-9746-c713-dca2-000ebb8333cb', NULL, NULL)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'0f30a37f-1b06-c300-ab43-000ec75adb99', @storeId, 276, N'ad704b96-fc1b-5205-5ecc-000e5408eba6', N'7522e202-6f64-b513-f261-000ebb83128b', NULL, NULL)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'09d0c445-ee00-cf00-533d-000ec75ae2ca', @storeId, 380, N'92a46a15-0a10-9805-05d1-000e54097118', N'8fdbb4ba-ed6d-a813-ed30-000ebb82fea9', NULL, NULL)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', @storeId, N'NewAccount', N'E-mail sent to confirm that an account has been created', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', @storeId, N'OrderConfirmation', N'Order confirmation e-mail', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', @storeId, N'Contact', N'E-mail sent to the store owner by a visitor who used the contact-us form', 20)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', @storeId, N'PaymentApproved', N'E-mail sent to confirm payment approval for an order', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', @storeId, N'PaymentRejected', N'E-mail sent to inform the customer that the payment request has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', @storeId, N'OrderRejected', N'E-mail sent when an order has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', @storeId, N'NewPassword', N'E-mail sent to confirm that a password has been reset', 20)
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeId, 9, @storeName, NULL)
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeId, 12, @storeName, NULL)
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (@storeId, N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[StoreOrderChannel] ([Store_StoreId], [OrderChannel_OrderChannelId]) VALUES (@storeId, N'2e2db52c-bf01-7300-add3-000ebb9168e0')
INSERT [magelia].[ContentTypeStore] ([ContentType_ContentTypeId], [Store_StoreId]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', @storeId)
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', 9, N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', 9, N'$helper.SetCurrency($data.CurrencyId)
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', 9, N'<!DOCTYPE html>

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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', 9, N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', 9, N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', 9, N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', 12, N'
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', 9, N'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
INSERT [magelia].[MailTemplateLocalized] ([MailTemplateId], [CultureId], [HtmlBodyTemplate], [RawBodyTemplate], [SubjectBodyTemplate], [FromEmail], [FromText]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', 12, N'
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
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'2e2db52c-bf01-7300-add3-000ebb9168e0', 9, N'Online channel', N'')
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'7aeef92d-0606-8000-10c0-000ebb917902', 9, N'Point of sales', N'')
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'451f38ea-0347-2000-d868-000de8ceef83', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Title', N'System.String,mscorlib', 0, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><AdditionalDataItem><Code>IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem><Code>MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem><Code>RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'85e01da3-4f73-2500-1b9d-000de8cef992', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Description', N'System.String,mscorlib', 1, 1, 1, 0, N'<ArrayOfAdditionalDataItem xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><AdditionalDataItem><Code>IsHtml</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:boolean">false</Value></AdditionalDataItem><AdditionalDataItem><Code>MaxLength</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:int">0</Value></AdditionalDataItem><AdditionalDataItem><Code>RegularExpression</Code><Value xmlns:a="http://www.w3.org/2001/XMLSchema" i:type="a:string" /></AdditionalDataItem></ArrayOfAdditionalDataItem>', 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'face23cf-7f5c-a602-6feb-000e789926e6', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Brand_Association', N'Magelia.WebStore.Data.Entities.Brand,Magelia.WebStore.Data', 2, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'265cbcbe-17e9-a702-5ad5-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Carrier_Association', N'Magelia.WebStore.Data.Entities.Carrier,Magelia.WebStore.Data', 3, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'c28570ed-e395-a802-81e3-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Catalog_Association', N'Magelia.WebStore.Data.Entities.Catalog,Magelia.WebStore.Data', 4, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'7543ae72-b248-a902-81e3-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'CatalogCategory_Association', N'Magelia.WebStore.Data.Entities.CatalogCategory,Magelia.WebStore.Data', 5, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'84ecaa6f-4bcc-aa02-a8f6-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Supplier_Association', N'Magelia.WebStore.Data.Entities.Supplier,Magelia.WebStore.Data', 6, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'eba6a925-cdc0-ab02-d008-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Warehouse_Association', N'Magelia.WebStore.Data.Entities.Warehouse,Magelia.WebStore.Data', 7, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'8b996124-4dd7-ac02-f716-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Bundle_Association', N'Magelia.WebStore.Data.Entities.Bundle,Magelia.WebStore.Data', 8, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'c7f0fb93-7cbb-ad02-f716-000e789926e7', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'StandardProduct_Association', N'Magelia.WebStore.Data.Entities.StandardProduct,Magelia.WebStore.Data', 9, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'3af1139c-fb97-ae02-1e29-000e789926e8', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'VariableProduct_Association', N'Magelia.WebStore.Data.Entities.VariableProduct,Magelia.WebStore.Data', 10, 0, 0, 1, NULL, 3)
INSERT [magelia].[ContentTypeAttribute] ([ContentTypeAttributeId], [ContentTypeId], [Code], [TypeName], [Order], [IsRequired], [IsLocalizable], [IsAssociation], [AdditionalData], [AssociationType]) VALUES (N'3ff0c30b-933f-af02-4548-000e789926e8', N'bfdcb975-7e63-2900-f54c-000de8cf0b62', N'Variant_Association', N'Magelia.WebStore.Data.Entities.Variant,Magelia.WebStore.Data', 11, 0, 0, 1, NULL, 3)
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', 9, N'DHL')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'5a296e6c-6bc7-ea01-e7c9-000e5402ea1b', 12, N'DHL')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', 9, N'UPS')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', 12, N'UPS')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', 9, N'Fedex')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', 12, N'Fedex')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'daa69a54-60ed-fd13-7ae3-000ebb83947e', 9, N'Standard delivery')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'daa69a54-60ed-fd13-7ae3-000ebb83947e', 12, N'Livraison standard')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'6eed3882-ce41-1f14-a88f-000ebb83dee7', 9, N'Corsica (Air delivery)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'6eed3882-ce41-1f14-a88f-000ebb83dee7', 12, N'Corse par avion')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'168910df-5680-6114-5d90-000ebb844256', 9, N'Express delivery ')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'168910df-5680-6114-5d90-000ebb844256', 12, N'Livraison express')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'18ada672-eb9c-b214-ee2f-000ebb84a35d', 9, N'Standard delivery')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'18ada672-eb9c-b214-ee2f-000ebb84a35d', 12, N'Livraison standard')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'2093e0f3-8b16-d214-454c-000ebb84c02e', 9, N'Standard delivery')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'2093e0f3-8b16-d214-454c-000ebb84c02e', 12, N'Livraison standard')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'b34fc40b-e260-f214-dd2c-000ebb84eca7', 9, N'Standard delivery')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'b34fc40b-e260-f214-dd2c-000ebb84eca7', 12, N'Livraison standard')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'35f18a00-c768-1915-4837-000ebb85127e', 9, N'Canary  (Air delivery)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'35f18a00-c768-1915-4837-000ebb85127e', 12, N'Les canaries par avion')
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'439a05a6-bc09-cd00-9e7c-00100b557509', N'168910df-5680-6114-5d90-000ebb844256', CAST(0.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'bca7fcad-7e1c-ce00-9e7c-00100b557509', N'168910df-5680-6114-5d90-000ebb844256', CAST(300.00000 AS Decimal(18, 5)), NULL, CAST(35.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'f17a38e2-655e-e800-ae5e-00100b5593fb', N'daa69a54-60ed-fd13-7ae3-000ebb83947e', CAST(0.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1bd95e54-722c-e900-d56e-00100b5593fb', N'daa69a54-60ed-fd13-7ae3-000ebb83947e', CAST(300.00000 AS Decimal(18, 5)), NULL, CAST(25.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'877898da-545c-fe00-43f6-00100b5703e6', N'2093e0f3-8b16-d214-454c-000ebb84c02e', CAST(0.00000 AS Decimal(18, 5)), CAST(400.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'12b8b361-9412-ff00-6b25-00100b5703e6', N'2093e0f3-8b16-d214-454c-000ebb84c02e', CAST(400.00000 AS Decimal(18, 5)), NULL, CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'fedc2239-a5fc-1f01-7de6-00100b57276a', N'18ada672-eb9c-b214-ee2f-000ebb84a35d', CAST(0.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'10cef634-dd7a-2001-7de6-00100b57276a', N'18ada672-eb9c-b214-ee2f-000ebb84a35d', CAST(5.00000 AS Decimal(18, 5)), NULL, CAST(35.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'a2558046-1090-4001-3739-00100b574282', N'b34fc40b-e260-f214-dd2c-000ebb84eca7', CAST(0.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'b78a705b-7702-4101-3739-00100b574282', N'b34fc40b-e260-f214-dd2c-000ebb84eca7', CAST(300.00000 AS Decimal(18, 5)), NULL, CAST(38.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'e348f47f-7339-4a12-97e3-00100d4d0373', N'6eed3882-ce41-1f14-a88f-000ebb83dee7', CAST(0.00000 AS Decimal(18, 5)), CAST(2000.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'd3a69287-c437-4b12-3420-00100d4d0374', N'6eed3882-ce41-1f14-a88f-000ebb83dee7', CAST(2000.00000 AS Decimal(18, 5)), CAST(40000.00000 AS Decimal(18, 5)), CAST(26.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'0e31b966-0a2c-4c12-3420-00100d4d0374', N'6eed3882-ce41-1f14-a88f-000ebb83dee7', CAST(40000.00000 AS Decimal(18, 5)), NULL, CAST(30.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'66ec8666-9466-371a-f5a3-00100d4d6db7', N'35f18a00-c768-1915-4837-000ebb85127e', CAST(0.00000 AS Decimal(18, 5)), CAST(5000.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1c44f8bd-5a4e-381a-f5a3-00100d4d6db7', N'35f18a00-c768-1915-4837-000ebb85127e', CAST(5000.00000 AS Decimal(18, 5)), NULL, CAST(45.00000 AS Decimal(18, 5)), 978)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'd94c3314-492e-5305-d3fe-000e5408eba6', N'ad704b96-fc1b-5205-5ecc-000e5408eba6', 3, 276, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'20311bd6-c08a-9905-05d1-000e54097118', N'92a46a15-0a10-9805-05d1-000e54097118', 3, 380, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'62d57888-8569-c505-d50a-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'c08f1649-25bb-c605-d50a-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'639719a9-a3af-4c6a-958f-fffcfe0680fa', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'345cf1c7-ee44-c705-fc1b-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'a6731792-2e63-4d3c-abcf-91f780db2b52', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'db116626-081d-c805-fc1b-000e5409d097', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'e78f3050-d71e-4e2c-be7b-e5b1606d28d6', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'72eaa775-e8d0-c905-232c-000e5409d098', N'7e97b1cc-a9b6-c405-d50a-000e5409d097', 3, 724, N'0a050dab-6601-4b59-b9a8-5b033b4560c3', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'0f006f53-463d-5f06-5b9f-000e540b1922', N'1f94b818-62ec-5e06-5b9f-000e540b1922', 3, 250, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'79cfcd63-976b-a913-ed30-000ebb82fea9', N'8fdbb4ba-ed6d-a813-ed30-000ebb82fea9', 3, 380, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'400f5488-e801-b613-f261-000ebb83128b', N'7522e202-6f64-b513-f261-000ebb83128b', 3, 276, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'caf93538-a758-c813-dca2-000ebb8333cb', N'40b52b0f-9746-c713-dca2-000ebb8333cb', 3, 724, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'4d5901ce-ebe9-c913-dca2-000ebb8333cb', N'40b52b0f-9746-c713-dca2-000ebb8333cb', 3, 724, N'a6731792-2e63-4d3c-abcf-91f780db2b52', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'35149850-a638-d613-803f-000ebb834969', N'4faee487-d3f4-d513-803f-000ebb834969', 3, 724, N'a6731792-2e63-4d3c-abcf-91f780db2b52', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'e3b21d98-5356-eb00-23cf-000f8ba20456', N'114789d9-d273-8d13-8cf8-000ebb82dd4f', 3, 250, NULL, N'^(([0-1][1-9])|(2[1-9])|([3-8][0-9])|(9[0-6]))[0-9]{3}$', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'fb96fd70-931d-f900-6cc6-000f8ba24e2c', N'470ab639-d8f2-9b13-47cf-000ebb82ea73', 3, 250, NULL, N'^20[0-9]{3}$', 0)
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
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'114789d9-d273-8d13-8cf8-000ebb82dd4f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'470ab639-d8f2-9b13-47cf-000ebb82ea73', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'8fdbb4ba-ed6d-a813-ed30-000ebb82fea9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'7522e202-6f64-b513-f261-000ebb83128b', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'40b52b0f-9746-c713-dca2-000ebb8333cb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'4faee487-d3f4-d513-803f-000ebb834969', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 9, N'Default catalog', N'Default catalog long description', N'Default catalog short description')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 12, N'Catalogue par défaut', N'Catalogue par défaut description longue', N'Catalogue par défaut description courte')
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 978)
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
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6f5ebb98-6762-1e02-92f2-000e544a60d1', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 840, 1, CAST(308.00000 AS Decimal(18, 5)), CAST(335.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a40b95fe-ed85-1f02-ba03-000e544a60d1', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 978, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(310.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c073260f-721a-5802-4c61-000e544a8811', N'9e252cec-7869-430d-a717-2bd944b7319e', 840, 1, CAST(310.00000 AS Decimal(18, 5)), CAST(330.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2ec7362d-946d-5902-4c61-000e544a8811', N'9e252cec-7869-430d-a717-2bd944b7319e', 978, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3e7b8ae0-108e-8f02-902b-000e544a9a6f', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 840, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(360.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f861e657-7a05-9002-902b-000e544a9a6f', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a48e9068-606c-b502-dfe1-000e544aae6e', N'f7728012-2fbf-4222-8a6f-c551419ce068', 840, 1, CAST(480.00000 AS Decimal(18, 5)), CAST(500.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c26aa5b3-d4be-b602-dfe1-000e544aae6e', N'f7728012-2fbf-4222-8a6f-c551419ce068', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4791e45a-f25b-1b03-742b-000e544aed9a', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 840, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(380.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fce02c3e-b452-1c03-742b-000e544aed9a', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 978, 1, CAST(225.00000 AS Decimal(18, 5)), CAST(235.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c7987b46-650b-0004-5e1a-000e56f7806f', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 840, 1, CAST(430.00000 AS Decimal(18, 5)), CAST(450.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd8c8ac04-267d-0104-5e1a-000e56f7806f', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 978, 1, CAST(250.00000 AS Decimal(18, 5)), CAST(290.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'78bc5212-6135-1f06-abb9-000e56f7da3c', N'0b2f7e63-52b6-465f-b144-098e2507c678', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'117a80ac-05ef-2006-d2c7-000e56f7da3c', N'0b2f7e63-52b6-465f-b144-098e2507c678', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'35b10f9a-2e3b-2306-d2c7-000e56f7da3c', N'00575ef8-b936-485c-ac53-0096f50a54b2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'87ec2f76-8fef-2406-d2c7-000e56f7da3c', N'00575ef8-b936-485c-ac53-0096f50a54b2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e94a70b9-c938-2706-f9d5-000e56f7da3c', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'22e56c72-43ca-2806-f9d5-000e56f7da3c', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8b9a44db-cc56-2b06-f9d5-000e56f7da3c', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'38539582-e451-2c06-20e3-000e56f7da3d', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e711c7f2-e261-2f06-20e3-000e56f7da3d', N'2f1157cb-f677-49f7-812d-0323ecedf679', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'48ea04eb-c677-3006-20e3-000e56f7da3d', N'2f1157cb-f677-49f7-812d-0323ecedf679', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f49b9141-72ea-8106-af3d-000e56f7e998', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8bc89d27-86af-8206-af3d-000e56f7e998', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1bd77663-ec6e-8506-af3d-000e56f7e998', N'7209d388-381c-466a-9afc-80b3989a38c0', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7d3bb58a-000c-8606-af3d-000e56f7e998', N'7209d388-381c-466a-9afc-80b3989a38c0', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'267070e4-e9de-8906-d64b-000e56f7e998', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8c1f557e-d063-8a06-d64b-000e56f7e998', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f17e8a33-7d2f-8d06-d64b-000e56f7e998', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c711fd8d-ad9c-8e06-fd59-000e56f7e998', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ddddd6d4-77c8-9106-fd59-000e56f7e998', N'15519388-9bff-454f-b0c1-93ae7c852e51', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8345615d-403f-9206-fd59-000e56f7e998', N'15519388-9bff-454f-b0c1-93ae7c852e51', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6983a217-a99b-9506-2467-000e56f7e999', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b218ec6b-1b75-9606-2467-000e56f7e999', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eb728470-76e0-9906-4b75-000e56f7e999', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4ec7c2f1-a300-9a06-4b75-000e56f7e999', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b6316de0-dd1c-d406-1cf7-000e56f7f3e4', N'33df410e-74d4-141e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'399ab548-3900-d506-1cf7-000e56f7f3e4', N'33df410e-74d4-141e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e1c415af-2564-d806-1cf7-000e56f7f3e4', N'b85c097b-a88c-151e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ebbff7f0-3136-d906-4405-000e56f7f3e4', N'b85c097b-a88c-151e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cdea04ef-5e3e-dc06-4405-000e56f7f3e4', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6f49f7e8-8fd1-dd06-4405-000e56f7f3e4', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a07d07d3-93a9-e006-6b13-000e56f7f3e4', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c53e6157-ce03-e106-6b13-000e56f7f3e4', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b096c983-6aad-fe06-8a77-000e56f7fe26', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 840, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'949fe1aa-67d0-ff06-8a77-000e56f7fe26', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'79010d15-fc8b-2407-4efd-000e56f80d29', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 840, 1, CAST(330.00000 AS Decimal(18, 5)), CAST(350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'27d4e10d-1a48-2507-4efd-000e56f80d29', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fb8b975f-575a-4a07-c2e1-000e56f87c11', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 840, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4740a08b-a290-4b07-c2e1-000e56f87c11', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 978, 1, CAST(65.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bbb2efd4-8b85-7007-d02d-000e56f8878f', N'66961b58-bbae-46ba-83b8-eb3132289717', 840, 1, CAST(330.00000 AS Decimal(18, 5)), CAST(350.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eb386c78-0b2a-7107-f73d-000e56f8878f', N'66961b58-bbae-46ba-83b8-eb3132289717', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8eafd9e5-bae8-9007-76bd-000e56f88f6a', N'97851de3-ea87-4780-809d-c0801758a765', 840, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a6087cb2-55bb-9107-76bd-000e56f88f6a', N'97851de3-ea87-4780-809d-c0801758a765', 978, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'83f711be-3a0b-b607-24fd-000e56f89e8b', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 840, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(380.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0c2517f3-d9ae-b707-24fd-000e56f89e8b', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2c3025fa-9533-dc07-6a2d-000e56f8a7da', N'eab4aec9-6eac-491c-ba34-546e9e498769', 840, 1, CAST(300.00000 AS Decimal(18, 5)), CAST(310.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5ee43b52-a91e-dd07-6a2d-000e56f8a7da', N'eab4aec9-6eac-491c-ba34-546e9e498769', 978, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7e13e1b8-2d7f-fc07-d6bd-000e56f8b282', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8893dade-3df6-fd07-d6bd-000e56f8b282', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(80.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6616dcc1-f64b-2208-5f2d-000e56f8bd43', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 840, 1, CAST(310.00000 AS Decimal(18, 5)), CAST(330.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bfc46f12-2325-2308-863d-000e56f8bd43', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b3af31e8-a085-4208-0abd-000e56f8c4b5', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(165.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1f3e0e69-ad78-4308-0abd-000e56f8c4b5', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 978, 1, CAST(25.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ff161c22-df77-6208-b5bd-000e56f8cbad', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3a4c647d-4482-6308-b5bd-000e56f8cbad', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 978, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'707b19c2-bf82-8208-e52d-000e56f8d2fc', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0d61d21e-cd12-8308-e52d-000e56f8d2fc', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 978, 1, CAST(85.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a5ee5f64-1f79-a808-9fed-000e56f8dd6d', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 840, 1, CAST(390.00000 AS Decimal(18, 5)), CAST(410.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'95104ed2-7cbd-a908-9fed-000e56f8dd6d', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b20a996d-a4c5-ce08-194d-000e56f8e730', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 840, 1, CAST(365.00000 AS Decimal(18, 5)), CAST(385.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5d17bda7-8a3f-cf08-194d-000e56f8e730', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 978, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(36.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b3a1508c-631d-f408-da6d-000e56f8f149', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 840, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(380.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'dbf328a1-5e8d-f508-da6d-000e56f8f149', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'66549310-1196-1409-c2ad-000e56f8fb2b', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 840, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7ebdc0a8-a776-1509-c2ad-000e56f8fb2b', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'18a796f6-6639-3a09-f31d-000e56f9064d', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 840, 1, CAST(380.00000 AS Decimal(18, 5)), CAST(410.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8c6c61e4-bb26-3b09-f31d-000e56f9064d', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 978, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ea881de0-cb72-cc09-7c0d-000e56f969a3', N'a2bdf0a5-73c2-475d-b259-922257f44631', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'88f62aa7-3bd8-cd09-7c0d-000e56f969a3', N'a2bdf0a5-73c2-475d-b259-922257f44631', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a99c6528-83da-210a-aa5d-000e56f98388', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 840, 1, CAST(230.00000 AS Decimal(18, 5)), CAST(250.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'314a6418-8f8c-220a-d16d-000e56f98388', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 978, 1, CAST(39.00000 AS Decimal(18, 5)), CAST(49.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b271fc58-2d0f-7f0e-d851-000e56fc626d', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 840, 1, CAST(550.00000 AS Decimal(18, 5)), CAST(560.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1b7f78b7-d32d-800e-d851-000e56fc626d', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ab55c2dd-aa66-9f0e-9d4b-000e56fc74f2', N'1635397e-421b-41a6-a396-c509425a392b', 840, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(290.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'65ddf2c4-9019-a00e-9d4b-000e56fc74f2', N'1635397e-421b-41a6-a396-c509425a392b', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(155.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'59e6e9e9-8e58-c80e-a272-000e56fc8c40', N'21890331-11bc-40af-9cec-2c146abe638d', 840, 1, CAST(360.00000 AS Decimal(18, 5)), CAST(370.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'57552eff-4654-c90e-a272-000e56fc8c40', N'21890331-11bc-40af-9cec-2c146abe638d', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(140.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0eaf7e9d-45fc-b902-c7ef-000f8bab7a92', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'61e90222-5d46-ba02-1620-000f8bab7a93', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(6.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e639d7f7-bf72-9704-02cc-000f8c6fb8ca', N'016f4014-3566-4fa2-a302-2ae667761d27', 840, 1, CAST(310.00000 AS Decimal(18, 5)), CAST(320.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9112d089-8c39-9804-02cc-000f8c6fb8ca', N'016f4014-3566-4fa2-a302-2ae667761d27', 978, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'912b6459-1522-b904-8712-000f8c6fc2c5', N'655c5105-ab28-45e7-94ec-10951861b4d7', 978, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bd3d765b-96a5-ba04-8712-000f8c6fc2c5', N'655c5105-ab28-45e7-94ec-10951861b4d7', 840, 1, CAST(240.00000 AS Decimal(18, 5)), CAST(250.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'58b9e8f9-f079-bb04-8712-000f8c6fc2c5', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2fc1956a-7ab8-bc04-8712-000f8c6fc2c5', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 840, 1, CAST(270.00000 AS Decimal(18, 5)), CAST(280.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8b95ce37-fc09-bd04-8712-000f8c6fc2c5', N'a059713d-a032-4abf-99d9-72ead8819e31', 840, 1, CAST(170.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'498c5c98-b2e0-be04-8712-000f8c6fc2c5', N'a059713d-a032-4abf-99d9-72ead8819e31', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5c51f744-ff90-dd04-45f1-000f8c6fc6cb', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'eca14963-7a22-de04-45f1-000f8c6fc6cb', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(145.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c232ad46-12b2-df04-45f1-000f8c6fc6cb', N'18e50023-3749-49f5-aad5-c860ceb68aff', 840, 1, CAST(155.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'966e7895-1c56-e004-45f1-000f8c6fc6cb', N'18e50023-3749-49f5-aad5-c860ceb68aff', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6ab822ce-6c9b-e104-45f1-000f8c6fc6cb', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 840, 1, CAST(172.00000 AS Decimal(18, 5)), CAST(178.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'57574d35-09b3-e204-45f1-000f8c6fc6cb', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 978, 1, CAST(167.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'58abe7d3-4375-2305-0f6a-000f8c6fce1a', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'47a51567-6aeb-2405-0f6a-000f8c6fce1a', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5965ef31-300c-2505-0f6a-000f8c6fce1a', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(67.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'03818a57-2906-2605-0f6a-000f8c6fce1a', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ab6ea51b-662f-2705-0f6a-000f8c6fce1a', N'685ae003-b048-42d6-9771-7b3624f74a2d', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(36.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b1112848-fd93-2805-0f6a-000f8c6fce1a', N'685ae003-b048-42d6-9771-7b3624f74a2d', 840, 1, CAST(38.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'89f3621d-2edb-4705-9b33-000f8c6fd27b', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'12266c44-2279-4805-9b33-000f8c6fd27b', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 840, 1, CAST(72.00000 AS Decimal(18, 5)), CAST(76.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cbabb31f-10cb-4905-9b33-000f8c6fd27b', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 978, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(47.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'80d3e712-acae-4a05-9b33-000f8c6fd27b', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 840, 1, CAST(52.00000 AS Decimal(18, 5)), CAST(58.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ba96e9eb-7712-4b05-9b33-000f8c6fd27b', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 840, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(34.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4262148a-32d7-4c05-9b33-000f8c6fd27b', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 978, 1, CAST(27.00000 AS Decimal(18, 5)), CAST(28.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8876fade-7798-6b05-4408-000f8c6fd66e', N'e1470383-3f50-4c1d-9227-8656608ceedc', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fb1e9204-24e4-6c05-4408-000f8c6fd66e', N'e1470383-3f50-4c1d-9227-8656608ceedc', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd345bf89-40ff-6d05-4408-000f8c6fd66e', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 978, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e769041d-704e-6e05-4408-000f8c6fd66e', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 840, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ff0d5e22-8568-6f05-4408-000f8c6fd66e', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4aac264f-5874-7005-4408-000f8c6fd66e', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c6e25cca-751f-b305-81d9-000f8c6fdd66', N'f853fa3d-0937-470d-a276-5969c2041719', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(56.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a078dd9d-a003-b405-81d9-000f8c6fdd66', N'f853fa3d-0937-470d-a276-5969c2041719', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'56373397-81b6-b505-81d9-000f8c6fdd66', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fe1e6c3c-7873-b605-81d9-000f8c6fdd66', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 840, 1, CAST(73.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd7d3b59a-9797-b705-81d9-000f8c6fdd66', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a445defd-cebe-b805-81d9-000f8c6fdd66', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 840, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(43.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'95df08dd-b9e1-fb05-fa14-000f8c6fe71a', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9a7dfc41-cd57-fc05-fa14-000f8c6fe71a', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 840, 1, CAST(58.00000 AS Decimal(18, 5)), CAST(62.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aea0c154-22e0-fd05-fa14-000f8c6fe71a', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 840, 1, CAST(82.00000 AS Decimal(18, 5)), CAST(86.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'27fd00a9-9643-fe05-fa14-000f8c6fe71a', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 978, 1, CAST(76.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1d68ec68-a46e-ff05-fa14-000f8c6fe71a', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 978, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aadae637-e092-0006-fa14-000f8c6fe71a', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(44.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ff600b86-f728-1f06-73aa-000f8c6fe9f7', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9469213e-f829-2006-73aa-000f8c6fe9f7', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 840, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(175.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'203300e8-ae79-2106-73aa-000f8c6fe9f7', N'796be820-7f83-4622-838b-85943bb6792f', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'cb47c5ae-079b-2206-73aa-000f8c6fe9f7', N'796be820-7f83-4622-838b-85943bb6792f', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1da958d7-0189-2306-73aa-000f8c6fe9f7', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(95.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'adf4c672-cf51-2406-73aa-000f8c6fe9f7', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9e431ee7-1ff4-4306-3666-000f8c6fedac', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 978, 1, CAST(49.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c5399148-cc63-4406-3666-000f8c6fedac', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'78466a6e-c5fe-4506-3666-000f8c6fedac', N'9efe8692-bc5e-4ecc-a034-48db75585062', 840, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(82.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'51b1d9cb-830d-4606-3666-000f8c6fedac', N'9efe8692-bc5e-4ecc-a034-48db75585062', 978, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(73.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'504b5d8a-f697-4706-3666-000f8c6fedac', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 978, 1, CAST(89.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6450fd3e-9af3-4806-3666-000f8c6fedac', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'acee854e-7745-de01-b1ba-00100b58dde4', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 978, 1, CAST(39.00000 AS Decimal(18, 5)), CAST(49.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ac7fff53-b9b3-3e00-109b-00100baa1685', N'ba356c58-3a79-1b02-c20d-00100b595da1', 978, 1, CAST(3.50000 AS Decimal(18, 5)), CAST(4.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'8321da62-565b-2f1b-c969-000d990ad30e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'ba356c58-3a79-1b02-c20d-00100b595da1', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 10)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 10)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'016f4014-3566-4fa2-a302-2ae667761d27', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'016f4014-3566-4fa2-a302-2ae667761d27', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'9e252cec-7869-430d-a717-2bd944b7319e', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'9e252cec-7869-430d-a717-2bd944b7319e', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 11)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'21890331-11bc-40af-9cec-2c146abe638d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'21890331-11bc-40af-9cec-2c146abe638d', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'44ff3d5b-f560-4b46-8f7b-402d0717d0a6', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'eab4aec9-6eac-491c-ba34-546e9e498769', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'eab4aec9-6eac-491c-ba34-546e9e498769', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'a2bdf0a5-73c2-475d-b259-922257f44631', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'a2bdf0a5-73c2-475d-b259-922257f44631', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 3)
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
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'66961b58-bbae-46ba-83b8-eb3132289717', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'66961b58-bbae-46ba-83b8-eb3132289717', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'4b7dbec8-49db-4c99-80f9-f09d206e1604', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'71c787e3-d779-492d-9700-fbedf6353093', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'71c787e3-d779-492d-9700-fbedf6353093', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 9)
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
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 9, N'Sunglasses', N'<p>Sunglasses</p>', N'<p>Sunglasses</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 12, N'Lunettes de soleil', N'Description courte catégorie Lunettes de soleil', N'Description longue catégorie Lunettes de soleil')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', 9, N'Sporting Goods', N'Sporting Goods', N'Sporting Goods')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', 9, N'City Sunglasses', N'City Sunglasses', N'City Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', 9, N'Men''s Clothes', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>', N'<p>Men''s Clothes : sporting goods, shirts, shoes, etc.</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', 12, N'Vêtement pour hommes', N'<p>Article de sport, T-Shirts, chaussures, etc.</p>', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', 9, N'Men''s Fragrances', N'<p>Men''s Fragrances</p>', N'<p>Men''s Fragrances</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', 12, N'Parfums pour Homme', N'<p>Parfums pour Homme</p>', N'<p>Parfums pour Homme</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', 9, N'Shoes', N'Shoes', N'Shoes')
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 5)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 3)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 6)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 4)
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
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'54ab5f16-4955-4704-b392-000f8c6f9526', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 2, 39)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'1f00c476-8974-5804-8bb3-000f8c6f9cf6', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 1, 14)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'f1619c01-9e90-6b04-55e6-000f8c6fa510', N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 2, 15)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'863e14ee-13c3-4a9a-97cc-2b2384e70845', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 0, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'3b41b916-adc8-492f-a6c3-363894f3ee18', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 1, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'a4d685c9-206f-4525-b259-4a2c21389574', N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', N'cddde355-e651-47b6-87ca-845afeb43fb1', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', N'bcee6a24-2b82-495d-a772-23f1b706077c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'381a77f4-eef6-4e10-84e4-5e06168eb041', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 0, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'4499d369-9384-4074-bab1-adf1c417b337', 2, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'0038c753-40e0-473f-9383-7d0d08693adc', N'4e637207-dc3a-4b31-a3de-b09380976b35', N'cddde355-e651-47b6-87ca-845afeb43fb1', 1, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'a7b0652a-2d4b-4968-b774-82667dfe5981', N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', N'4499d369-9384-4074-bab1-adf1c417b337', 0, 31)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'7f0edb45-a7c3-400a-a507-8e8705b15c33', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'4499d369-9384-4074-bab1-adf1c417b337', 1, 30)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'9500fdb3-b5fc-42e5-9162-b08cd827e17d', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 0, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'6bbf1767-74e9-422e-817b-dff0a40aec24', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 0, 0)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'cddde355-e651-47b6-87ca-845afeb43fb1', 2, 30)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', N'cddde355-e651-47b6-87ca-845afeb43fb1', 3, 0)
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'33-34')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'59c23fbd-5421-4455-8845-33067f319c34', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'34-35')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', N'd7c107bd-7a17-4748-9489-64a2d1ceab71', N'36-37')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'84e3d379-c577-4215-b57f-d45d66276b5f', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'M')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'fc4eaa3e-ad43-4f1e-abe4-50b3c39c51d9', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'N')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'4b6e4c59-61d2-4e52-b1b9-a256465846e5', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'R')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'68f3d6b5-a65f-43b6-a034-d8f74d736962', N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', N'W')
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'52db81ed-e209-7204-cb17-000f8ba661c6', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'ml')
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
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ad3fefe4-fd5a-1b02-5a6d-000e544a60d0', N'be496881-d786-1902-be2b-000e544a60cf', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f93b6680-4cb6-5502-61fe-000e544a8810', N'01e61b88-4e52-5302-c5bc-000e544a880f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c26681bd-818d-8c02-a5c8-000e544a9a6e', N'b23e38cd-a27f-8a02-57a7-000e544a9a6e', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0b4d4c9b-01fa-b202-1c8e-000e544aae6e', N'b341e3c0-650a-b002-ce6d-000e544aae6d', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'028f7ea2-2f32-1803-62b7-000e544aed99', N'28ffeeba-f8f3-1603-1496-000e544aed99', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'510546ee-dac0-fd03-c1da-000e56f7806e', N'c9330422-4d44-fb03-9aca-000e56f7806e', N'9500fdb3-b5fc-42e5-9162-b08cd827e17d', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'31a8e06e-852c-0506-1815-000e56f7da38', N'536f308d-6fbf-0406-f107-000e56f7da37', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bed274e4-36ad-0606-6631-000e56f7da38', N'536f308d-6fbf-0406-f107-000e56f7da37', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2408ccd3-3af7-0706-6631-000e56f7da38', N'536f308d-6fbf-0406-f107-000e56f7da37', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bc501b25-a1b7-0806-6631-000e56f7da38', N'536f308d-6fbf-0406-f107-000e56f7da37', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'aa3d7632-b4a1-0a06-2977-000e56f7da39', N'9720d4cd-4fcd-0906-2977-000e56f7da39', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cc137178-f5b9-0b06-2977-000e56f7da39', N'9720d4cd-4fcd-0906-2977-000e56f7da39', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6d471a38-5af3-0c06-2977-000e56f7da39', N'9720d4cd-4fcd-0906-2977-000e56f7da39', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b8b4c977-453c-0d06-2977-000e56f7da39', N'9720d4cd-4fcd-0906-2977-000e56f7da39', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f0dd1660-d2bd-0f06-c5af-000e56f7da39', N'bcfa1d19-2a71-0e06-c5af-000e56f7da39', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7ae8073f-2bb9-1006-ecbd-000e56f7da39', N'bcfa1d19-2a71-0e06-c5af-000e56f7da39', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'62a72697-1b02-1106-ecbd-000e56f7da39', N'bcfa1d19-2a71-0e06-c5af-000e56f7da39', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2afe5471-53af-1206-ecbd-000e56f7da39', N'bcfa1d19-2a71-0e06-c5af-000e56f7da39', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2f502f08-feed-1406-61e7-000e56f7da3a', N'b2c03442-6bb1-1306-61e7-000e56f7da3a', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ee577646-8c16-1506-61e7-000e56f7da3a', N'b2c03442-6bb1-1306-61e7-000e56f7da3a', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bd5b6dff-7f29-1606-61e7-000e56f7da3a', N'b2c03442-6bb1-1306-61e7-000e56f7da3a', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'afa8cdba-1114-1706-61e7-000e56f7da3a', N'b2c03442-6bb1-1306-61e7-000e56f7da3a', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'45af1659-5176-1906-fe1f-000e56f7da3a', N'f4815f45-92c0-1806-fe1f-000e56f7da3a', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b2fbcd77-b641-1a06-fe1f-000e56f7da3a', N'f4815f45-92c0-1806-fe1f-000e56f7da3a', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd5e24307-2d96-1b06-fe1f-000e56f7da3a', N'f4815f45-92c0-1806-fe1f-000e56f7da3a', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5a381aee-82ff-1c06-fe1f-000e56f7da3a', N'f4815f45-92c0-1806-fe1f-000e56f7da3a', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'affda21d-ebc6-5d06-e329-000e56f7e992', N'933ff2c8-7745-5c06-e329-000e56f7e992', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cdf72bc4-1a4f-5e06-e329-000e56f7e992', N'933ff2c8-7745-5c06-e329-000e56f7e992', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'aa992e1e-7638-5f06-e329-000e56f7e992', N'933ff2c8-7745-5c06-e329-000e56f7e992', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'28f82711-b75b-6006-e329-000e56f7e992', N'933ff2c8-7745-5c06-e329-000e56f7e992', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5ef4db7f-cd91-6206-5853-000e56f7e993', N'077c537a-83fd-6106-5853-000e56f7e993', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a1919699-6963-6306-5853-000e56f7e993', N'077c537a-83fd-6106-5853-000e56f7e993', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'614c4df5-7f87-6406-5853-000e56f7e993', N'077c537a-83fd-6106-5853-000e56f7e993', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'193922dd-1300-6506-5853-000e56f7e993', N'077c537a-83fd-6106-5853-000e56f7e993', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'80bd836c-5213-6706-cd7d-000e56f7e993', N'ae93922e-e725-6606-cd7d-000e56f7e993', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4fbacb38-3ff1-6806-cd7d-000e56f7e993', N'ae93922e-e725-6606-cd7d-000e56f7e993', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'26a0baa9-ff3f-6906-cd7d-000e56f7e993', N'ae93922e-e725-6606-cd7d-000e56f7e993', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'87719031-959d-6a06-cd7d-000e56f7e993', N'ae93922e-e725-6606-cd7d-000e56f7e993', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'08b33043-7047-6c06-69b5-000e56f7e994', N'7fb0fbba-8ade-6b06-69b5-000e56f7e994', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'57925465-d95a-6d06-69b5-000e56f7e994', N'7fb0fbba-8ade-6b06-69b5-000e56f7e994', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a5c810ce-3d4d-6e06-69b5-000e56f7e994', N'7fb0fbba-8ade-6b06-69b5-000e56f7e994', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'62ee4f21-22cf-6f06-69b5-000e56f7e994', N'7fb0fbba-8ade-6b06-69b5-000e56f7e994', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4bbb1569-79ec-7106-05ed-000e56f7e995', N'9f393b0f-2fea-7006-05ed-000e56f7e995', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'46b0f2b2-f869-7206-05ed-000e56f7e995', N'9f393b0f-2fea-7006-05ed-000e56f7e995', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'675f26e7-03c5-7306-05ed-000e56f7e995', N'9f393b0f-2fea-7006-05ed-000e56f7e995', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8f561466-628f-7406-05ed-000e56f7e995', N'9f393b0f-2fea-7006-05ed-000e56f7e995', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9ed1229d-ea4d-7606-7b17-000e56f7e995', N'1d7628bd-af1c-7506-7b17-000e56f7e995', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'94aed5cc-c898-7706-7b17-000e56f7e995', N'1d7628bd-af1c-7506-7b17-000e56f7e995', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7deb8590-092e-7806-7b17-000e56f7e995', N'1d7628bd-af1c-7506-7b17-000e56f7e995', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7b578de0-8b90-7906-7b17-000e56f7e995', N'1d7628bd-af1c-7506-7b17-000e56f7e995', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'34803185-a8bb-7b06-174f-000e56f7e996', N'46c31e12-2848-7a06-174f-000e56f7e996', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'08a7a981-f238-7c06-174f-000e56f7e996', N'46c31e12-2848-7a06-174f-000e56f7e996', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ecb86996-5b2a-7d06-174f-000e56f7e996', N'46c31e12-2848-7a06-174f-000e56f7e996', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'53479fec-7e00-7e06-174f-000e56f7e996', N'46c31e12-2848-7a06-174f-000e56f7e996', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'096763d0-f784-c106-73a7-000e56f7f3e0', N'0cd861e2-2941-c006-73a7-000e56f7f3e0', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e5ae2f8d-3f97-c206-c1c3-000e56f7f3e0', N'0cd861e2-2941-c006-73a7-000e56f7f3e0', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7d3a88cd-018c-c306-c1c3-000e56f7f3e0', N'0cd861e2-2941-c006-73a7-000e56f7f3e0', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'fe2c5b37-fccd-c606-36ed-000e56f7f3e1', N'45e08da3-39ef-c506-36ed-000e56f7f3e1', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'622fe20f-3ac3-c706-8509-000e56f7f3e1', N'45e08da3-39ef-c506-36ed-000e56f7f3e1', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9a310874-718d-c806-8509-000e56f7f3e1', N'45e08da3-39ef-c506-36ed-000e56f7f3e1', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4b4db127-8269-cb06-fa33-000e56f7f3e1', N'bf1648c7-d7f9-ca06-fa33-000e56f7f3e1', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'abf7aa60-574f-cc06-484f-000e56f7f3e2', N'bf1648c7-d7f9-ca06-fa33-000e56f7f3e1', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b0b0ce57-b2e9-cd06-484f-000e56f7f3e2', N'bf1648c7-d7f9-ca06-fa33-000e56f7f3e1', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'59f58947-8cba-d006-966b-000e56f7f3e2', N'04114070-8363-cf06-966b-000e56f7f3e2', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0bf2e86a-32c6-d106-e487-000e56f7f3e2', N'04114070-8363-cf06-966b-000e56f7f3e2', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3480c4ba-cd3d-d206-e487-000e56f7f3e2', N'04114070-8363-cf06-966b-000e56f7f3e2', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a2722a34-bc4d-fb06-ee3f-000e56f7fe25', N'756c1043-2918-f906-c731-000e56f7fe25', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cba113df-75d1-2107-b2c5-000e56f80d28', N'ef372f41-7f4c-1f07-64a9-000e56f80d28', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ac12d1d6-58b7-4707-26a9-000e56f87c11', N'fc2bdb1f-ce7c-4507-ff9b-000e56f87c10', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'be0c61c6-289f-6d07-5afd-000e56f8878f', N'ca6b1b33-48b0-6b07-0cdd-000e56f8878f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'78105b85-2cf6-8d07-da7d-000e56f88f69', N'ab2da1bd-9aef-8b07-b36d-000e56f88f69', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a39c1775-8910-b307-88bd-000e56f89e8a', N'60d5800a-01cc-b107-61ad-000e56f89e8a', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b1ccf98a-291a-d907-f4fd-000e56f8a7d9', N'69cdaa8f-7522-d707-a6dd-000e56f8a7d9', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4e602802-94b3-f907-618d-000e56f8b282', N'5ca59fc9-6093-f707-136d-000e56f8b282', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'402c5a32-dd54-1f08-e9fd-000e56f8bd42', N'f5781561-0ae1-1d08-9bdd-000e56f8bd42', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'874d7c5f-f4d0-3f08-958d-000e56f8c4b4', N'f938815b-ba4f-3d08-476d-000e56f8c4b4', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e7e93e85-ae48-5f08-197d-000e56f8cbad', N'be0c15e9-6507-5d08-f26d-000e56f8cbac', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0cffac76-d1bb-7f08-21dd-000e56f8d2fc', N'bd587f2b-9ba7-7d08-facd-000e56f8d2fb', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9619eee6-0c77-a508-2abd-000e56f8dd6d', N'bc3c259f-8b4b-a308-dc9d-000e56f8dd6c', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7a4cc422-ed53-cb08-a41d-000e56f8e72f', N'93cad765-1905-c908-7d0d-000e56f8e72f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0c9d0a6c-0b32-f108-3e2d-000e56f8f149', N'7cefa15b-0357-ef08-171d-000e56f8f149', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'87d2d365-99be-1109-4d7d-000e56f8fb2b', N'acbcbebe-8e37-0f09-ff5d-000e56f8fb2a', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9171252f-5e45-3709-7ded-000e56f9064d', N'4e9b39ea-75b8-3509-2fcd-000e56f9064d', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5043d133-2212-c909-06dd-000e56f969a3', N'db75fe00-8ba0-c709-b8bd-000e56f969a2', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ea0f96a9-e0a7-1e0a-5c3d-000e56f98388', N'a5d8a8ba-1521-1c0a-0e1d-000e56f98388', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'54d6c22a-1031-7c0e-c6da-000e56fc626c', N'bf0ef486-6211-7a0e-2a96-000e56fc626c', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'adfc67a4-b654-9c0e-0107-000e56fc74f2', N'871305eb-bbac-9a0e-b2e5-000e56fc74f1', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e301538a-154f-c50e-062e-000e56fc8c40', N'5a26dec5-d1f0-c30e-b80c-000e56fc8c3f', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'01ff6765-b1a5-b802-d385-000f8bab7a8c', N'bfc4d344-14cf-b702-ac6e-000f8bab7a8c', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd798aacd-9b8a-9404-db8b-000f8c6fb8c2', N'4e55b089-f84f-9304-db8b-000f8c6fb8c2', N'f1619c01-9e90-6b04-55e6-000f8c6fa510', NULL, NULL, CAST(0x070058A5C8C0CF370B3C00 AS DateTimeOffset), NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4e135118-04e5-9504-db8b-000f8c6fb8c2', N'4e55b089-f84f-9304-db8b-000f8c6fb8c2', N'863e14ee-13c3-4a9a-97cc-2b2384e70845', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'029c31b1-70a0-9604-db8b-000f8c6fb8c2', N'4e55b089-f84f-9304-db8b-000f8c6fb8c2', N'1f00c476-8974-5804-8bb3-000f8c6f9cf6', NULL, NULL, NULL, NULL, N'ffc22e24-d978-4252-9efe-9a48cb799921', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b1d5b3e3-ef78-af04-c231-000f8c6fc2c0', N'8ab1a7b5-3b3b-ae04-c231-000f8c6fc2c0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f9739339-ded7-b004-c231-000f8c6fc2c0', N'8ab1a7b5-3b3b-ae04-c231-000f8c6fc2c0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'114863d6-ccc1-b204-c231-000f8c6fc2c0', N'4dbb21c5-e08d-b104-c231-000f8c6fc2c0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2d8f48ce-0b79-b304-c231-000f8c6fc2c0', N'4dbb21c5-e08d-b104-c231-000f8c6fc2c0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7d12d055-ad37-b504-c231-000f8c6fc2c0', N'726618b7-e72d-b404-c231-000f8c6fc2c0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f5d96b1c-ab89-b604-249d-000f8c6fc2c3', N'726618b7-e72d-b404-c231-000f8c6fc2c0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'13a7d14c-0e17-b804-249d-000f8c6fc2c3', N'60e0e588-2140-b704-249d-000f8c6fc2c3', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0522c1e2-50ef-d304-45f1-000f8c6fc6cb', N'e2b85a3f-494b-d204-45f1-000f8c6fc6cb', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6934204d-84d2-d404-45f1-000f8c6fc6cb', N'e2b85a3f-494b-d204-45f1-000f8c6fc6cb', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'806fa2ac-eec7-d604-45f1-000f8c6fc6cb', N'f0c0f910-5771-d504-45f1-000f8c6fc6cb', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bb553422-1fd6-d704-45f1-000f8c6fc6cb', N'f0c0f910-5771-d504-45f1-000f8c6fc6cb', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9687eee1-6f17-d904-45f1-000f8c6fc6cb', N'5d996ac3-9fbe-d804-45f1-000f8c6fc6cb', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5a7b08c6-3556-da04-45f1-000f8c6fc6cb', N'5d996ac3-9fbe-d804-45f1-000f8c6fc6cb', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5b4dfe4e-fcdd-dc04-45f1-000f8c6fc6cb', N'af4c8c4e-3e4e-db04-45f1-000f8c6fc6cb', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2888f42d-185b-1a05-0f6a-000f8c6fce1a', N'5062ddb8-aea9-1905-0f6a-000f8c6fce1a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'af49e660-25a0-1b05-0f6a-000f8c6fce1a', N'5062ddb8-aea9-1905-0f6a-000f8c6fce1a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'15d804ac-9b18-1d05-0f6a-000f8c6fce1a', N'4f5901cc-d9ae-1c05-0f6a-000f8c6fce1a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'05c53e8f-4247-1f05-0f6a-000f8c6fce1a', N'30aefbe7-3770-1e05-0f6a-000f8c6fce1a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6ad82917-e33b-2005-0f6a-000f8c6fce1a', N'30aefbe7-3770-1e05-0f6a-000f8c6fce1a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a61738bb-7f3d-2205-0f6a-000f8c6fce1a', N'9e7b0013-aa16-2105-0f6a-000f8c6fce1a', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'543db5cd-a4a2-3d05-9b33-000f8c6fd27b', N'f0e04eb3-1362-3c05-9b33-000f8c6fd27b', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'be04e48a-8583-3e05-9b33-000f8c6fd27b', N'f0e04eb3-1362-3c05-9b33-000f8c6fd27b', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'74b26350-6288-4005-9b33-000f8c6fd27b', N'c73d19f7-02b7-3f05-9b33-000f8c6fd27b', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'36cee5a0-b8d3-4105-9b33-000f8c6fd27b', N'c73d19f7-02b7-3f05-9b33-000f8c6fd27b', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b2ad41da-680b-4305-9b33-000f8c6fd27b', N'e7c6d6ad-e6f7-4205-9b33-000f8c6fd27b', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a871d0a3-9deb-4405-9b33-000f8c6fd27b', N'e7c6d6ad-e6f7-4205-9b33-000f8c6fd27b', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1c643751-be3d-4605-9b33-000f8c6fd27b', N'65a6a8a6-1ead-4505-9b33-000f8c6fd27b', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'14c55bd3-48cd-6105-4408-000f8c6fd66e', N'76b7a2d8-22f2-6005-4408-000f8c6fd66e', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'28d415e3-1bab-6205-4408-000f8c6fd66e', N'76b7a2d8-22f2-6005-4408-000f8c6fd66e', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cba697c6-09a9-6405-4408-000f8c6fd66e', N'4a763d49-af8d-6305-4408-000f8c6fd66e', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4911671c-a5e7-6505-4408-000f8c6fd66e', N'4a763d49-af8d-6305-4408-000f8c6fd66e', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'048aa062-6fa3-6705-4408-000f8c6fd66e', N'462cb80d-b824-6605-4408-000f8c6fd66e', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'603190fd-bd49-6805-4408-000f8c6fd66e', N'462cb80d-b824-6605-4408-000f8c6fd66e', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7c4a0069-d509-6a05-4408-000f8c6fd66e', N'dbea11aa-f9c2-6905-4408-000f8c6fd66e', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8c858f52-7d1e-a905-81d9-000f8c6fdd66', N'8a88ef4a-e30e-a805-81d9-000f8c6fdd66', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e42bed8f-6dd8-aa05-81d9-000f8c6fdd66', N'8a88ef4a-e30e-a805-81d9-000f8c6fdd66', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'525fdb62-11dd-ac05-81d9-000f8c6fdd66', N'16e08b37-f435-ab05-81d9-000f8c6fdd66', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3b8eeb3a-d49a-ad05-81d9-000f8c6fdd66', N'16e08b37-f435-ab05-81d9-000f8c6fdd66', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e70e58c6-0e9a-af05-81d9-000f8c6fdd66', N'99e8436d-ee5f-ae05-81d9-000f8c6fdd66', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'118b3199-dcfa-b005-81d9-000f8c6fdd66', N'99e8436d-ee5f-ae05-81d9-000f8c6fdd66', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c79e42ec-7e16-b205-81d9-000f8c6fdd66', N'b1c12a79-e372-b105-81d9-000f8c6fdd66', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e52c03a4-1522-f105-fa14-000f8c6fe71a', N'1cc1f2f8-3bd3-f005-fa14-000f8c6fe71a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2a7ec9e6-ef3c-f205-fa14-000f8c6fe71a', N'1cc1f2f8-3bd3-f005-fa14-000f8c6fe71a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'37d33c53-8910-f405-fa14-000f8c6fe71a', N'b018d59f-9b7b-f305-fa14-000f8c6fe71a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'96d854dd-1502-f505-fa14-000f8c6fe71a', N'b018d59f-9b7b-f305-fa14-000f8c6fe71a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3d16dbdc-4dec-f705-fa14-000f8c6fe71a', N'305fec30-4e12-f605-fa14-000f8c6fe71a', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e8bd58a6-c9f1-f805-fa14-000f8c6fe71a', N'305fec30-4e12-f605-fa14-000f8c6fe71a', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4bc013f7-b000-fa05-fa14-000f8c6fe71a', N'db0d7060-0eaf-f905-fa14-000f8c6fe71a', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'182fe27b-108d-1506-73aa-000f8c6fe9f7', N'0aab2b06-7132-1406-73aa-000f8c6fe9f7', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ff6be5a4-5cc8-1606-73aa-000f8c6fe9f7', N'0aab2b06-7132-1406-73aa-000f8c6fe9f7', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'df72b489-17b3-1806-73aa-000f8c6fe9f7', N'45129605-edd0-1706-73aa-000f8c6fe9f7', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4c6cd5b8-6010-1906-73aa-000f8c6fe9f7', N'45129605-edd0-1706-73aa-000f8c6fe9f7', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'292a7674-e5a9-1b06-73aa-000f8c6fe9f7', N'502ce292-7eb0-1a06-73aa-000f8c6fe9f7', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8eb17d50-c2b2-1c06-73aa-000f8c6fe9f7', N'502ce292-7eb0-1a06-73aa-000f8c6fe9f7', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'683aed46-197c-1e06-73aa-000f8c6fe9f7', N'd325ccb9-ff5e-1d06-73aa-000f8c6fe9f7', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'52db81ed-e209-7204-cb17-000f8ba661c6', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9ff6c6d2-e46c-3906-3666-000f8c6fedac', N'23f570d3-7cfa-3806-3666-000f8c6fedac', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7f7099c1-afe5-3a06-3666-000f8c6fedac', N'23f570d3-7cfa-3806-3666-000f8c6fedac', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'29c55a12-f69a-3c06-3666-000f8c6fedac', N'025a7c69-ca31-3b06-3666-000f8c6fedac', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0fb7c2ff-395a-3d06-3666-000f8c6fedac', N'025a7c69-ca31-3b06-3666-000f8c6fedac', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'19a4c0b9-af42-3f06-3666-000f8c6fedac', N'46d5c2be-4ecc-3e06-3666-000f8c6fedac', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'826a5124-c610-4006-3666-000f8c6fedac', N'46d5c2be-4ecc-3e06-3666-000f8c6fedac', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'27de0eb5-a6ce-4206-3666-000f8c6fedac', N'38d8f952-bed7-4106-3666-000f8c6fedac', N'54ab5f16-4955-4704-b392-000f8c6f9526', NULL, NULL, NULL, NULL, N'52db81ed-e209-7204-cb17-000f8ba661c6', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5e82f60c-0eed-dd01-85e8-00100b58dddd', N'3b853a30-61e7-dc01-5eaa-00100b58dddd', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8433a6a3-7a0f-3d00-06dc-00100baa1677', N'd1fef77e-c1bb-3c00-dfc9-00100baa1676', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5e82f60c-0eed-dd01-85e8-00100b58dddd', N'748934de-1027-5a24-67ea-000d984b1967')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'096763d0-f784-c106-73a7-000e56f7f3e0', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'fe2c5b37-fccd-c606-36ed-000e56f7f3e1', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'4b4db127-8269-cb06-fa33-000e56f7f3e1', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'59f58947-8cba-d006-966b-000e56f7f3e2', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8433a6a3-7a0f-3d00-06dc-00100baa1677', N'9c2529e7-b625-1600-d2b1-00100ba95565')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'2888f42d-185b-1a05-0f6a-000f8c6fce1a', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'05c53e8f-4247-1f05-0f6a-000f8c6fce1a', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9619eee6-0c77-a508-2abd-000e56f8dd6d', N'fbdb23a3-75c0-4659-8361-0cb99abdc758')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0522c1e2-50ef-d304-45f1-000f8c6fc6cb', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'806fa2ac-eec7-d604-45f1-000f8c6fc6cb', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9687eee1-6f17-d904-45f1-000f8c6fc6cb', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5043d133-2212-c909-06dd-000e56f969a3', N'14f9957e-1560-4a7e-97fe-143a1ab89504')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e7e93e85-ae48-5f08-197d-000e56f8cbad', N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'01ff6765-b1a5-b802-d385-000f8bab7a8c', N'dbe26328-7ac0-4476-a840-2d1544aabf02')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'54d6c22a-1031-7c0e-c6da-000e56fc626c', N'0326cd06-9719-4385-84a0-2d384c5a5b1f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'4e602802-94b3-f907-618d-000e56f8b282', N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0b4d4c9b-01fa-b202-1c8e-000e544aae6e', N'6b5d10be-1008-449f-9b83-3fd935fabdfb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ac12d1d6-58b7-4707-26a9-000e56f87c11', N'ab583d60-2f3c-497b-b267-4028d3233533')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'4e135118-04e5-9504-db8b-000f8c6fb8c2', N'0845f8da-21df-4fca-be60-421052f1598d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b1ccf98a-291a-d907-f4fd-000e56f8a7d9', N'906d47a5-74ea-4f2a-9e87-4cdd98ed093b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7a4cc422-ed53-cb08-a41d-000e56f8e72f', N'30a566cc-0614-4cf0-bdd4-4f22ba3b3c36')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0c9d0a6c-0b32-f108-3e2d-000e56f8f149', N'25d98e24-a6a4-4e61-b239-54135959c09d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'874d7c5f-f4d0-3f08-958d-000e56f8c4b4', N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ea0f96a9-e0a7-1e0a-5c3d-000e56f98388', N'25350954-c42d-4c23-87cf-5efda6412ade')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'87d2d365-99be-1109-4d7d-000e56f8fb2b', N'a8f082d2-7e31-42b3-97c6-5f41502c358b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9ff6c6d2-e46c-3906-3666-000f8c6fedac', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'29c55a12-f69a-3c06-3666-000f8c6fedac', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'19a4c0b9-af42-3f06-3666-000f8c6fedac', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e301538a-154f-c50e-062e-000e56fc8c40', N'2814add4-dff3-4a2a-9c12-6f15e3a46777')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'543db5cd-a4a2-3d05-9b33-000f8c6fd27b', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'74b26350-6288-4005-9b33-000f8c6fd27b', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b2ad41da-680b-4305-9b33-000f8c6fd27b', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a2722a34-bc4d-fb06-ee3f-000e56f7fe25', N'fb99292b-aec0-4200-91ac-7e57ca81b305')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b1d5b3e3-ef78-af04-c231-000f8c6fc2c0', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'114863d6-ccc1-b204-c231-000f8c6fc2c0', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7d12d055-ad37-b504-c231-000f8c6fc2c0', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'028f7ea2-2f32-1803-62b7-000e544aed99', N'a5881e10-5938-4ba6-b041-8b1beb5b89be')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a39c1775-8910-b307-88bd-000e56f89e8a', N'092b5569-4a7a-4e6b-952d-9614a7396a95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cba113df-75d1-2107-b2c5-000e56f80d28', N'47df82d3-7312-416f-9145-9b6e3d258dff')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ad3fefe4-fd5a-1b02-5a6d-000e544a60d0', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c26681bd-818d-8c02-a5c8-000e544a9a6e', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'182fe27b-108d-1506-73aa-000f8c6fe9f7', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'df72b489-17b3-1806-73aa-000f8c6fe9f7', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'292a7674-e5a9-1b06-73aa-000f8c6fe9f7', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8c858f52-7d1e-a905-81d9-000f8c6fdd66', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'525fdb62-11dd-ac05-81d9-000f8c6fdd66', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e70e58c6-0e9a-af05-81d9-000f8c6fdd66', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'adfc67a4-b654-9c0e-0107-000e56fc74f2', N'94d680b0-7e1f-4d0e-aca8-be12500fff95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'510546ee-dac0-fd03-c1da-000e56f7806e', N'40b3586c-ce62-490e-9f7f-c4231cfdeb8c')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f93b6680-4cb6-5502-61fe-000e544a8810', N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e52c03a4-1522-f105-fa14-000f8c6fe71a', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'37d33c53-8910-f405-fa14-000f8c6fe71a', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'3d16dbdc-4dec-f705-fa14-000f8c6fe71a', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'28f82711-b75b-6006-e329-000e56f7e992', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'193922dd-1300-6506-5853-000e56f7e993', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'87719031-959d-6a06-cd7d-000e56f7e993', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'62ee4f21-22cf-6f06-69b5-000e56f7e994', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8f561466-628f-7406-05ed-000e56f7e995', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7b578de0-8b90-7906-7b17-000e56f7e995', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'53479fec-7e00-7e06-174f-000e56f7e996', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0cffac76-d1bb-7f08-21dd-000e56f8d2fc', N'2301a850-22de-4ab6-a4a1-d285b4deb8a8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'402c5a32-dd54-1f08-e9fd-000e56f8bd42', N'8ed1a10b-071b-47f2-afb1-d4b288badb3b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'bc501b25-a1b7-0806-6631-000e56f7da38', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b8b4c977-453c-0d06-2977-000e56f7da39', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'2afe5471-53af-1206-ecbd-000e56f7da39', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'afa8cdba-1114-1706-61e7-000e56f7da3a', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5a381aee-82ff-1c06-fe1f-000e56f7da3a', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'14c55bd3-48cd-6105-4408-000f8c6fd66e', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cba697c6-09a9-6405-4408-000f8c6fd66e', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'048aa062-6fa3-6705-4408-000f8c6fd66e', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'78105b85-2cf6-8d07-da7d-000e56f88f69', N'44a5602b-5415-48c3-a81a-f83118c8647d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'be0c61c6-289f-6d07-5afd-000e56f8878f', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9171252f-5e45-3709-7ded-000e56f9064d', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', 9, N'', N'Volume')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', 12, N'', N'contenance')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', 9, N'', N'Release Date')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', 12, N'', N'Date de sortie')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', 9, N'', N'Image')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', 12, N'', N'Image')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', 9, N'', N'Sleeves')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', 12, N'', N'manches')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', 9, N'', N'Shoe width')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', 12, N'', N'Largeur de chaussure')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', 9, N'', N'Unit')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', 12, N'', N'unité de contenance')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', 9, N'', N'Color')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', 12, N'', N'Couleur')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', 9, N'', N'Neck')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', 12, N'', N'cou')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', 9, N'', N'Shoes Size')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', 12, N'', N'Pointure de Chaussures')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', 9, N'', N'Operating System')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', 12, N'', N'Système d''Exploitation')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'52db81ed-e209-7204-cb17-000f8ba661c6', 9, N'ml')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'52db81ed-e209-7204-cb17-000f8ba661c6', 12, N'ml')
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
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 9, N'Physical Products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 12, N'Produits physiques')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 9, N'Downloadable products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 12, N'Produits téléchargeables')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 9, N'Bundle one watch + one sunglasses')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 12, N'Bundle 1 montre + 1 paire de lunettes de soleil')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 9, N'Fragrance')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 12, N'Parfum')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 9, N'Bundle of IT softwares')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 12, N'Pack de logiciels informatiques')
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
