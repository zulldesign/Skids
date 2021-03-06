--declare @sellerId uniqueidentifier = 'ac5757f0-b120-11e0-a00b-0800200c9a66'
--declare @storeId uniqueidentifier = 'dcafd470-b122-11e0-a00b-0800200c9a66'

INSERT [magelia].[Seller] ([SellerId], [IsActive], [AdditionalDataXml], [Code]) VALUES (@sellerId, 1, N'<SellerSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><Color xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.Common.Drawing" i:nil="true" /><ETLSettings z:Id="2"><BatchSize>1000</BatchSize><CommandTimeout>PT1M</CommandTimeout><IndentXML>false</IndentXML><ValidateBaseInput>false</ValidateBaseInput><ValidateBaseOutput>false</ValidateBaseOutput></ETLSettings><LengthUnit z:Id="3">Inch</LengthUnit><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><WeightUnit z:Id="4">g</WeightUnit></SellerSettings>', @sellerName)
INSERT [magelia].[TaxType] ([TaxTypeId], [Code], [SellerId]) VALUES (N'2cd5936d-6901-4eb8-851f-a384ea064b72', N'Sales Tax', @sellerId)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'6167af3e-f184-6e06-fc10-000ebb8cebcd', N'Food', N'2cd5936d-6901-4eb8-851f-a384ea064b72', NULL)
INSERT [magelia].[TaxCategory] ([TaxCategoryId], [Code], [TaxTypeId], [AdditionalData]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'Standard Products', N'2cd5936d-6901-4eb8-851f-a384ea064b72', NULL)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Downloadable products', @sellerId, 0, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'Fragrance', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'IT softwares', @sellerId, 3, 3)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'Physical Products', @sellerId, 0, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'Shirts', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'Shoes', @sellerId, 1, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'watch + sunglasses', @sellerId, 3, 0)
INSERT [magelia].[ProductType] ([ProductTypeId], [Code], [SellerId], [ProductKind], [Option]) VALUES (N'0d09746d-cb19-b600-6402-000ebb92b971', N'WeekEnd + 1 product', @sellerId, 3, 0)
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'0d09746d-cb19-b600-6402-000ebb92b971', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryProductType] ([ProductType_ProductTypeId], [TaxCategory_TaxCategoryId]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'6167af3e-f184-6e06-fc10-000ebb8cebcd', 9, N'Food')
INSERT [magelia].[TaxCategoryLocalized] ([TaxCategoryId], [CultureId], [Name]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', 9, N'Standard Products')
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'0ea0007c-2c27-830f-7468-000e5079bdb4', N'Canada', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'be3d415b-a040-750e-42d7-000e506f8184', N'Canada', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'3c29955e-d772-e805-20ef-000ebb8c7cee', N'USA (Alaska)', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'759b6b9b-37b2-560f-eb2e-000e5078cc06', N'USA (Excluding Hawaii Alaska)', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'de071fbf-472a-3d0c-d443-000e4fa6c806', N'USA (Excluding Illinois Alaska Hawaii)', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'22ee9276-25ea-a40f-d2be-000e5079e671', N'USA (Hawaii Alaska)', @sellerId, 0)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'944591ac-19d1-ce05-4e3d-000ebb8c61de', N'USA (Hawaii)', @sellerId, 1)
INSERT [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', N'USA (Illinois)', @sellerId, 1)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'5c2b4f23-7eb9-5e01-b7d0-000ec7371a1b', N'6d340cae-34d6-417d-9082-ffe12c7af28a', CAST(8.00000 AS Decimal(18, 5)), N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', NULL, NULL, NULL)
INSERT [magelia].[TaxRate] ([TaxRateId], [TaxCategoryId], [Value], [DestinationGeographicZoneId], [OriginGeographicZoneId], [SegmentId], [AdditionalData]) VALUES (N'7b28aac5-0838-3501-ad09-000ec7396c8d', N'6167af3e-f184-6e06-fc10-000ebb8cebcd', CAST(2.25000 AS Decimal(18, 5)), N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', NULL, NULL, NULL)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'e55e8b6c-638f-1618-e9d8-000d9845bdb7', @sellerId, N'Carrousel/Carroussel32.jpg', CAST(0x07509D5782C453350B0000 AS DateTimeOffset), CAST(0x0750E7E4D46858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'0ffbbe8c-5525-291b-9924-000d9846ed8d', @sellerId, N'Carrousel/Carroussel12.jpg', CAST(0x07B04A2DB2C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'327453a7-8b59-2f1b-2ce4-000d9846f0d5', @sellerId, N'Carrousel/Carroussel21.jpg', CAST(0x07708674B5C553350B0000 AS DateTimeOffset), CAST(0x07601D1BD66858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'748934de-1027-5a24-67ea-000d984b1967', @sellerId, N'Downloads/2012-Olympics.jpg', CAST(0x07C0D59CB30054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'5bdce504-ed74-5e24-dea8-000d984b1b0f', @sellerId, N'Downloads/2012-Olympics-carr.jpg', CAST(0x07B07C45B50054350B0000 AS DateTimeOffset), CAST(0x0770C7D3CC6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'54328758-0329-5c1a-1530-000d990a82f8', @sellerId, N'Clothes/RunningS.jpg', CAST(0x0770ED2D1DC054350B0000 AS DateTimeOffset), CAST(0x07B0F2A3AA6858350B0000 AS DateTimeOffset), 0)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'a825dc24-1070-0101-c4c0-00100b4f0b5f', @sellerId, N'web.config', CAST(0x07C0449638B371380B7800 AS DateTimeOffset), NULL, 5)
INSERT [magelia].[File] ([FileId], [SellerId], [Path], [CreationDate], [LastModificationDate], [FileTypeId]) VALUES (N'fcfa69c7-d1af-7e04-8094-00100babd365', @sellerId, N'food/Chocolate-Chip-cookie.jpg', CAST(0x07944032D64672380B7800 AS DateTimeOffset), NULL, 0)
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
INSERT [magelia].[Brand] ([BrandId], [SellerId], [Code], [FileId]) VALUES (N'da07d3bf-3610-b301-f8e2-000ebb938f6c', @sellerId, N'US cakes', NULL)
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
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'42693408-79b8-bc01-e60e-000ebb9399b1', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'da07d3bf-3610-b301-f8e2-000ebb938f6c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'', 1, 1, NULL, @sellerId, N'', NULL, NULL, NULL, N'548968756', NULL, NULL, NULL, 0, NULL, NULL, NULL)
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
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'd58c3053-1313-4eb4-aa33-769dd38080ea', N'8b187b39-d642-440e-b631-8cb99c84cddc', N'0d09746d-cb19-b600-6402-000ebb92b971', N'Pack001', 1, 1, CAST(300.00000 AS Decimal(18, 5)), @sellerId, N'', CAST(6.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), CAST(15.00000 AS Decimal(18, 5)), N'SungPack001', NULL, NULL, NULL, 3, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', NULL, NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'I34', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', N'a742be90-a993-48da-a0f7-308591fb5814', N'2045aa25-c242-477b-b834-78acab772344', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'0789776726', 1, 1, CAST(350.00000 AS Decimal(18, 5)), @sellerId, NULL, NULL, NULL, NULL, N'VV0005', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 4, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'057fb737-a362-46fa-8a3d-5f651d5de371', N'63c2e2a0-0ad3-4d0d-af3b-f5de36a35088', NULL, N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'001', 1, 1, CAST(100.00000 AS Decimal(18, 5)), @sellerId, NULL, CAST(4.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), N'FRAG001', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0, 2, NULL, NULL, NULL)
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'955987d1-fef6-424c-9fe6-b2bae86dabfd', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'2012LOG', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'2012LOG', NULL, NULL, NULL, 0, NULL, NULL, NULL)
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
INSERT [magelia].[Product] ([ProductId], [SupplierId], [BrandId], [ProductTypeId], [SupplierReferenceCode], [IsOnline], [IsActive], [Weight], [SellerId], [ExternalId], [Width], [Length], [Height], [SKU], [VariableProductId], [IsDefault], [Order], [ProductKind], [StartDate], [EndDate], [Code]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'48d1c9e2-ed53-4f41-a344-cf7dacc5ca15', N'9584f634-1780-479b-b367-cc306e3cfdb7', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'Gatsby', 1, 1, NULL, @sellerId, NULL, NULL, NULL, NULL, N'Gatsby', NULL, NULL, NULL, 0, NULL, NULL, NULL)
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
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0f2ff1ea-145b-1815-8132-000d9907b8f2')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6167af3e-f184-6e06-fc10-000ebb8cebcd', N'42693408-79b8-bc01-e60e-000ebb9399b1')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'5b61333f-19e5-449f-8f0f-546debd3b1ff')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[TaxCategoryProduct] ([TaxCategory_TaxCategoryId], [ProductBase_ProductId]) VALUES (N'6d340cae-34d6-417d-9082-ffe12c7af28a', N'e32d7fc3-a151-423e-8b35-f238b643671c')
INSERT [magelia].[Warehouse] ([WarehouseId], [SellerId], [Code], [TaxZoneId]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', @sellerId, N'WH3 Chicago', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd')
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'c3f1e62a-cab6-4d68-80b9-2773cbcfd1d9', N'USPS', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'UPS', @sellerId, NULL)
INSERT [magelia].[Carrier] ([CarrierId], [Code], [SellerId], [FileId]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', N'Fedex', @sellerId, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'edcf75bd-ab97-d60f-7740-000e507a294a', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'USA standard delivery', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'9c9705b3-5459-fc0f-6360-000e507a4ba3', N'c3f1e62a-cab6-4d68-80b9-2773cbcfd1d9', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'Hawaii-Alaska by plane', N'22ee9276-25ea-a40f-d2be-000e5079e671', 0, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'7b33c84f-96a8-6002-8594-000e53ce2069', N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'USA Premium delivery', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'f9ff0c6b-ab7a-ac02-0a45-000e53ceda88', N'0006ee61-f59b-426c-bb47-485fe07307f3', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'USA Express delivery', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 2, 1, NULL)
INSERT [magelia].[ShippingRate] ([ShippingRateId], [CarrierId], [WarehouseId], [Code], [GeographicZoneId], [Criteria], [IsSellerScope], [AdditionalData]) VALUES (N'ba0b5478-1eb7-d102-fd77-000e53ceffc6', N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'Canada Special delivery', N'0ea0007c-2c27-830f-7468-000e5079bdb4', 1, 1, NULL)
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'edcf75bd-ab97-d60f-7740-000e507a294a', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'9c9705b3-5459-fc0f-6360-000e507a4ba3', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'7b33c84f-96a8-6002-8594-000e53ce2069', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'f9ff0c6b-ab7a-ac02-0a45-000e53ceda88', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[ShippingRateTaxCategory] ([ShippingRate_ShippingRateId], [TaxCategory_TaxCategoryId]) VALUES (N'ba0b5478-1eb7-d102-fd77-000e53ceffc6', N'6d340cae-34d6-417d-9082-ffe12c7af28a')
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', 9157, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', 9162, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'9ec3e59c-c916-851d-d589-000d990b7930', 9144, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'895e9f89-a787-f11d-d025-000d990b9747', 9242, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'42693408-79b8-bc01-e60e-000ebb9399b1', 1000, 10, 1, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b921987e-51e1-4985-ab44-019965b52d0f', 9006, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 9178, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 9063, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'881055b6-d532-42c4-9818-15bdb80e1e39', 9186, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 9151, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 9159, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614', 9092, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 9194, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 9166, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6', 9173, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 9219, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'0f15cc01-2a0e-464c-9990-33fce918ab4b', 9162, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5243cba2-3003-42e0-bc1c-3c85470b9087', 9038, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 9157, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb', 9135, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5f70f381-94e9-46f4-b67d-4b1afc729521', 0, 0, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5488b334-d396-4079-bb14-4d45cd97c271', 9202, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 9131, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224', 9086, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d', 9130, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 900, 900, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd', 9137, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 9169, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'057fb737-a362-46fa-8a3d-5f651d5de371', 9067, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 9087, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'413e0337-1c99-4b53-aa27-69475c0b0468', 9131, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'15124216-83f5-4a96-a776-6de4d33e29a5', 9121, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'71e032cf-2592-49a9-a166-6eea06ca4014', 9021, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'91e54477-ad3e-4821-9895-727c5058a4d9', 9235, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'13b0719d-1441-4d3e-a1de-765cd22c913b', 9036, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2310c6a3-840a-455d-ab03-7726290ecc05', 9127, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a9c9aadc-46eb-4bff-a213-78740730b8af', 9204, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 9260, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7', 9050, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66', 9127, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'd94858ed-6538-4958-a147-846dc651c79f', 9061, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5', 9138, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 9124, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 9185, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 8991, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163', 9099, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2fc3d613-302c-4f9b-850c-8eded3486e32', 9100, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'35b57194-4a77-4665-91fc-90eaa18a0b1c', 9110, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 9210, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17', 9046, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 9026, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1bdd4491-4af6-4941-84e6-a6c73c46347a', 9115, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ff3d5209-e549-4437-999a-aad44f5340dd', 9212, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70', 9111, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd', 9065, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46', 9059, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2', 9207, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2', 9064, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 9247, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 9082, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'0de77b97-c976-448f-9776-c732a43d65d8', 9131, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'02e8e67c-f95e-4145-b475-c974016fe4a8', 9096, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'8b779da6-e306-44c1-a673-d464ec8a4b34', 9205, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 9175, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 9144, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 9105, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 9159, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 8996, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1', 9053, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e', 9106, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[Inventory] ([WarehouseId], [ProductId], [VirtualStock], [RealStock], [MinimumStock], [AvailabilityDate], [AdditionalData], [Unlimited], [ReorderLevel]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', N'1265aa84-8242-46b2-9d97-fef35ceaa67f', 9073, 10000, 0, NULL, NULL, 0, NULL)
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'5e175456-7cf4-bd03-7ab4-000e4f5a6e15', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd64a0a8f-e4d2-da03-c9b3-000e4f5a7562', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fb7d0462-69c5-f603-8645-000e4f5a7d1b', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'136738a4-3827-1404-087f-000e4f5a854e', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'92806394-32ab-3004-ac51-000e4f5a8ef1', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'caf421fe-f69f-4c04-9985-000e4f5a9566', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7bd78ac6-b307-d404-8a0c-000e4fa130e4', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'3f7e59d5-4f54-4a75-be65-4766284e53ce')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a9fe52fe-c22c-f104-114c-000e4fa13683', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6529b600-303f-0e05-0758-000e4fa14054', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd0f6747c-43ff-2c05-c33c-000e4fa14a11', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'413e0337-1c99-4b53-aa27-69475c0b0468')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'204dd6d1-b6e1-4905-9b46-000e4fa151aa', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'91e54477-ad3e-4821-9895-727c5058a4d9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9958f40a-eb98-6605-7b6d-000e4fa15760', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'2310c6a3-840a-455d-ab03-7726290ecc05')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'29785b49-1692-8305-6803-000e4fa15fab', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fadfc2b5-e849-a005-d28a-000e4fa166a9', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'a86c25ea-00fe-4012-9ea3-8731653a2118')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e049d8a6-f0d1-bc05-47e8-000e4fa16d90', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'3ea76b0c-4bcc-d805-6146-000e4fa173ae', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'24f1a7cc-7b21-f405-e736-000e4fa17abb', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'664a2ce4-23a6-1306-4b14-000e4fa1843c', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'c6daec60-07ba-3006-93f8-000e4fa18c64', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ff3d5209-e549-4437-999a-aad44f5340dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a39d223e-d1f6-4d06-12a8-000e4fa192c3', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'da68a620-0380-6906-0515-000e4fa19883', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'74329bfa-de14-8506-773b-000e4fa19f16', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'0de77b97-c976-448f-9776-c732a43d65d8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'579a58e7-94b1-a206-4e50-000e4fa1a498', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'7028d035-bf96-46a5-8fc0-db6469ac5d99')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'55e3d5fb-3dc5-be06-e39e-000e4fa1aa71', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'6a0eb421-1c55-4419-a656-dc5339612ccd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6840e574-c479-da06-136a-000e4fa1b098', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'537dfc1b-302b-9204-741c-00100babef02', N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', N'42693408-79b8-bc01-e60e-000ebb9399b1')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ebd5a488-7d36-2325-9b6b-000d984b4ea0', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8deb4ec3-8672-8609-aa38-000d9903193a', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1d96716c-ee28-e409-2d44-000d99031d7a', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'bec8d392-4279-4195-9c76-79d7bec0715f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9d8bd4c6-d578-43aa-a944-f486f2d22511', N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', N'0831c5b9-d16d-4a45-94ad-b96139fc974a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2d1aceee-3178-9200-88ca-000e4f59f541', N'1e37d607-fbab-4e47-a52c-26a06cfa807e', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'b5989695-3b75-3102-1b7c-000f8c6d2a6c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5488b334-d396-4079-bb14-4d45cd97c271')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'044088c6-4fdb-3402-1b7c-000f8c6d2a6c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b1afe516-8781-4e4f-8027-b500d9d7b8d2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1912a23b-cd89-3702-1b7c-000f8c6d2a6c', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1265aa84-8242-46b2-9d97-fef35ceaa67f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'383cbcca-dcc2-3a02-7df0-000f8c6d2a6e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fe005bc6-43a7-5502-7145-000f8c6d2e24', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'fbfd8832-9142-4e34-b2bd-51ae3cfb7224')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'aeeaa4dc-d279-5802-7145-000f8c6d2e24', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'd94858ed-6538-4958-a147-846dc651c79f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6d0cb70a-f20b-5b02-7145-000f8c6d2e24', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c5ffb8e6-be41-40b7-b33b-f9920408ffa1')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'61e9dec1-2c91-5e02-7145-000f8c6d2e24', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'342759a9-1c57-4d62-a135-4e5155d5c1b6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8b1c9af7-490e-7902-261c-000f8c6d31a3', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a9c9aadc-46eb-4bff-a213-78740730b8af')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'1df5e381-5c2c-7c02-8899-000f8c6d31a5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ab1f20a0-6e3f-4d48-9a0b-8eca4843b163')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'65ed6459-bc6d-7e02-8899-000f8c6d31a5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a0d10aa9-7cfb-466b-a807-fe071c3c626e')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'43698994-a9c2-8102-8899-000f8c6d31a5', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'855bd34f-53e8-4436-aeba-cddf92ca676a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e2dc313d-4caa-9c02-f881-000f8c6d35c0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2122ae5b-beac-4ce3-8eb4-29a67ee082f6')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'98fce69d-ef8f-9f02-5aed-000f8c6d35c3', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'a7c2a71d-8930-4cb0-a24b-58a404c48edd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'e35e24c6-af5a-a202-5aed-000f8c6d35c3', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'7cdce02e-537d-4c5a-ad9f-817e2b77dd66')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'48f1407a-0a4e-a502-5aed-000f8c6d35c3', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'75ac5adb-22ac-42fa-8f72-34515265151b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'a4aa2ae0-809d-c002-bdde-000f8c6d3ad9', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd81c4b6b-ed39-c302-bdde-000f8c6d3ad9', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'ba7c89c1-9ad4-4e4e-8736-191c52d73614')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'318e0dae-792f-c602-bdde-000f8c6d3ad9', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b17ef8e6-1ecc-4a5d-9edf-80de9c9200c7')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0489c113-5569-c902-bdde-000f8c6d3ad9', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'c49e5cfd-90c1-e402-53f8-000f8c6d3f16', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1c446de3-d5dd-43d0-b8f4-4845c3b4a7cb')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'ef8394ed-39a7-e702-b66e-000f8c6d3f18', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'5f70f381-94e9-46f4-b67d-4b1afc729521')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'99f56dc1-9469-ea02-b66e-000f8c6d3f18', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'c1a1c2cd-1d17-456f-a6d3-ac3d2ec95a70')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'8b1c1eff-6ba9-ed02-b66e-000f8c6d3f18', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'af31c111-6d39-0803-4114-000f8c6d43a9', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b921987e-51e1-4985-ab44-019965b52d0f')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'56424ff1-ddf7-0b03-a389-000f8c6d43ab', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'057fb737-a362-46fa-8a3d-5f651d5de371')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f2ac7aae-c1bd-0e03-a389-000f8c6d43ab', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'1bdd4491-4af6-4941-84e6-a6c73c46347a')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd54c4146-6517-1103-a389-000f8c6d43ab', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'781f1ebd-a613-2c03-7e38-000f8c6d489e', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'0f15cc01-2a0e-464c-9990-33fce918ab4b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'9fa21a2f-02f3-2f03-e0a5-000f8c6d48a0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'95c4246a-9bf8-4e2e-995b-86b08fa0c6c5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'12349582-a882-3203-e0a5-000f8c6d48a0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'241b5300-f36e-4b2b-bfdd-afcd770cc7b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'fb99f7d0-333a-3503-e0a5-000f8c6d48a0', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'86c3f556-c9f8-5003-6d43-000f8c6d4c3f', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'15124216-83f5-4a96-a776-6de4d33e29a5')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'680a2971-c5cd-5303-6d43-000f8c6d4c3f', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'2bf7624d-ffe8-4213-ae37-a0f2778aad17')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f19b5a58-0836-5603-6d43-000f8c6d4c3f', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'8b779da6-e306-44c1-a673-d464ec8a4b34')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'092ef76e-4a14-5903-6d43-000f8c6d4c3f', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', N'344f170c-9e9b-4559-96fe-d21d818a98ca')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2030ace6-006b-f201-be47-000f8c6d08a2', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', N'91e162ab-45da-44c7-b38e-f1ccd97eba63')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'293c6c8b-ca56-8002-923b-000e4f5a4ac6', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'27cac2d9-765c-41b5-84e8-52c7ccb9f83d')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0f540aec-6796-8502-18e0-000e4f5a4ac8', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f2ce33ae-a0c1-8a02-8e12-000e4f5a4ac8', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'7c5eff4d-35b2-4699-a2eb-aeef1f715bdd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'41a539b6-482b-8f02-0344-000e4f5a4ac9', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'58eccd56-19ce-4d41-9fb2-af23a1f7ae46')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'cfdc4a29-45a2-9402-5165-000e4f5a4ac9', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'02e8e67c-f95e-4145-b475-c974016fe4a8')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'73e50052-01d3-2c03-a852-000e4f5a5a9f', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'881055b6-d532-42c4-9818-15bdb80e1e39')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'f2dbb758-3391-3103-1d84-000e4f5a5aa0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'5243cba2-3003-42e0-bc1c-3c85470b9087')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'edd21d60-5b2c-3603-92b6-000e4f5a5aa0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'71e032cf-2592-49a9-a166-6eea06ca4014')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'0a7b72d5-d134-3b03-e0d7-000e4f5a5aa0', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'13b0719d-1441-4d3e-a1de-765cd22c913b')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'2618fe1a-4513-4003-5609-000e4f5a5aa1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'2fc3d613-302c-4f9b-850c-8eded3486e32')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'6ce7569c-3fba-4503-a42a-000e4f5a5aa1', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'35b57194-4a77-4665-91fc-90eaa18a0b1c')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'23e7c47e-0834-4a03-195b-000e4f5a5aa2', N'cddde355-e651-47b6-87ca-845afeb43fb1', N'341c84b5-d194-40d6-80bd-eea300e9ee45')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7facac6b-f771-8603-4789-000e4f5a6322', N'4499d369-9384-4074-bab1-adf1c417b337', N'5f28a084-fd33-5c1c-f13f-000d990b29b2')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'd23cb327-8ec2-8b03-bcba-000e4f5a6322', N'4499d369-9384-4074-bab1-adf1c417b337', N'f2a39343-e8a5-cf1c-0452-000d990b50dd')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'7b692631-f61f-9003-58fd-000e4f5a6323', N'4499d369-9384-4074-bab1-adf1c417b337', N'9ec3e59c-c916-851d-d589-000d990b7930')
INSERT [magelia].[ProductTypeInstance] ([ProductTypeInstanceId], [ProductTypeId], [ProductId]) VALUES (N'3f3f136d-2423-9503-1c50-000e4f5a6324', N'4499d369-9384-4074-bab1-adf1c417b337', N'895e9f89-a787-f11d-d025-000d990b9747')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0f2ff1ea-145b-1815-8132-000d9907b8f2', 9, N'Running Shoes', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.', N'Running Shoes for amateurs and professional runners. These distinctive running shoes xome in different sizes.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'42693408-79b8-bc01-e60e-000ebb9399b1', 9, N'Chocolate chip cookies', N'', N'', N'')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 9, N'Grey pillow. Clipping path', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 9, N'SunStar', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.', N'All the force, secrets and warmth of a star. Beyond sky and wind, higher and higher, invigorated by the pure air and in the eyes, a new strength, intensified by the sky.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 9, N'PurpleSun', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.', N'These sunglasses merge state-of-the-art Italian design with superior quality. Designed for the young at heart, innovative, open-minded consumer, they combine superior quality with contemporary styling.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 9, N'City Life', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.', N'Eyewear for the week-end, casual city Life. Our standard frame with grey lenses. Plastic frame in matte black.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 9, N'A Journey', N'Masculine elegance and modern.This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 9, N'Pink and rosy pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 9, N'Still River', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.', N'A gift of earth to man. This fragrance for Him is both natural and fresh with the rich aromatic citrus scent of Birch and Ivy leaves. A fragrance to replenish from the heart of Nature and regain energy.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 9, N'Weekend Sport', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'75ac5adb-22ac-42fa-8f72-34515265151b', 9, N'Idole', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.', N'Idole is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 9, N'Zilliger ref 3498', N'Men''s Quartz Military Aircraft Watches.', N'Men''s Quartz Military Aircraft Watches.', N'Men''s Quartz Military Aircraft Watches.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 9, N'WebProtect Firewall (Download)', N'This firewall protects you from various threats encountered on the internet. Available for download.', N'This firewall protects you from various threats encountered on the internet. Available for download.', N'This firewall protects you from various threats encountered on the internet. Available for download.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 9, N'Trend-e', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.', N'Trendy and fashionable looks in vibrant colors. Designed for young women looking for great design at an accessible price.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 9, N'Altitude', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.', N'Between the sky and the wind, Altitude evokes the harmony of the desert: imposing by its sheer size yet reassuring with its curving sand dunes. The bewitching warmth of the Tonka bean, the noble harmonies of cedar unite with the freshness of bergamot to create a unique perfume with a powerful and sculpted signature.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 9, N'The week-end sport and City Light Sunglasses Set', N'This pack is composed of the two best-selling watches: weekend sport and City Lights.', N'This pack is composed of the two best-selling watches: weekend sport and City Lights.', N'This pack is composed of the two best-selling watches: weekend sport and City Lights.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 9, N'2012 London Summer Olympics - The Game', N'The Sumer Olympic games. An all family entertainment available for your PC. ', N'The Sumer Olympic games. An all family entertainment available for your PC. ', N'The Sumer Olympic games. An all family entertainment available for your PC. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 9, N'Black diving', N'Black Diving Alarm Digital Military Chime Mens Watch.', N'Black Diving Alarm Digital Military Chime Mens Watch.', N'Black Diving Alarm Digital Military Chime Mens Watch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'413e0337-1c99-4b53-aa27-69475c0b0468', 9, N'Soft decorated pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e54477-ad3e-4821-9895-727c5058a4d9', 9, N'White Light', N'Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.', N'Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.', N'Glitter throughout the night!! This watch is sure to dazzle! One whole row of top notched Austrian crystals lining round the watch face and a love encrusted with glittering crystals.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'2310c6a3-840a-455d-ab03-7726290ecc05', 9, N'45mm SS Case Automatic', N'45mm SS Case Automatic White Dial Brown Strap Men watch.', N'45mm SS Case Automatic White Dial Brown Strap Men watch.', N'45mm SS Case Automatic White Dial Brown Strap Men watch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bec8d392-4279-4195-9c76-79d7bec0715f', 9, N'Citadel Antivirus', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.', N'Protect your computers from viruses and malwares.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 9, N'Orange', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.', N'It''s contrast that makes things interesting, like this orange and blue sunglasses. The choice is clear. It''s a matter of color.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'a86c25ea-00fe-4012-9ea3-8731653a2118', 9, N'Brown Leather Band Watch', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.', N'Better than basic. This is an essential watch for everyday. The round, polished silvertone case is paired with a brown,pebble grain genuine leather strap with a buckle closure. The bold, black printed numerals are easy to read against the silver/white textured dial. Download Instructions & Warranty.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 9, N'Men''s Chrono Day', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.', N'Men''s Chrono Day Black Genuine Leather Mechanical Watch.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 9, N'RC Brown crocodile', N'Watch kite crocodile brown Leather.', N'Watch kite crocodile brown Leather.', N'Watch kite crocodile brown Leather.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 9, N'Karma 4 Men', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more', N'Karma 4 men is a fragrance that encourages harmony, self-awareness… A perfect balance between the clarity of the citrus notes, the spicy floral vibrations at the heart, the classical elegance of the woody notes. So perfectly balanced it seems obvious, an invitation to a timeless moment…The horizon becomes lighter and, as if obvious, a feeling of profound inner equilibrium gradually awakens. more')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 9, N'Blue decor pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 9, N'Beige straps pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ff3d5209-e549-4437-999a-aad44f5340dd', 9, N'TimeEssence', N'This watch is perfectly suited for cardio training. The GPS may not be as effective as in other products but the feedback pertaining to workouts that is provided by the watch proves to be of great help. The exercise intensity score as measured by the heart rate monitor of TimeEssence ranges uses the 1-5 scale. Basic functionality of speed and distance tracking is carried out by the GPS system of this watch. ', N'The important features incorporated in this watch are the GPS, heart rate monitor and foot pod. ', N'This watch is perfectly suited for cardio training. The GPS may not be as effective as in other products but the feedback pertaining to workouts that is provided by the watch proves to be of great help. The exercise intensity score as measured by the heart rate monitor of TimeEssence ranges uses the 1-5 scale. Basic functionality of speed and distance tracking is carried out by the GPS system of this watch. ')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 9, N'The Great Gatsby - Electronic Book', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format', N'The Great Gatsby. The american classic novel written by Scott Fitzgerald in your favorite electronic book format')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 9, N'Orange pillow. Clipping path', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 9, N'Unique', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.', N'Be unique ...with a twist of orange! These fun sunglasses in shiny silver feature an attractive double bridge and orange accents. The orange lenses are mirrored. Wear them and shine.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'0de77b97-c976-448f-9776-c732a43d65d8', 9, N'3D Glasses', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.', N'These durable glasses contain optical quality cast acrylic lenses tinted to exacting color standards. The lenses are chromatically tuned to phosphors in computer screens to virtually eliminate ghost images and other annoying visual distortions. The frames fit over most regular frames with corrective lenses.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'855bd34f-53e8-4436-aeba-cddf92ca676a', 9, N'Coast to Coast', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.', N'The fresh, aquatic scent. Breath nature''s majesty . Gazing upon the intense beauty and awesome power of the ocean fills you with a sense of invincibility. Transat''s cool, aquatic scent exhilarates you, allowing you to dream beyond the horizon. It blends the fresh scent of rosemary with aquatic, carefree marine accords. The light fragrance is anchored by the strength of amber.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'344f170c-9e9b-4559-96fe-d21d818a98ca', 9, N'White Musc', N'White Musc', N'White Musc', N'White Musc')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 9, N'Pack Watch with Sunglasses', N'A pack with a watch and a pair of sunglasses.', N'A pack with a watch and a pair of sunglasses.', N'A pack with a watch and a pair of sunglasses.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 9, N'Aviatissimo', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.', N'Aviator-style metal sunglasses in shiny gunmetal feature an attractive double bridge and white accents. The blue lenses are mirrored. Wear them and shine.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'6a0eb421-1c55-4419-a656-dc5339612ccd', 9, N'Green pillow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 9, N'Dress Shirt V', N'Designer Dress Shirt V', N'Designer Dress Shirt V', N'Designer Dress Shirt V')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 9, N'Man-Kind', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.', N'Masculine elegance and modern. This seductive fragrance is strong, yet gentle, virile yet tender...a delicious blend of heady notes that, like the man who wears it, charms us with a modern mix of passion and sensitivity.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 9, N'Surf & Kite', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.', N'Eyewear for surfing, windsurfing, kitesurfing, kayaking, kiteboarding, kite surfing, kite boarding, and most water sports, extreme sports and high wind sports.')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 9, N'Pure Water', N'Pure Water', N'Pure Water', N'Pure Water')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 9, N'Software Security Pack', N'<p>Software Security Pack</p>', N'<p>Software Security Pack</p>', N'<p>Software Security Pack</p>')
INSERT [magelia].[ProductLocalized] ([ProductId], [CultureId], [Name], [AdditionalDescription], [ShortDescription], [LongDescription]) VALUES (N'e32d7fc3-a151-423e-8b35-f238b643671c', 9, N'Dress Shirt', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ', N'Italian Collar and Long Sleeves  Dress Shirts', N'Italian Collar and Long Sleeves  Dress Shirts 55% Cotton/45% Polyester ')
INSERT [magelia].[Catalog] ([CatalogId], [StartDate], [EndDate], [SellerId], [Code], [IsActive], [IsTaxInclusive], [ExternalId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', NULL, NULL, @sellerId, N'MainCatalog', 1, 0, N'')
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'de6d87fb-e8bb-ac03-1827-000e4f5a6326', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'06c925ed-9e5b-ad03-3f38-000e4f5a6326', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'edd02a16-2ac5-c803-286b-000e4f5a6e17', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fd9dd527-4a14-c903-4f7b-000e4f5a6e17', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd67f7b56-f1fe-ca03-768c-000e4f5a6e17', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9eda77e0-fcb7-cb03-9d9c-000e4f5a6e17', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'13b55dd4-37f6-e503-5059-000e4f5a7564', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd001a3a0-8be5-e603-776a-000e4f5a7564', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7a12c185-f4b0-e703-9e7a-000e4f5a7564', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'29d881fa-028d-e803-c58b-000e4f5a7564', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f3321d1c-0c8f-0104-0ceb-000e4f5a7d1d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3d87c6b2-b6fd-0204-33fb-000e4f5a7d1d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'54d66eca-078c-0304-5b0c-000e4f5a7d1d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd868e062-d8de-0404-821d-000e4f5a7d1d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', N'2310c6a3-840a-455d-ab03-7726290ecc05', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'19007f0d-ae9e-1f04-8f25-000e4f5a854f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a7b05f24-1999-2004-b636-000e4f5a854f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'352b2b2a-1643-2104-b636-000e4f5a854f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'06e3a544-8d07-2204-dd46-000e4f5a854f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'04951074-ba28-4202-e08f-000f8c6d2a70', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e94c159c-44ab-4302-e08f-000f8c6d2a70', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'be1318a7-fb3e-4402-e08f-000f8c6d2a70', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f5590274-cc94-4502-e08f-000f8c6d2a70', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'23d174d7-7a94-3b04-0be6-000e4f5a8ef3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0daf09bc-f7b4-3c04-32f7-000e4f5a8ef3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'151fd11d-389d-3d04-5a07-000e4f5a8ef3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'0de77b97-c976-448f-9776-c732a43d65d8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0b913faa-c4a2-3e04-8118-000e4f5a8ef3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'766ff983-6cf0-3d03-e0a5-000f8c6d48a0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5c8a785a-1609-3e03-e0a5-000f8c6d48a0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'375af709-8aba-3f03-e0a5-000f8c6d48a0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6b8e88f6-43ee-4003-e0a5-000f8c6d48a0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', N'413e0337-1c99-4b53-aa27-69475c0b0468', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'44e3c06f-53fd-5704-473b-000e4f5a9568', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'33de17f6-2e37-5804-6e4c-000e4f5a9568', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'96a744f4-049c-5904-955c-000e4f5a9568', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'817aa4d9-5941-5a04-bc6d-000e4f5a9568', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'072892b7-844a-ad02-5aed-000f8c6d35c3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e911286c-3038-ae02-5aed-000f8c6d35c3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f42c46d4-a143-af02-5aed-000f8c6d35c3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fe8dd750-855a-b002-5aed-000f8c6d35c3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'75ac5adb-22ac-42fa-8f72-34515265151b', N'2684cc5d-2d4f-4c91-bc69-283a3bbb958b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'005667b8-57d1-df04-e9a1-000e4fa130e5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'35473775-d768-e004-10b2-000e4fa130e6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1239fb8a-1a42-e104-37c2-000e4fa130e6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2d0d5452-58bb-e204-5ed3-000e4fa130e6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bf8fc5d8-b4ac-8d09-aa38-000d9903193a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f642d627-8a65-8e09-0cc2-000d9903193d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9eb051f3-de68-8f09-0cc2-000d9903193d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ee03182f-097c-9009-0cc2-000d9903193d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'502c25a6-fee4-fc04-97f2-000e4fa13684', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2d724575-5278-fd04-bf03-000e4fa13684', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9a3c019e-798e-fe04-e613-000e4fa13684', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3ed017bd-e321-ff04-0d24-000e4fa13685', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cd6a254a-a2e7-6602-7145-000f8c6d2e24', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a1dc632d-377e-6702-7145-000f8c6d2e24', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4efea752-6311-6802-7145-000f8c6d2e24', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'40b119bc-1d26-6902-7145-000f8c6d2e24', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e2d29304-e5c1-ca00-2ffb-000ebb92c1a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5dd5a28e-42ac-cb00-b69b-000ebb92c1a6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'efb9d780-c08d-cc00-b69b-000ebb92c1a6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'118b3677-c4a5-cd00-b69b-000ebb92c1a6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', N'8b779da6-e306-44c1-a673-d464ec8a4b34', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e10f952e-9e88-2e25-fde1-000d984b4ea2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c8d35cab-eab1-2f25-fde1-000d984b4ea2', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'c5c3c5f4-6812-3025-6057-000d984b4ea5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'15e94b64-d407-3125-6057-000d984b4ea5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'aa883db7-596a-1905-8dfe-000e4fa14055', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0c525e29-047d-1a05-b50e-000e4fa14055', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'91a7a05d-73c7-1b05-dc1f-000e4fa14055', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'e32d7fc3-a151-423e-8b35-f238b643671c', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a3d40be9-1005-1c05-032f-000e4fa14056', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8d5698f2-2e39-3705-70f2-000e4fa14a13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bd0f12a6-a67c-3805-9802-000e4fa14a13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1efa8564-6bfc-3905-bf13-000e4fa14a13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ef066238-ba64-3a05-e624-000e4fa14a13', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'413e0337-1c99-4b53-aa27-69475c0b0468', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'68522202-902c-5405-21eb-000e4fa151ac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'482fec4c-c798-5505-48fc-000e4fa151ac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a834f924-bc8a-5605-48fc-000e4fa151ac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a98055cd-d5b4-5705-700d-000e4fa151ac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e54477-ad3e-4821-9895-727c5058a4d9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4d88a2ab-1583-7105-2924-000e4fa15762', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'ff3d5209-e549-4437-999a-aad44f5340dd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1ea68474-d616-7205-5034-000e4fa15762', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bc916e31-8eac-7305-7745-000e4fa15762', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'69862e3b-7a78-7405-9e55-000e4fa15762', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'2310c6a3-840a-455d-ab03-7726290ecc05', N'3ced538b-8ccb-4f16-bc72-0d220bd899a0', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'958fb80e-08bf-ef09-f250-000d99031d7e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'caf618f4-44cb-f009-f250-000d99031d7e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'206b8dec-a071-4c7a-99a9-61bbdc9a98f7', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'01431067-e04c-f109-f250-000d99031d7e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'92e91663-0eef-f209-f250-000d99031d7e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bec8d392-4279-4195-9c76-79d7bec0715f', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f484f390-3992-8e05-eea9-000e4fa15fac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'f1701907-54db-8f05-15b9-000e4fa15fad', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd94fa4bc-58b4-9005-3cca-000e4fa15fad', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4104549c-d5c1-9105-63db-000e4fa15fad', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3e2ef708-bdf3-ab05-8041-000e4fa166ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4f2d1611-3170-ac05-a751-000e4fa166ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'91e54477-ad3e-4821-9895-727c5058a4d9', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'707e1a26-8dfa-ad05-ce62-000e4fa166ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'30a403c7-d92b-ae05-f572-000e4fa166ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'a86c25ea-00fe-4012-9ea3-8731653a2118', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6f0ebe4e-c48c-c705-ce8e-000e4fa16d91', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd0016c01-29b8-c805-f59e-000e4fa16d91', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6ea883b9-4427-c905-1caf-000e4fa16d92', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fe7a63db-65ac-ca05-43bf-000e4fa16d92', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5dcbabd8-115f-e305-e7ec-000e4fa173af', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9f5c6307-3058-e405-0efd-000e4fa173b0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'a86c25ea-00fe-4012-9ea3-8731653a2118', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'128c39cc-fc1b-e505-360d-000e4fa173b0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1a498cdc-0ef6-e605-5d1e-000e4fa173b0', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'286882d7-ba3e-d102-bdde-000f8c6d3ad9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'5727537a-f96f-d202-bdde-000f8c6d3ad9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'53a9c13f-2227-d302-bdde-000f8c6d3ad9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'd2944f63-9945-4dfa-9cfc-8a4f1c2c7aa4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'bb1442da-9f83-d402-bdde-000f8c6d3ad9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'dfbd6f11-e5a2-ff05-6ddc-000e4fa17abd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7ecd1f18-a07f-0006-94ec-000e4fa17abd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e928b5c1-d334-0106-bbfd-000e4fa17abd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a93916ba-842d-0206-e30e-000e4fa17abd', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'6fc64cc3-2b04-1e06-aaa9-000e4fa1843d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4ef46163-d859-1f06-d1ba-000e4fa1843d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b924dce8-0c86-2006-f8ca-000e4fa1843d', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'51df260c-b56c-4f7f-9978-80a1e9eb7f0c', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a9216650-271f-2106-1fdb-000e4fa1843e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'95f13f0a-6c7c-4bf1-aebf-a5b93a77872b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'05095b56-7f9b-3b06-1a9d-000e4fa18c66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'2310c6a3-840a-455d-ab03-7726290ecc05', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'306b809b-07dd-3c06-41ae-000e4fa18c66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'3f7e59d5-4f54-4a75-be65-4766284e53ce', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3ad85ddb-552f-3d06-68bf-000e4fa18c66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ff5fdc3f-a286-3e06-8fcf-000e4fa18c66', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ff3d5209-e549-4437-999a-aad44f5340dd', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ae0fdb47-a9f7-493d-87a6-2df558e4fbf3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ba414509-7496-421a-be4f-7a018442de6c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'bec8d392-4279-4195-9c76-79d7bec0715f', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1b8969b2-3dc4-4b58-9b8c-084223e4a7f3', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7d1d0fd4-acaf-4e6d-a91d-af1f4734ac69', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0831c5b9-d16d-4a45-94ad-b96139fc974a', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cddaff5c-bac2-5806-994d-000e4fa192c4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'd4b1c156-3f9e-4e79-bab2-9d3dd5631980', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a54d9a4d-ab72-5906-c05e-000e4fa192c4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'6a0eb421-1c55-4419-a656-dc5339612ccd', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b91c608b-3153-5a06-e76e-000e4fa192c4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd36ef431-3c45-5b06-0e7f-000e4fa192c5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4f176677-8893-7406-d9dc-000e4fa19884', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'231adc49-c1ec-7506-00ec-000e4fa19885', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'70e76117-1f18-7606-27fd-000e4fa19885', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'0d18a089-b01a-7706-4f0e-000e4fa19885', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'385342fd-b03b-9006-fde1-000e4fa19f17', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7fe6fc4d-7bab-9106-24f2-000e4fa19f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cc1bd198-91b6-9206-4c02-000e4fa19f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3ba58831-1f33-9306-7313-000e4fa19f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0de77b97-c976-448f-9776-c732a43d65d8', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'40edfd7f-f4b8-8902-8899-000f8c6d31a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'75ac5adb-22ac-42fa-8f72-34515265151b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fce61dae-01a5-8a02-8899-000f8c6d31a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ece0d1e9-8a36-8b02-8899-000f8c6d31a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'10c2cc5d-795e-428d-97a6-4e2497dcf11d', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7c79ad11-2dae-8c02-8899-000f8c6d31a5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'855bd34f-53e8-4436-aeba-cddf92ca676a', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'8abb3de3-9b6f-6103-6d43-000f8c6d4c3f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'22528045-7c07-6203-6d43-000f8c6d4c3f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'877dd18c-44ec-6303-6d43-000f8c6d4c3f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'844d8619-3bcc-6403-6d43-000f8c6d4c3f', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'344f170c-9e9b-4559-96fe-d21d818a98ca', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'4a073702-6be4-9c00-0f6f-000e4f59f543', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fcd9126f-aa12-9d00-3680-000e4f59f543', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2f8822b5-b5b2-9e00-5d91-000e4f59f543', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'855bd34f-53e8-4436-aeba-cddf92ca676a', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b4e1f4e6-402d-9f00-84a1-000e4f59f543', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'344f170c-9e9b-4559-96fe-d21d818a98ca', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd58f4577-c9e8-ad06-d4f6-000e4fa1a499', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cdd8fcec-2b43-ae06-fc06-000e4fa1a499', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'a3e1f735-5394-af06-2317-000e4fa1a49a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'10c60216-acd5-b006-4a27-000e4fa1a49a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'16cbee5c-2c5c-c906-9154-000e4fa1aa73', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'e455e3da-f7f5-4c03-a70f-0eff6d101c3b', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fe171d9c-c86c-ca06-b865-000e4fa1aa73', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'413e0337-1c99-4b53-aa27-69475c0b0468', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'e4f73b82-d47c-cb06-df75-000e4fa1aa73', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'16c4f7b0-eec6-cc06-0686-000e4fa1aa74', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'6a0eb421-1c55-4419-a656-dc5339612ccd', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd57e790c-bf4d-b102-108f-000e4f5a4acc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'c1d854f4-f098-4bf0-b97c-5d9da3ea219c', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'cd796326-d8d8-b202-37a0-000e4f5a4acc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'71e032cf-2592-49a9-a166-6eea06ca4014', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd028fb7f-1d1f-b302-5eb0-000e4f5a4acc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'1dea3a44-68da-4aa9-8083-1e80ba4e6af4', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'204f73ce-5c62-b402-85c1-000e4f5a4acc', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'58779179-8dd8-f502-b66e-000f8c6d3f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fe6d6431-6c2b-f602-b66e-000f8c6d3f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'3b8ae878-a2f0-f702-b66e-000f8c6d3f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'99d55262-66e3-4bdd-aed4-671cfdef7ceb', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'9076b17a-9554-f802-b66e-000f8c6d3f18', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'334b8b75-2bb3-4464-a583-e1bdb2c6a0d3', N'91e54477-ad3e-4821-9895-727c5058a4d9', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'703e30b1-25e6-e506-c121-000e4fa1b099', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'331a1388-a75d-e606-e831-000e4fa1b099', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'ba14410c-a90d-4df3-8dd6-2ed839f6294e', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7f3a0f52-42f8-e706-0f42-000e4fa1b09a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'39342e4a-49ee-e806-3652-000e4fa1b09a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'bdf15850-a5c3-4994-89a5-e9de4725c1ea', N'2626e9fa-eb0b-475b-87b6-2cb2c3a97129', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'b5b3141c-c635-1903-a389-000f8c6d43ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'04528eb3-96f6-4e1e-9417-1fcd1edd31bf', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'37d1eae9-5d02-1a03-a389-000f8c6d43ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'342759a9-1c57-4d62-a135-4e5155d5c1b6', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'ccaa735a-6b72-1b03-a389-000f8c6d43ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'abd8e5a5-be3a-4f02-b294-16c3b1e34b4f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'045b1561-4729-1c03-a389-000f8c6d43ab', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'b9e396c6-c2d6-4f6f-88f6-ea331f999393', N'652cdd8a-e2bf-4906-810b-18c912ccc4b8', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'7b465c76-af80-f801-47ff-000f8c6d08ac', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'55da72fe-1796-f901-aa74-000f8c6d08ae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'd844a00c-379a-fa01-aa74-000f8c6d08ae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'0b376ded-3b28-4a3d-8637-bd5a4c69b79f', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'21399f04-539a-fb01-aa74-000f8c6d08ae', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'ae198d00-03dc-4ca9-9e99-c4bf8fb851be', 1, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'94379edc-7e57-6f03-c2e9-000e4f5a5aa5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'341c84b5-d194-40d6-80bd-eea300e9ee45', 0, 0)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'1df91df8-0493-7003-c2e9-000e4f5a5aa5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'99399f06-6f42-4ed1-b8d7-e08ed50c280d', 0, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'2d69bd66-3df5-7103-e9fa-000e4f5a5aa5', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'9ce665b7-f1f9-4bd4-8015-966c236ba8f9', 1, 1)
INSERT [magelia].[ProductLink] ([ProductLinkId], [CatalogId], [ProductId], [LinkedProductId], [LinkTypeId], [Order]) VALUES (N'fb0ab9c0-1b37-7203-110a-000e4f5a5aa6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'e32d7fc3-a151-423e-8b35-f238b643671c', N'75ac5adb-22ac-42fa-8f72-34515265151b', 1, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'12728eef-d3d9-4cb2-8a8a-8e4d66aec063', 1, 0)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'b9d1b18f-1b7b-4acb-80bc-d5af65ba9198', N'7028d035-bf96-46a5-8fc0-db6469ac5d99', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'b0bcaf6c-6409-41ff-82d1-4b7910ed2117', 1, 1)
INSERT [magelia].[BundleItem] ([BundleProductId], [BundledProductId], [Quantity], [Order]) VALUES (N'91e162ab-45da-44c7-b38e-f1ccd97eba63', N'bec8d392-4279-4195-9c76-79d7bec0715f', 1, 0)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'8321da62-565b-2f1b-c969-000d990ad30e', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'0f2ff1ea-145b-1815-8132-000d9907b8f2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'33df410e-74d4-141e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5f28a084-fd33-5c1c-f13f-000d990b29b2', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'b85c097b-a88c-151e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'f2a39343-e8a5-cf1c-0452-000d990b50dd', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'ca9e1386-3a90-161e-177d-000d990b9dd9', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'9ec3e59c-c916-851d-d589-000d990b7930', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'895e9f89-a787-f11d-d025-000d990b9747', NULL)
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'67bf3c90-9602-c901-a8eb-000ebb93b305', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'42693408-79b8-bc01-e60e-000ebb9399b1', NULL)
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
INSERT [magelia].[ProductCatalog] ([ProductCatalogId], [CatalogId], [ProductId], [AdditionalData]) VALUES (N'd8697d4e-91a5-420e-9ea9-60830f29278a', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', N'5b61333f-19e5-449f-8f0f-546debd3b1ff', NULL)
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
INSERT [magelia].[WarehouseLocalized] ([WarehouseId], [CultureId], [Name]) VALUES (N'58593762-783c-4df9-a50c-4fcbd18a2c87', 9, N'Warehouse 3 Chicago')
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', @sellerId, N'1stOrderPromotioncode-$10-off', N'', 1, 0, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:ValuesAction"><a:Condition i:nil="true" /><a:Target>Basket</a:Target><b:Values><b:ValuesAction.DiscountValue><b:CurrencyId>840</b:CurrencyId><b:IncludeTaxes>false</b:IncludeTaxes><b:Value>10</b:Value></b:ValuesAction.DiscountValue></b:Values></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:BinaryCondition"><b:ChildConditionNodes><a:BaseCondition i:type="b:PromoCodeCondition"><b:PromoCode>Magelia</b:PromoCode></a:BaseCondition><a:BaseCondition i:type="b:MaxApplicationCondition"><b:MaxApplicationCount>1</b:MaxApplicationCount><b:Type>PerUser</b:Type></a:BaseCondition></b:ChildConditionNodes><b:Operand>And</b:Operand></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[Discount] ([DiscountId], [SellerId], [Code], [ExternalCode], [IsActive], [Priority], [DiscountNode], [StartDate], [EndDate]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', @sellerId, N'Watches-5%', N'', 1, 1000, N'<DiscountNode xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><Actions xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common"><a:BaseAction xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Actions" i:type="b:PercentageAction"><a:Condition i:nil="true" /><a:Target>ProductUnit</a:Target><b:Accumulative>false</b:Accumulative><b:IncludeShippingRates>false</b:IncludeShippingRates><b:Percentage>5</b:Percentage></a:BaseAction></Actions><PreCondition xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Common" xmlns:b="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime.Discount.Conditions" i:type="b:CategoriesCondition"><b:CategoryCodes xmlns:c="http://schemas.microsoft.com/2003/10/Serialization/Arrays"><c:string>Watches</c:string></b:CategoryCodes></PreCondition></DiscountNode>', NULL, NULL)
INSERT [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail], [MinRequiredUserNameLength]) VALUES (N'52f034c1-7969-9400-4654-000da7b9e2a4', @sellerId, @storeName, 1, 10, 0, 3, 60, NULL, 0, 0, 1, 3)
INSERT [magelia].[StoreConfiguration] ([StoreConfigurationId], [SellerId], [Description], [Code]) VALUES (N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @sellerId, NULL, N'DefaultConfiguration')
INSERT [magelia].[Store] ([StoreId], [SellerId], [StoreConfigurationId], [Code], [IsActive], [AdditionalDataXml], [CustomerSetId], [DefaultCountryId], [BurstedContentTypeAssemblyBinary]) VALUES (@storeId, @sellerId, N'8e5fe030-bc8e-428a-8a6b-5e583d2a7302', @storeName, 1, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><LastOrderNumber>0</LastOrderNumber></StoreSettings>', N'52f034c1-7969-9400-4654-000da7b9e2a4', 840, NULL)
INSERT [magelia].[OrderChannel] ([OrderChannelId], [Code], [SellerId]) VALUES (N'66de51ab-749b-3800-809f-000ebb921d15', N'Point of sales', @sellerId)
INSERT [magelia].[OrderChannel] ([OrderChannelId], [Code], [SellerId]) VALUES (N'b9edc908-e223-1608-8671-000e5208e26c', N'Web', @sellerId)
INSERT [magelia].[ContentType] ([ContentTypeId], [SellerId], [ParentContentTypeId], [Code]) VALUES (N'bfdcb975-7e63-2900-f54c-000de8cf0b62', @sellerId, NULL, N'Metadata')
INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 9)
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
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d', 9, N'1st order promotion code discount', N'$10 off for your 1st order')
INSERT [magelia].[DiscountLocalized] ([DiscountId], [CultureId], [Name], [Description]) VALUES (N'7d542c6e-243a-4524-9b72-d86169a191eb', 9, N'5% off watches', N'5% off watches')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'2fcbb9d0-3e31-6f0c-2e90-000d9bd6815d')
INSERT [magelia].[StoreDiscount] ([Store_StoreId], [Discount_DiscountId]) VALUES (@storeId, N'7d542c6e-243a-4524-9b72-d86169a191eb')
INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeId, 9, 1)
INSERT [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (@storeId, 840, 1)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'2c57e87e-5747-422d-bb12-007f1eb2d3c0', @storeId, 9, 840, 840)
INSERT [magelia].[DataBurstConfiguration] ([DataBurstConfigurationId], [StoreId], [CultureId], [CurrencyId], [CountryId]) VALUES (N'ba9a5617-2822-4c01-b749-5b9b17e1dd09', @storeId, 9, 840, 124)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'ad54346c-72c2-0207-9c2b-000ebb8ff611', @storeId, 124, N'be3d415b-a040-750e-42d7-000e506f8184', N'0ea0007c-2c27-830f-7468-000e5079bdb4', NULL, NULL)
INSERT [magelia].[GeographicZonePreference] ([GeographicZonePreferenceId], [StoreId], [CountryId], [TaxZoneId], [ShippingZoneId], [CultureId], [CurrencyId]) VALUES (N'3011ec51-af0d-45a1-a7cc-f4051f0898f3', @storeId, 840, N'de071fbf-472a-3d0c-d443-000e4fa6c806', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', NULL, NULL)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'41603d8d-6c52-4aed-8d35-2e1635e7d049', @storeId, N'NewAccount', N'E-mail sent to confirm the creation of an account', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'26a65c24-9f08-47c3-88d5-5a87d7c5fffe', @storeId, N'OrderConfirmation', N'Order confirmation e-mail', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'9226eb24-ac24-43ab-a6a4-768f3f2c1201', @storeId, N'Contact', N'E-mail sent to the store owner by a visitor who used the ''contact-us'' form', 20)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'3a405caf-feeb-4cff-9ea2-774804469521', @storeId, N'PaymentApproved', N'E-mail sent to confirm that the payment has been approved for an order', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'2d36f2fc-3819-4378-be76-916ff721d3aa', @storeId, N'PaymentRejected', N'E-mail sent to inform that the payment request has been rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'f4da7b3d-32cb-4227-8b59-bb3df88bd420', @storeId, N'OrderRejected', N'E-mail sent when an order has been  rejected', 10)
INSERT [magelia].[MailTemplate] ([MailTemplateId], [StoreId], [Code], [Description], [Priority]) VALUES (N'8ec30cc8-fae8-422a-94ec-c5b86d0944ae', @storeId, N'NewPassword', N'E-mail sent to confirm that a password has been successfully reset', 20)
INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeId, 9, @storeName, NULL)
INSERT [magelia].[StoreCatalog] ([Store_StoreId], [Catalog_CatalogId]) VALUES (@storeId, N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[StoreOrderChannel] ([Store_StoreId], [OrderChannel_OrderChannelId]) VALUES (@storeId, N'b9edc908-e223-1608-8671-000e5208e26c')
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
</html>
', NULL, N'$data.Store - Thank your for your order', N'noreply@magelia.local', @storeName)
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
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'b9edc908-e223-1608-8671-000e5208e26c', 9, N'online sales', N'Web orders / online sales')
INSERT [magelia].[OrderChannelLocalized] ([OrderChannelId], [CultureId], [Name], [Description]) VALUES (N'66de51ab-749b-3800-809f-000ebb921d15', 9, N'Point of sales', N'')
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
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'c3f1e62a-cab6-4d68-80b9-2773cbcfd1d9', 9, N'United States Postal Service')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'368a0fa0-f7de-48c7-b75d-2b1fcf252b13', 9, N'UPS')
INSERT [magelia].[CarrierLocalized] ([CarrierId], [CultureId], [Name]) VALUES (N'0006ee61-f59b-426c-bb47-485fe07307f3', 9, N'Fedex')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'edcf75bd-ab97-d60f-7740-000e507a294a', 9, N'Fedex Ground Mainland USA (4 - 6 days)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'9c9705b3-5459-fc0f-6360-000e507a4ba3', 9, N'Hawaii Alaska')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'7b33c84f-96a8-6002-8594-000e53ce2069', 9, N'UPS Premium (1 day)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'f9ff0c6b-ab7a-ac02-0a45-000e53ceda88', 9, N'Express (1-2 days)')
INSERT [magelia].[ShippingRateLocalized] ([ShippingRateId], [CultureId], [Description]) VALUES (N'ba0b5478-1eb7-d102-fd77-000e53ceffc6', 9, N'UPS Ground')
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'2bd118f0-3fa0-ca00-4019-00100b1c9d89', N'ba0b5478-1eb7-d102-fd77-000e53ceffc6', CAST(0.00000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), CAST(20.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'899d84fd-8938-cb00-6747-00100b1c9d89', N'ba0b5478-1eb7-d102-fd77-000e53ceffc6', CAST(5.00000 AS Decimal(18, 5)), NULL, CAST(30.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'aef5a62a-3b67-ea00-1bf1-00100b1cc2b2', N'9c9705b3-5459-fc0f-6360-000e507a4ba3', CAST(0.00000 AS Decimal(18, 5)), CAST(20000.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1766e618-46f2-eb00-1bf1-00100b1cc2b2', N'9c9705b3-5459-fc0f-6360-000e507a4ba3', CAST(20000.00000 AS Decimal(18, 5)), CAST(40000.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1e655537-ed4d-ec00-1bf1-00100b1cc2b2', N'9c9705b3-5459-fc0f-6360-000e507a4ba3', CAST(40000.00000 AS Decimal(18, 5)), NULL, CAST(125.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'1f07c1a0-3d88-0301-804b-00100b1cdd4b', N'f9ff0c6b-ab7a-ac02-0a45-000e53ceda88', CAST(0.00000 AS Decimal(18, 5)), NULL, CAST(25.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'64805b71-36e1-1701-678a-00100b1d7795', N'7b33c84f-96a8-6002-8594-000e53ce2069', CAST(0.00000 AS Decimal(18, 5)), CAST(500.00000 AS Decimal(18, 5)), CAST(50.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'181a3235-a977-1801-678a-00100b1d7795', N'7b33c84f-96a8-6002-8594-000e53ce2069', CAST(500.00000 AS Decimal(18, 5)), NULL, CAST(40.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[ShippingRateValue] ([ShippingRateValueId], [ShippingRateId], [From], [To], [Rate], [CurrencyId]) VALUES (N'c9f95abc-1299-2901-7fa5-00100b1d9328', N'edcf75bd-ab97-d60f-7740-000e507a294a', CAST(0.00000 AS Decimal(18, 5)), NULL, CAST(10.00000 AS Decimal(18, 5)), 840)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'faf31383-e167-760e-42d7-000e506f8184', N'be3d415b-a040-750e-42d7-000e506f8184', 4, 124, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'15407904-e49e-3800-edb0-000e5212dd2a', N'0ea0007c-2c27-830f-7468-000e5079bdb4', 4, 124, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'fa5f6191-777f-0d04-a5e5-000ebb89b6ad', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'88a32071-6665-0e04-a5e5-000ebb89b6ad', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'8af5b4ef-1dcd-0f04-a5e5-000ebb89b6ad', N'759b6b9b-37b2-560f-eb2e-000e5078cc06', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'b330a6cf-72ed-1804-06da-000ebb89bbc3', N'22ee9276-25ea-a40f-d2be-000e5079e671', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'ee98161b-0451-1904-06da-000ebb89bbc3', N'22ee9276-25ea-a40f-d2be-000e5079e671', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'fd9571ee-4d9f-cf05-4e3d-000ebb8c61de', N'944591ac-19d1-ce05-4e3d-000ebb8c61de', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'087d4911-7cbe-e905-20ef-000ebb8c7cee', N'3c29955e-d772-e805-20ef-000ebb8c7cee', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'f0a0bd58-89a2-f205-4407-000ebb8c85a4', N'ebf9b0a3-8660-46c9-a8db-928e1d509dcd', 4, 840, N'0fb464da-e8b0-4e00-a9cc-7719f0d7fb76', N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'377fb854-b1cf-d502-297a-000ebb94a8b7', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, NULL, N'', 0)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'109fde0a-0538-d602-297a-000ebb94a8b7', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, N'0fb464da-e8b0-4e00-a9cc-7719f0d7fb76', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'a29a3199-f457-d702-297a-000ebb94a8b7', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, N'505cec32-d747-4c53-a3c5-04a30787dae1', N'', 1)
INSERT [magelia].[GeographicZoneFilter] ([GeographicZoneFilterId], [GeographicZoneId], [ContinentId], [CountryId], [RegionId], [ZipCodeExpression], [Exclude]) VALUES (N'e8032043-6365-d802-297a-000ebb94a8b7', N'de071fbf-472a-3d0c-d443-000e4fa6c806', 4, 840, N'ee9c8c5b-420b-4c81-8739-aa49b2804d06', N'', 1)
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'759b6b9b-37b2-560f-eb2e-000e5078cc06', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'0ea0007c-2c27-830f-7468-000e5079bdb4', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[ShippingZoneCatalog] ([ShippingZone_GeographicZoneId], [Catalog_CatalogId]) VALUES (N'22ee9276-25ea-a40f-d2be-000e5079e671', N'387b1efa-6f1f-47a8-8356-80038c7ff07b')
INSERT [magelia].[CatalogLocalized] ([CatalogId], [CultureId], [Name], [LongDescription], [ShortDescription]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 9, N'Default Catalog', N'Default catalog long description', N'Default catalog short description')
INSERT [magelia].[CatalogCurrency] ([Catalog_CatalogId], [Currency_CurrencyId]) VALUES (N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 840)
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'eea734f6-bef4-0b02-fe30-000ebb93fe54', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Food', N'')
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
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'MenClothes', N'Men''s Clothes')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'MenFragrances', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 0, N'home', N'')
INSERT [magelia].[CatalogCategory] ([CategoryId], [CatalogId], [IsActive], [IsOnline], [Code], [ExternalId]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'387b1efa-6f1f-47a8-8356-80038c7ff07b', 1, 1, N'Shoes', N'')
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'525b2689-0225-2625-9b6b-000d984b4ea0', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 978, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(119.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'00feca84-3345-2725-9b6b-000d984b4ea0', N'7abf2b2e-39df-454a-8a31-4e655fa2e381', 840, 1, CAST(39.00000 AS Decimal(18, 5)), CAST(49.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e9fc7401-0c83-8909-aa38-000d9903193a', N'a2bdf0a5-73c2-475d-b259-922257f44631', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'308ab400-089a-8a09-aa38-000d9903193a', N'a2bdf0a5-73c2-475d-b259-922257f44631', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0feaad14-fd53-e909-2d44-000d99031d7a', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 840, 1, CAST(30.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8204f4d1-760a-ea09-2d44-000d99031d7a', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 978, 1, CAST(200.00000 AS Decimal(18, 5)), CAST(220.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3ac7c523-549f-9700-4c1d-000e4f59f542', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 840, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(250.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aff36d41-ee53-9800-4c1d-000e4f59f542', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 978, 1, CAST(390.00000 AS Decimal(18, 5)), CAST(410.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'008ae2e3-59ef-9902-d80b-000e4f5a4aca', N'0b2f7e63-52b6-465f-b144-098e2507c678', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'55fa1cfa-0a7a-9a02-d80b-000e4f5a4aca', N'0b2f7e63-52b6-465f-b144-098e2507c678', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9a5dd7ff-a665-9d02-d80b-000e4f5a4aca', N'00575ef8-b936-485c-ac53-0096f50a54b2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8c2e3601-7d23-9e02-d80b-000e4f5a4aca', N'00575ef8-b936-485c-ac53-0096f50a54b2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'03a8a5e7-46e1-a102-ff1b-000e4f5a4aca', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5601540d-5f7d-a202-ff1b-000e4f5a4aca', N'd8a6b3a3-74e6-417d-b298-6da1d8bc383a', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0d379e69-17fa-a702-ff1b-000e4f5a4aca', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'157e9a4b-51d6-a802-262c-000e4f5a4acb', N'cd9c7747-a887-4337-8dc7-a67b499cfcc2', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c163e401-070e-a902-262c-000e4f5a4acb', N'2f1157cb-f677-49f7-812d-0323ecedf679', 840, 1, CAST(93.00000 AS Decimal(18, 5)), CAST(96.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1a827fa9-0f72-aa02-262c-000e4f5a4acb', N'2f1157cb-f677-49f7-812d-0323ecedf679', 978, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'db6cefe6-f017-4f03-3c43-000e4f5a5aa4', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2b64f7af-1002-5003-3c43-000e4f5a5aa4', N'9ac78b94-6cdb-462f-8023-27005cac67c2', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd906310e-fe5c-5303-3c43-000e4f5a5aa4', N'7209d388-381c-466a-9afc-80b3989a38c0', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3ea1e3ef-b6e2-5403-6354-000e4f5a5aa4', N'7209d388-381c-466a-9afc-80b3989a38c0', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2df83a1b-3fdf-5903-6354-000e4f5a5aa4', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'83681c8d-4171-5a03-6354-000e4f5a5aa4', N'd182d800-e05b-4eb6-a2c0-687e0a2498b9', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2bfd3c65-b25e-5b03-8a65-000e4f5a5aa4', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f8674fa5-ffcc-5c03-8a65-000e4f5a5aa4', N'62f2689d-dc1f-45b3-b5ce-d95f68f72d8c', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1de3510f-ca7b-5f03-8a65-000e4f5a5aa4', N'15519388-9bff-454f-b0c1-93ae7c852e51', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0a4c1900-bd57-6003-8a65-000e4f5a5aa4', N'15519388-9bff-454f-b0c1-93ae7c852e51', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1b728d4d-8703-6303-b175-000e4f5a5aa4', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'61659953-dde5-6403-b175-000e4f5a5aa4', N'f21839f3-b35f-4203-98c3-50ac05ca0509', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7ab91354-6582-6903-b175-000e4f5a5aa4', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5114bba3-ee72-6a03-d886-000e4f5a5aa4', N'590f4f7c-b327-4c45-a4a9-af71509f1ecf', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8821889e-bd85-9a03-54d4-000e4f5a6325', N'33df410e-74d4-141e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'830327cb-d824-9b03-54d4-000e4f5a6325', N'33df410e-74d4-141e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2e0f4f10-bc7a-9e03-54d4-000e4f5a6325', N'b85c097b-a88c-151e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4a4ee456-6609-9f03-54d4-000e4f5a6325', N'b85c097b-a88c-151e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'15e6414e-7b59-a203-7be5-000e4f5a6325', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'76c6061c-bc9e-a303-7be5-000e4f5a6325', N'ca9e1386-3a90-161e-177d-000d990b9dd9', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd09bcf30-faae-a603-7be5-000e4f5a6325', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 978, 1, CAST(135.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'37897a49-f29b-a703-7be5-000e4f5a6325', N'0ce5b1ea-4d6a-171e-79fd-000d990b9ddb', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(159.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'06fefe72-0372-c203-3e07-000e4f5a6e16', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 840, 1, CAST(39.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7327f0da-837f-c303-3e07-000e4f5a6e16', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 978, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'630bf56e-bed2-df03-8d06-000e4f5a7563', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 840, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7e0b5a09-aaf0-e003-8d06-000e4f5a7563', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 978, 1, CAST(300.00000 AS Decimal(18, 5)), CAST(310.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9bdcc34b-7e5e-f903-fb77-000e4f5a7d1b', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 840, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(100.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'df746f90-05dc-fa03-2287-000e4f5a7d1c', N'4c165f12-29d9-44ef-ae69-95077b8ac738', 978, 1, CAST(230.00000 AS Decimal(18, 5)), CAST(250.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6d7ef6f9-6257-1904-cbd2-000e4f5a854e', N'66961b58-bbae-46ba-83b8-eb3132289717', 840, 1, CAST(33.00000 AS Decimal(18, 5)), CAST(35.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'96030922-d0ed-1a04-cbd2-000e4f5a854e', N'66961b58-bbae-46ba-83b8-eb3132289717', 978, 1, CAST(290.00000 AS Decimal(18, 5)), CAST(310.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'56e0cadf-8c68-3304-2183-000e4f5a8ef2', N'97851de3-ea87-4780-809d-c0801758a765', 840, 1, CAST(30.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'194ac231-374c-3404-4893-000e4f5a8ef2', N'97851de3-ea87-4780-809d-c0801758a765', 978, 1, CAST(105.00000 AS Decimal(18, 5)), CAST(115.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3db087d7-5039-5104-35c7-000e4f5a9567', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'999dd218-c4f0-5204-35c7-000e4f5a9567', N'f1430df8-bad4-4f51-81dc-9c8714abb9fd', 978, 1, CAST(300.00000 AS Decimal(18, 5)), CAST(320.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'23267bf3-6b05-d704-ff3e-000e4fa130e4', N'1635397e-421b-41a6-a396-c509425a392b', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(190.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2bccd8f0-d5d8-d804-264e-000e4fa130e5', N'1635397e-421b-41a6-a396-c509425a392b', 978, 1, CAST(245.00000 AS Decimal(18, 5)), CAST(255.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'76a4d9b6-8f2a-f604-ad8f-000e4fa13683', N'eab4aec9-6eac-491c-ba34-546e9e498769', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'ba242294-9c1c-f704-ad8f-000e4fa13683', N'eab4aec9-6eac-491c-ba34-546e9e498769', 978, 1, CAST(260.00000 AS Decimal(18, 5)), CAST(280.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c01e054e-2ac1-1105-a39a-000e4fa14054', N'21890331-11bc-40af-9cec-2c146abe638d', 840, 1, CAST(360.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0e9ba6d1-5290-1205-a39a-000e4fa14054', N'21890331-11bc-40af-9cec-2c146abe638d', 978, 1, CAST(330.00000 AS Decimal(18, 5)), CAST(340.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'662f5d83-58c0-2f05-5f7e-000e4fa14a12', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3cce62eb-2d61-3005-868e-000e4fa14a12', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 978, 1, CAST(120.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a1b9c04a-40ef-4c05-1077-000e4fa151ab', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3db02d49-362d-4d05-3788-000e4fa151ab', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 978, 1, CAST(500.00000 AS Decimal(18, 5)), CAST(540.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd3e78591-9a1b-6905-17b0-000e4fa15761', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 840, 1, CAST(108.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9c65caa1-aab6-6a05-17b0-000e4fa15761', N'8f722a9f-fbac-4946-9bf0-47d6e8de25fb', 978, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(310.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'caecf399-6107-8605-0445-000e4fa15fac', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b6b01910-1937-8705-0445-000e4fa15fac', N'fa5a0fdf-361d-44af-a1db-9accf783e79b', 978, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(290.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'80c5d05a-f909-a305-6ecd-000e4fa166aa', N'9e252cec-7869-430d-a717-2bd944b7319e', 840, 1, CAST(110.00000 AS Decimal(18, 5)), CAST(130.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c133f347-c28e-a405-6ecd-000e4fa166aa', N'9e252cec-7869-430d-a717-2bd944b7319e', 978, 1, CAST(280.00000 AS Decimal(18, 5)), CAST(290.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c6db0f05-1ad6-c105-e42a-000e4fa16d90', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'73fa8754-4bcf-c205-e42a-000e4fa16d90', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 978, 1, CAST(320.00000 AS Decimal(18, 5)), CAST(330.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'13773a85-0b29-dd05-fd89-000e4fa173ae', N'f7728012-2fbf-4222-8a6f-c551419ce068', 840, 1, CAST(180.00000 AS Decimal(18, 5)), CAST(200.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'888d5bcc-d16e-de05-fd89-000e4fa173ae', N'f7728012-2fbf-4222-8a6f-c551419ce068', 978, 1, CAST(440.00000 AS Decimal(18, 5)), CAST(460.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'990fa055-acac-f905-8378-000e4fa17abc', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f1bd69d9-886a-fa05-8378-000e4fa17abc', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 978, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'def5578a-6bca-1806-e756-000e4fa1843c', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(60.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a86f453c-fb7b-1906-e756-000e4fa1843c', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 978, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'20b3119b-00b6-3506-303a-000e4fa18c65', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'032303b8-a68c-3606-303a-000e4fa18c65', N'c9bc7d5d-0d1e-4deb-a046-38a003c555ba', 978, 1, CAST(325.00000 AS Decimal(18, 5)), CAST(335.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'309077f9-c607-5006-aeea-000e4fa192c3', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'145d087a-e85a-5106-aeea-000e4fa192c3', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 978, 1, CAST(85.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e302704b-d442-6e06-a157-000e4fa19883', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 840, 1, CAST(190.00000 AS Decimal(18, 5)), CAST(210.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8cf44930-f03d-6f06-a157-000e4fa19883', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 978, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(380.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c14fa31f-7c95-8806-137e-000e4fa19f17', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 840, 1, CAST(65.00000 AS Decimal(18, 5)), CAST(85.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'dadafdad-8f1d-8906-137e-000e4fa19f17', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 978, 1, CAST(350.00000 AS Decimal(18, 5)), CAST(360.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a09d8b2b-12f1-a506-ea92-000e4fa1a498', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 840, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'2391e0a6-61bf-a606-ea92-000e4fa1a498', N'f16b1678-9b29-4ee9-8a61-2675e51f1b9d', 978, 1, CAST(320.00000 AS Decimal(18, 5)), CAST(340.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'afba4748-cab4-c106-7fe0-000e4fa1aa72', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 840, 1, CAST(30.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'76ad0a77-e6ea-c206-7fe0-000e4fa1aa72', N'76a020d2-a68b-43eb-90aa-94926a081d8d', 978, 1, CAST(160.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'17abc008-5107-dd06-afad-000e4fa1b098', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 840, 1, CAST(80.00000 AS Decimal(18, 5)), CAST(90.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b82fafcb-fabe-de06-d6bd-000e4fa1b098', N'f69f9297-c0fa-46c9-8fc4-2be7ba182a8f', 978, 1, CAST(340.00000 AS Decimal(18, 5)), CAST(360.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'4514aa41-a6e1-f601-e582-000f8c6d08a9', N'016f4014-3566-4fa2-a302-2ae667761d27', 840, 1, CAST(79.00000 AS Decimal(18, 5)), CAST(89.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5a0dec41-3f3a-f701-e582-000f8c6d08a9', N'016f4014-3566-4fa2-a302-2ae667761d27', 978, 1, CAST(290.00000 AS Decimal(18, 5)), CAST(300.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'444b1d32-8f8d-3c02-e08f-000f8c6d2a70', N'655c5105-ab28-45e7-94ec-10951861b4d7', 978, 1, CAST(210.00000 AS Decimal(18, 5)), CAST(220.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f0947c8b-aa59-3d02-e08f-000f8c6d2a70', N'655c5105-ab28-45e7-94ec-10951861b4d7', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a11c60de-caf6-3e02-e08f-000f8c6d2a70', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 978, 1, CAST(250.00000 AS Decimal(18, 5)), CAST(260.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'b9f152be-8a53-3f02-e08f-000f8c6d2a70', N'c291ace3-0a16-4c4e-bdb3-d7412ade2141', 840, 1, CAST(170.00000 AS Decimal(18, 5)), CAST(180.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3fddda7d-aadd-4002-e08f-000f8c6d2a70', N'a059713d-a032-4abf-99d9-72ead8819e31', 840, 1, CAST(100.00000 AS Decimal(18, 5)), CAST(120.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'e4851313-13b7-4102-e08f-000f8c6d2a70', N'a059713d-a032-4abf-99d9-72ead8819e31', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6626ecd1-a999-6002-7145-000f8c6d2e24', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 978, 1, CAST(130.00000 AS Decimal(18, 5)), CAST(135.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'8c2401fb-f4fe-6102-7145-000f8c6d2e24', N'58cceb98-94c4-49d8-b47b-fa64739df04b', 840, 1, CAST(140.00000 AS Decimal(18, 5)), CAST(145.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0e7bc9e9-92f6-6202-7145-000f8c6d2e24', N'18e50023-3749-49f5-aad5-c860ceb68aff', 840, 1, CAST(155.00000 AS Decimal(18, 5)), CAST(160.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'7d76bc96-6895-6302-7145-000f8c6d2e24', N'18e50023-3749-49f5-aad5-c860ceb68aff', 978, 1, CAST(145.00000 AS Decimal(18, 5)), CAST(150.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c6f60cd9-a8b2-6402-7145-000f8c6d2e24', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 840, 1, CAST(172.00000 AS Decimal(18, 5)), CAST(178.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'161a69d3-8fde-6502-7145-000f8c6d2e24', N'31aaed2e-e938-4f43-ba3f-13720419c4db', 978, 1, CAST(167.00000 AS Decimal(18, 5)), CAST(170.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'aad00149-995f-8302-8899-000f8c6d31a5', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'977a3955-f782-8402-8899-000f8c6d31a5', N'4fdabce6-3f6e-40c1-80db-b98c3e173681', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3002538d-b005-8502-8899-000f8c6d31a5', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(67.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c704213b-f53b-8602-8899-000f8c6d31a5', N'a6ff3a85-a6de-4a04-b3d9-05d722465701', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'29ca69c8-a5dd-8702-8899-000f8c6d31a5', N'685ae003-b048-42d6-9771-7b3624f74a2d', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(36.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'949145c0-900a-8802-8899-000f8c6d31a5', N'685ae003-b048-42d6-9771-7b3624f74a2d', 840, 1, CAST(38.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0152ab0b-bb5f-a702-5aed-000f8c6d35c3', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(69.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'6e3b76fe-a116-a802-5aed-000f8c6d35c3', N'2f2a3bd7-d33a-44f5-80ae-98f7f0520222', 840, 1, CAST(72.00000 AS Decimal(18, 5)), CAST(76.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1f98b270-ffdc-a902-5aed-000f8c6d35c3', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 978, 1, CAST(45.00000 AS Decimal(18, 5)), CAST(47.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3b93a3f7-559e-aa02-5aed-000f8c6d35c3', N'e4b4d876-deaf-4d93-abd7-7e9ae561cbb3', 840, 1, CAST(52.00000 AS Decimal(18, 5)), CAST(58.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'287b1605-2ca9-ab02-5aed-000f8c6d35c3', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 840, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(34.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'fbde06ca-0758-ac02-5aed-000f8c6d35c3', N'2f63da8f-28d9-4d49-917c-5713d360a69a', 978, 1, CAST(27.00000 AS Decimal(18, 5)), CAST(28.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'9998c7b2-0b15-cb02-bdde-000f8c6d3ad9', N'e1470383-3f50-4c1d-9227-8656608ceedc', 978, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd3f5fbcd-7cfa-cc02-bdde-000f8c6d3ad9', N'e1470383-3f50-4c1d-9227-8656608ceedc', 840, 1, CAST(68.00000 AS Decimal(18, 5)), CAST(72.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'5de4791b-de1f-cd02-bdde-000f8c6d3ad9', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 978, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(30.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'905b40f2-d868-ce02-bdde-000f8c6d3ad9', N'8643c832-5cb5-4d9e-9be0-a25ca393203d', 840, 1, CAST(35.00000 AS Decimal(18, 5)), CAST(40.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'08c88a43-bf0b-cf02-bdde-000f8c6d3ad9', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 978, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(45.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'dcd63cc0-b6e1-d002-bdde-000f8c6d3ad9', N'6a406f27-9f7b-4093-afc5-baa9623596cb', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'758ef0d4-befc-ef02-b66e-000f8c6d3f18', N'f853fa3d-0937-470d-a276-5969c2041719', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(56.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3074105f-d591-f002-b66e-000f8c6d3f18', N'f853fa3d-0937-470d-a276-5969c2041719', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(64.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'24b3a387-54cd-f102-b66e-000f8c6d3f18', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 978, 1, CAST(67.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'72e2996c-a22f-f202-b66e-000f8c6d3f18', N'7b9d0950-178e-4f1d-8961-3b43e50409aa', 840, 1, CAST(73.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'681c635d-835e-f302-b66e-000f8c6d3f18', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 978, 1, CAST(34.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'dd82e65d-8297-f402-b66e-000f8c6d3f18', N'facbf1b5-f87f-46af-9c98-9480c358f7e6', 840, 1, CAST(40.00000 AS Decimal(18, 5)), CAST(43.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'74767ad2-45c7-1303-a389-000f8c6d43ab', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 978, 1, CAST(150.00000 AS Decimal(18, 5)), CAST(165.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bc4ee996-d166-1403-a389-000f8c6d43ab', N'eddf9007-0b54-451f-9290-fe6506dd8a87', 840, 1, CAST(60.00000 AS Decimal(18, 5)), CAST(75.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'57e389e4-0299-1503-a389-000f8c6d43ab', N'796be820-7f83-4622-838b-85943bb6792f', 978, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1dfd794a-de34-1603-a389-000f8c6d43ab', N'796be820-7f83-4622-838b-85943bb6792f', 840, 1, CAST(50.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3f60db3e-c50a-1703-a389-000f8c6d43ab', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 978, 1, CAST(90.00000 AS Decimal(18, 5)), CAST(95.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f26bc459-7913-1803-a389-000f8c6d43ab', N'b323a0f5-70df-472a-9f34-9023ffe50f4b', 840, 1, CAST(55.00000 AS Decimal(18, 5)), CAST(70.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'1caf2e9a-569e-3703-e0a5-000f8c6d48a0', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 978, 1, CAST(51.00000 AS Decimal(18, 5)), CAST(54.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0b45dea8-47dc-3803-e0a5-000f8c6d48a0', N'0e74e624-f8de-4ccc-a639-4e81c2ecf6a4', 840, 1, CAST(58.00000 AS Decimal(18, 5)), CAST(62.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'f2449a05-79df-3903-e0a5-000f8c6d48a0', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 840, 1, CAST(82.00000 AS Decimal(18, 5)), CAST(86.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'572ca5e5-bbd5-3a03-e0a5-000f8c6d48a0', N'607860e5-acf2-49a3-a39c-fdf14f27216a', 978, 1, CAST(76.00000 AS Decimal(18, 5)), CAST(79.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd37d0fb7-ef3b-3b03-e0a5-000f8c6d48a0', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 978, 1, CAST(32.00000 AS Decimal(18, 5)), CAST(37.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'74086907-e49a-3c03-e0a5-000f8c6d48a0', N'c80b819d-cf5c-4c78-95c2-fa7faa2b5922', 840, 1, CAST(41.00000 AS Decimal(18, 5)), CAST(44.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'686fcd9c-acf7-5b03-6d43-000f8c6d4c3f', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 978, 1, CAST(49.00000 AS Decimal(18, 5)), CAST(55.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd7e7241b-74a1-5c03-6d43-000f8c6d4c3f', N'a01aa0ca-b311-4ce0-bbd1-0a0e3e294e54', 840, 1, CAST(59.00000 AS Decimal(18, 5)), CAST(65.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a9aedee1-41f5-5d03-6d43-000f8c6d4c3f', N'9efe8692-bc5e-4ecc-a034-48db75585062', 840, 1, CAST(75.00000 AS Decimal(18, 5)), CAST(82.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'3a3803e8-037c-5e03-6d43-000f8c6d4c3f', N'9efe8692-bc5e-4ecc-a034-48db75585062', 978, 1, CAST(69.00000 AS Decimal(18, 5)), CAST(73.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'13ed3dd5-5145-5f03-6d43-000f8c6d4c3f', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 978, 1, CAST(89.00000 AS Decimal(18, 5)), CAST(99.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'a5611d5c-9829-6003-6d43-000f8c6d4c3f', N'fb908585-2fbe-48d8-a0f8-14bc10f56720', 840, 1, CAST(99.00000 AS Decimal(18, 5)), CAST(110.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'd3168cd6-9d8f-9404-e96e-00100babef02', N'67bf3c90-9602-c901-a8eb-000ebb93b305', 840, 1, CAST(4.50000 AS Decimal(18, 5)), CAST(5.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'c0335329-81ac-f10f-5616-00100fa11f42', N'd8697d4e-91a5-420e-9ea9-60830f29278a', 840, 1, CAST(125.00000 AS Decimal(18, 5)), CAST(149.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'bfae63d4-db79-48d4-87d7-9105d6cd44bd', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 840, 1, CAST(7.00000 AS Decimal(18, 5)), CAST(8.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductPrice] ([ProductPriceId], [ProductCatalogId], [CurrencyId], [Quantity], [SalePrice], [CutPrice], [AdditionalData]) VALUES (N'0fee96e1-fcb6-42d1-9af2-d415435fcf56', N'fc34ba62-65be-4841-9f7f-a1b6375b5569', 978, 1, CAST(5.00000 AS Decimal(18, 5)), CAST(6.00000 AS Decimal(18, 5)), NULL)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', N'8321da62-565b-2f1b-c969-000d990ad30e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'eea734f6-bef4-0b02-fe30-000ebb93fe54', N'67bf3c90-9602-c901-a8eb-000ebb93b305', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'67bf3c90-9602-c901-a8eb-000ebb93b305', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'0df6c3dc-ca9e-4911-b9cd-056e493b8e30', 11)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'f4de9812-877e-41aa-9ace-1baebd3b731d', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'9cec3be7-c843-46f8-95b7-1d4e85d01ede', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'734eb62a-9fa4-4ca3-acd7-20297215d996', 13)
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
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', N'd8697d4e-91a5-420e-9ea9-60830f29278a', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'd8697d4e-91a5-420e-9ea9-60830f29278a', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'd8697d4e-91a5-420e-9ea9-60830f29278a', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'ef6459bc-e319-4e69-aade-6252ac9ddc9b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', N'067baa1a-c70f-4e91-bd73-79767cd267d3', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'c30ce14e-6cc7-4542-ae6b-7f183982f6af', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'ad2698fc-fdef-4727-9563-803cfa9f737e', 9)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'3290c2c7-6b5c-4cda-869e-90604509fcdf', 7)
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
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'e9fec841-7b25-4666-9259-a75a90573f5b', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'bc2b5ec1-61c5-4469-b48f-b4954824964a', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'bc2b5ec1-61c5-4469-b48f-b4954824964a', 10)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'97851de3-ea87-4780-809d-c0801758a765', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 9)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'78d2e7a4-945e-4b96-a560-c24f89ec754c', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'1635397e-421b-41a6-a396-c509425a392b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'1635397e-421b-41a6-a396-c509425a392b', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'1635397e-421b-41a6-a396-c509425a392b', 14)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'f7728012-2fbf-4222-8a6f-c551419ce068', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'f7728012-2fbf-4222-8a6f-c551419ce068', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'f6529c64-6baf-426c-9414-cb0e70d9e589', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'5baddd31-b9ae-466d-90e8-cc06a8935de1', 8)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 7)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'6cfc65d1-4f1a-4969-bd0b-d6e1d5fba9e3', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'66961b58-bbae-46ba-83b8-eb3132289717', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', N'66961b58-bbae-46ba-83b8-eb3132289717', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'66961b58-bbae-46ba-83b8-eb3132289717', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'4b7dbec8-49db-4c99-80f9-f09d206e1604', 2)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'4b7dbec8-49db-4c99-80f9-f09d206e1604', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 1)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'f6d139c4-6297-443f-a335-f91e3f2634dd', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'0c4fab19-3d4f-42d0-be87-faaa8b3b6cfc', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'd5edd9ee-eb50-456c-9a5a-fad649113a68', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'71c787e3-d779-492d-9700-fbedf6353093', 3)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'71c787e3-d779-492d-9700-fbedf6353093', 6)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 4)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'9aae902b-2527-478f-9922-fd4b1c3a4b2f', 5)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 0)
INSERT [magelia].[ProductCategory] ([CategoryId], [ProductCatalogId], [Order]) VALUES (N'0d2344f3-f0f3-40a0-af9d-f523a97acd03', N'65b83e0f-b723-4b4b-aefc-ff71736eb821', 12)
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'eea734f6-bef4-0b02-fe30-000ebb93fe54', 9, N'Food', N'<p>Food</p>', N'<p>Food</p>')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'd9c68f0c-27d7-433a-92ad-006c0ddc712e', 9, N'Games', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ee2355e0-e30d-4dce-a817-17f312744cda', 9, N'Shirts', N'Dress Shirts', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'0d824b4c-8edb-4186-b12d-298e317732d1', 9, N'Dress watches', N'Dress watches', N'Dress watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0009956-8b9b-4b05-8df2-35bd61630795', 9, N'Sport watches', N'Sport watches', N'Sport watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c5f6cdf4-842c-48e3-a04c-46610cd1cf7d', 9, N'Books', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'6ba78bf4-1ed8-4db5-99a0-5fce460e80bc', 9, N'Sport Sunglasses', N'Sport Sunglasses', N'Sport Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e19d6733-abef-4033-a633-6541ae2cdddf', 9, N'Software', N'', N'')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', 9, N'Home Products', N'Home Products', N'Home Products')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', 9, N'Downloads', N'Downloads (books, software, games, etc.)', N'Downloads (books, software, games, etc.)')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', 9, N'Watches', N'Watches', N'Watches')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', 9, N'Sunglasses', N'Sunglasses', N'Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'e512de14-08df-4b46-93bb-ae528755eb00', 9, N'Sporting Goods', N'Sporting Goods', N'Sporting Goods')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'ca158e89-e386-421f-9b54-b8d91b95824a', 9, N'City Sunglasses', N'City Sunglasses', N'City Sunglasses')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', 9, N'Men''s Clothes', N'Men''s Clothes : sporting goods, shirts, shoes, etc.', N'Men''s Clothes : sporting goods, shirts, shoes, etc.')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', 9, N'Men''s Fragrances', N'Men''s Fragrances', N'Men''s Fragrances')
INSERT [magelia].[CatalogCategoryLocalized] ([CategoryId], [CultureId], [Name], [ShortDescription], [LongDescription]) VALUES (N'96eb63e0-20cd-4e84-90f0-f8b8771a20f6', 9, N'Shoes', N'Shoes', N'Shoes')
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'eea734f6-bef4-0b02-fe30-000ebb93fe54', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 5)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'7c2ebd4b-b7c5-4f6e-8be5-7dd679022868', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 6)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8a5ca4c0-322e-4541-8e90-7e7727ad0c50', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 2)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'8d2199b0-c1bb-4fae-927e-aaac33d7a8fb', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 7)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'3d369c01-e4e0-4bb2-a3f2-ae0074aba58d', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 1)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'18d1be81-d944-46ae-be10-c2126c7aa79c', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 4)
INSERT [magelia].[CatalogCategoryHierarchy] ([CategoryId], [ParentCategoryId], [Order]) VALUES (N'c0e9203c-f87f-4289-a2db-d0e3ffa39e12', N'30e53cec-b91f-4b24-a9f3-3d30e830b32a', 3)
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
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'fabea7da-7a90-1e00-ecc0-000f8c6ba23e', N'65c08fff-ac03-4597-b260-d74a65d2e787', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 1, 14)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'3e3dc39e-fa14-2500-8d7c-000f8c6ba7b0', N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 2, 14)
INSERT [magelia].[ProductAttributeProductType] ([ProductAttributeProductTypeId], [ProductAttributeId], [ProductTypeId], [Order], [State]) VALUES (N'b2942f50-7086-9700-58bd-000f8c6c3375', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 2, 39)
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
INSERT [magelia].[ProductListValue] ([ProductListValueId], [ProductAttributeId], [Code]) VALUES (N'6f636254-e473-7600-ad9e-000f8c6bfc3d', N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', N'ml')
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
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'37da5cf5-d8ca-2525-9b6b-000d984b4ea0', N'ebd5a488-7d36-2325-9b6b-000d984b4ea0', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6eefb278-5bd6-8809-aa38-000d9903193a', N'8deb4ec3-8672-8609-aa38-000d9903193a', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'44e6a842-ca08-e609-2d44-000d99031d7a', N'1d96716c-ee28-e409-2d44-000d99031d7a', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dbf3f7f0-b80f-9400-afda-000e4f59f541', N'2d1aceee-3178-9200-88ca-000e4f59f541', N'9500fdb3-b5fc-42e5-9162-b08cd827e17d', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3f70e1f6-4d7d-8102-923b-000e4f5a4ac6', N'293c6c8b-ca56-8002-923b-000e4f5a4ac6', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b0d82dfb-99a0-8202-7c9e-000e4f5a4ac7', N'293c6c8b-ca56-8002-923b-000e4f5a4ac6', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5c861cd7-bb22-8302-7c9e-000e4f5a4ac7', N'293c6c8b-ca56-8002-923b-000e4f5a4ac6', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'56979e94-942e-8402-7c9e-000e4f5a4ac7', N'293c6c8b-ca56-8002-923b-000e4f5a4ac6', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cc5466db-3730-8602-18e0-000e4f5a4ac8', N'0f540aec-6796-8502-18e0-000e4f5a4ac8', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4e9d2901-ffb9-8702-18e0-000e4f5a4ac8', N'0f540aec-6796-8502-18e0-000e4f5a4ac8', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4bb4f6f8-2484-8802-18e0-000e4f5a4ac8', N'0f540aec-6796-8502-18e0-000e4f5a4ac8', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a92fbe3c-8ecb-8902-18e0-000e4f5a4ac8', N'0f540aec-6796-8502-18e0-000e4f5a4ac8', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ca07e784-7042-8b02-8e12-000e4f5a4ac8', N'f2ce33ae-a0c1-8a02-8e12-000e4f5a4ac8', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0da22dad-5d73-8c02-8e12-000e4f5a4ac8', N'f2ce33ae-a0c1-8a02-8e12-000e4f5a4ac8', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'903365ce-1e9e-8d02-8e12-000e4f5a4ac8', N'f2ce33ae-a0c1-8a02-8e12-000e4f5a4ac8', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'171df531-a8c1-8e02-8e12-000e4f5a4ac8', N'f2ce33ae-a0c1-8a02-8e12-000e4f5a4ac8', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2d91d810-a557-9002-0344-000e4f5a4ac9', N'41a539b6-482b-8f02-0344-000e4f5a4ac9', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'19569896-d30f-9102-0344-000e4f5a4ac9', N'41a539b6-482b-8f02-0344-000e4f5a4ac9', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'095ef89f-824f-9202-0344-000e4f5a4ac9', N'41a539b6-482b-8f02-0344-000e4f5a4ac9', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6f1a16ab-e013-9302-0344-000e4f5a4ac9', N'41a539b6-482b-8f02-0344-000e4f5a4ac9', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3c44784d-61b3-9502-5165-000e4f5a4ac9', N'cfdc4a29-45a2-9402-5165-000e4f5a4ac9', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'720ef04b-f96d-9602-5165-000e4f5a4ac9', N'cfdc4a29-45a2-9402-5165-000e4f5a4ac9', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'40e962e7-d485-472b-9a5d-855722809e45', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'148ac620-45d3-9702-5165-000e4f5a4ac9', N'cfdc4a29-45a2-9402-5165-000e4f5a4ac9', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0dfd6a68-b80c-9802-5165-000e4f5a4ac9', N'cfdc4a29-45a2-9402-5165-000e4f5a4ac9', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'824b4bae-b44c-2d03-a852-000e4f5a5a9f', N'73e50052-01d3-2c03-a852-000e4f5a5a9f', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'efbb9149-0638-2e03-a852-000e4f5a5a9f', N'73e50052-01d3-2c03-a852-000e4f5a5a9f', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cdd3286d-e15b-2f03-a852-000e4f5a5a9f', N'73e50052-01d3-2c03-a852-000e4f5a5a9f', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'29f93ead-d019-3003-a852-000e4f5a5a9f', N'73e50052-01d3-2c03-a852-000e4f5a5a9f', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'426af62d-c861-3203-1d84-000e4f5a5aa0', N'f2dbb758-3391-3103-1d84-000e4f5a5aa0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b01c5cb0-40a3-3303-1d84-000e4f5a5aa0', N'f2dbb758-3391-3103-1d84-000e4f5a5aa0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ee87f84b-4bb7-3403-1d84-000e4f5a5aa0', N'f2dbb758-3391-3103-1d84-000e4f5a5aa0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bb314695-8653-3503-1d84-000e4f5a5aa0', N'f2dbb758-3391-3103-1d84-000e4f5a5aa0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b1edfa50-ef5a-3703-92b6-000e4f5a5aa0', N'edd21d60-5b2c-3603-92b6-000e4f5a5aa0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f7a292ac-df85-3803-92b6-000e4f5a5aa0', N'edd21d60-5b2c-3603-92b6-000e4f5a5aa0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd818f4c9-7192-3903-92b6-000e4f5a5aa0', N'edd21d60-5b2c-3603-92b6-000e4f5a5aa0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4ac50911-228c-3a03-92b6-000e4f5a5aa0', N'edd21d60-5b2c-3603-92b6-000e4f5a5aa0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'328cfa4a-6c72-3c03-e0d7-000e4f5a5aa0', N'0a7b72d5-d134-3b03-e0d7-000e4f5a5aa0', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7f917854-47e2-3d03-e0d7-000e4f5a5aa0', N'0a7b72d5-d134-3b03-e0d7-000e4f5a5aa0', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'41436355-90b5-3e03-e0d7-000e4f5a5aa0', N'0a7b72d5-d134-3b03-e0d7-000e4f5a5aa0', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'341e2741-6b5d-3f03-e0d7-000e4f5a5aa0', N'0a7b72d5-d134-3b03-e0d7-000e4f5a5aa0', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4b7d8793-1ed5-4103-5609-000e4f5a5aa1', N'2618fe1a-4513-4003-5609-000e4f5a5aa1', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'996a9afb-a468-4650-9f86-d783be9140d3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'17265841-0b51-4203-5609-000e4f5a5aa1', N'2618fe1a-4513-4003-5609-000e4f5a5aa1', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4225f6eb-13d4-4303-5609-000e4f5a5aa1', N'2618fe1a-4513-4003-5609-000e4f5a5aa1', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1a159f92-f143-4403-5609-000e4f5a5aa1', N'2618fe1a-4513-4003-5609-000e4f5a5aa1', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'271f5bb7-90b2-4603-a42a-000e4f5a5aa1', N'6ce7569c-3fba-4503-a42a-000e4f5a5aa1', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0b4fa171-4716-4703-a42a-000e4f5a5aa1', N'6ce7569c-3fba-4503-a42a-000e4f5a5aa1', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'78253cdd-2546-4803-a42a-000e4f5a5aa1', N'6ce7569c-3fba-4503-a42a-000e4f5a5aa1', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bc335287-e596-4903-a42a-000e4f5a5aa1', N'6ce7569c-3fba-4503-a42a-000e4f5a5aa1', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'fa072cab-843a-4b03-195b-000e4f5a5aa2', N'23e7c47e-0834-4a03-195b-000e4f5a5aa2', N'a4d685c9-206f-4525-b259-4a2c21389574', NULL, NULL, NULL, NULL, N'4dfbc46f-d078-4999-9102-54e3261d0d5c', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7f917993-fcb8-4c03-195b-000e4f5a5aa2', N'23e7c47e-0834-4a03-195b-000e4f5a5aa2', N'0038c753-40e0-473f-9383-7d0d08693adc', NULL, NULL, NULL, NULL, N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'eb2232c5-c9ad-4d03-195b-000e4f5a5aa2', N'23e7c47e-0834-4a03-195b-000e4f5a5aa2', N'91a27629-c7ef-41d2-9094-e0e245a8ef9c', NULL, NULL, NULL, NULL, N'59c23fbd-5421-4455-8845-33067f319c34', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8d593d73-a9ff-4e03-195b-000e4f5a5aa2', N'23e7c47e-0834-4a03-195b-000e4f5a5aa2', N'5f89af5c-1890-4a56-9f13-e5f308dd1b65', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'447c7070-dc44-8703-4789-000e4f5a6322', N'7facac6b-f771-8603-4789-000e4f5a6322', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'80dc2a44-3ea7-8803-6e99-000e4f5a6322', N'7facac6b-f771-8603-4789-000e4f5a6322', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'366d599b-2471-8903-6e99-000e4f5a6322', N'7facac6b-f771-8603-4789-000e4f5a6322', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1a4a9c9c-5729-8c03-bcba-000e4f5a6322', N'd23cb327-8ec2-8b03-bcba-000e4f5a6322', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3371979c-3fed-8d03-e3cb-000e4f5a6322', N'd23cb327-8ec2-8b03-bcba-000e4f5a6322', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e1520ff4-0956-8e03-e3cb-000e4f5a6322', N'd23cb327-8ec2-8b03-bcba-000e4f5a6322', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'84e3d379-c577-4215-b57f-d45d66276b5f', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'45f3600e-59d4-9103-58fd-000e4f5a6323', N'7b692631-f61f-9003-58fd-000e4f5a6323', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'71e87662-4f77-9203-a71e-000e4f5a6323', N'7b692631-f61f-9003-58fd-000e4f5a6323', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(9.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dc692a5d-db83-9303-a71e-000e4f5a6323', N'7b692631-f61f-9003-58fd-000e4f5a6323', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8e0f987b-f104-9603-1c50-000e4f5a6324', N'3f3f136d-2423-9503-1c50-000e4f5a6324', N'274c4c4a-6d06-43fc-9633-5fbd2b2f6777', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2ddf4db2-803b-9703-4360-000e4f5a6324', N'3f3f136d-2423-9503-1c50-000e4f5a6324', N'a7b0652a-2d4b-4968-b774-82667dfe5981', NULL, CAST(10.00000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6ebcc63d-ecfc-9803-4360-000e4f5a6324', N'3f3f136d-2423-9503-1c50-000e4f5a6324', N'7f0edb45-a7c3-400a-a507-8e8705b15c33', NULL, NULL, NULL, NULL, N'68f3d6b5-a65f-43b6-a034-d8f74d736962', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a94b02a3-7b25-bf03-a1c5-000e4f5a6e15', N'5e175456-7cf4-bd03-7ab4-000e4f5a6e15', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'72bc4320-c229-dc03-17d5-000e4f5a7563', N'd64a0a8f-e4d2-da03-c9b3-000e4f5a7562', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'05aecce0-2900-f803-ad56-000e4f5a7d1b', N'fb7d0462-69c5-f603-8645-000e4f5a7d1b', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bb945728-ce51-1604-2f90-000e4f5a854e', N'136738a4-3827-1404-087f-000e4f5a854e', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1b6e7a79-4b4a-3204-d362-000e4f5a8ef1', N'92806394-32ab-3004-ac51-000e4f5a8ef1', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c5c5c093-1004-4e04-e7a6-000e4f5a9566', N'caf421fe-f69f-4c04-9985-000e4f5a9566', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd03289dc-9f7d-d604-b11d-000e4fa130e4', N'7bd78ac6-b307-d404-8a0c-000e4fa130e4', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'a40d64d2-a937-f304-385d-000e4fa13683', N'a9fe52fe-c22c-f104-114c-000e4fa13683', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'46f99139-0689-1005-5579-000e4fa14054', N'6529b600-303f-0e05-0758-000e4fa14054', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'afbcad43-fe86-2e05-115d-000e4fa14a12', N'd0f6747c-43ff-2c05-c33c-000e4fa14a11', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cc7a9bec-7f46-4b05-c256-000e4fa151aa', N'204dd6d1-b6e1-4905-9b46-000e4fa151aa', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd6246b0b-096f-6805-a27e-000e4fa15760', N'9958f40a-eb98-6605-7b6d-000e4fa15760', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8dc1991f-e0ce-8505-8f14-000e4fa15fab', N'29785b49-1692-8305-6803-000e4fa15fab', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c7b2af65-1e9c-a205-f99b-000e4fa166a9', N'fadfc2b5-e849-a005-d28a-000e4fa166a9', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ae5e1f6b-a90a-be05-6ef8-000e4fa16d90', N'e049d8a6-f0d1-bc05-47e8-000e4fa16d90', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c2341260-9fa3-da05-8857-000e4fa173ae', N'3ea76b0c-4bcc-d805-6146-000e4fa173ae', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f984e591-e54c-f605-0e47-000e4fa17abc', N'24f1a7cc-7b21-f405-e736-000e4fa17abb', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6cea39bc-cdf6-1506-7224-000e4fa1843c', N'664a2ce4-23a6-1306-4b14-000e4fa1843c', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7e8c24f7-1f21-3206-bb08-000e4fa18c64', N'c6daec60-07ba-3006-93f8-000e4fa18c64', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'baf53bf3-7dd5-4f06-39b8-000e4fa192c3', N'a39d223e-d1f6-4d06-12a8-000e4fa192c3', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6ceb4056-6816-6b06-2c26-000e4fa19883', N'da68a620-0380-6906-0515-000e4fa19883', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9eeb0349-0538-8706-c55c-000e4fa19f16', N'74329bfa-de14-8506-773b-000e4fa19f16', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'217d23c0-3add-a406-7561-000e4fa1a498', N'579a58e7-94b1-a206-4e50-000e4fa1a498', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5bc80f93-6f62-c006-31bf-000e4fa1aa72', N'55e3d5fb-3dc5-be06-e39e-000e4fa1aa71', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f27d89d2-7b7d-dc06-618c-000e4fa1b098', N'6840e574-c479-da06-136a-000e4fa1b098', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'74de6966-d1f4-f301-20af-000f8c6d08a5', N'2030ace6-006b-f201-be47-000f8c6d08a2', N'3e3dc39e-fa14-2500-8d7c-000f8c6ba7b0', NULL, NULL, CAST(0x070058A5C8C0CF370B3C00 AS DateTimeOffset), NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'93365a66-18f1-f401-20af-000f8c6d08a5', N'2030ace6-006b-f201-be47-000f8c6d08a2', N'863e14ee-13c3-4a9a-97cc-2b2384e70845', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1e1af190-0306-f501-20af-000f8c6d08a5', N'2030ace6-006b-f201-be47-000f8c6d08a2', N'fabea7da-7a90-1e00-ecc0-000f8c6ba23e', NULL, NULL, NULL, NULL, N'ffc22e24-d978-4252-9efe-9a48cb799921', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cde85f6b-25b5-3202-1b7c-000f8c6d2a6c', N'b5989695-3b75-3102-1b7c-000f8c6d2a6c', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5e2fc17e-4f4e-3302-1b7c-000f8c6d2a6c', N'b5989695-3b75-3102-1b7c-000f8c6d2a6c', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0374161d-a42b-3502-1b7c-000f8c6d2a6c', N'044088c6-4fdb-3402-1b7c-000f8c6d2a6c', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f54ce497-f71f-3602-1b7c-000f8c6d2a6c', N'044088c6-4fdb-3402-1b7c-000f8c6d2a6c', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b165f854-9e39-3802-1b7c-000f8c6d2a6c', N'1912a23b-cd89-3702-1b7c-000f8c6d2a6c', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1ebd3159-c4b7-3902-7df0-000f8c6d2a6e', N'1912a23b-cd89-3702-1b7c-000f8c6d2a6c', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5ea4cd78-df9c-3b02-7df0-000f8c6d2a6e', N'383cbcca-dcc2-3a02-7df0-000f8c6d2a6e', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6f636254-e473-7600-ad9e-000f8c6bfc3d', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd5b0e317-dbaa-5602-7145-000f8c6d2e24', N'fe005bc6-43a7-5502-7145-000f8c6d2e24', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3c983aa0-298a-5702-7145-000f8c6d2e24', N'fe005bc6-43a7-5502-7145-000f8c6d2e24', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e9a1eb32-9b5c-5902-7145-000f8c6d2e24', N'aeeaa4dc-d279-5802-7145-000f8c6d2e24', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'71764c97-163b-5a02-7145-000f8c6d2e24', N'aeeaa4dc-d279-5802-7145-000f8c6d2e24', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1ec2f25c-bd7f-5c02-7145-000f8c6d2e24', N'6d0cb70a-f20b-5b02-7145-000f8c6d2e24', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ab29e6e7-6dd9-5d02-7145-000f8c6d2e24', N'6d0cb70a-f20b-5b02-7145-000f8c6d2e24', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3be05651-a575-5f02-7145-000f8c6d2e24', N'61e9dec1-2c91-5e02-7145-000f8c6d2e24', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f1a4fb34-abb8-7a02-261c-000f8c6d31a3', N'8b1c9af7-490e-7902-261c-000f8c6d31a3', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'315ed102-23b9-7b02-8899-000f8c6d31a5', N'8b1c9af7-490e-7902-261c-000f8c6d31a3', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'f67e467d-9e8d-7d02-8899-000f8c6d31a5', N'1df5e381-5c2c-7c02-8899-000f8c6d31a5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'70fc3233-f542-7f02-8899-000f8c6d31a5', N'65ed6459-bc6d-7e02-8899-000f8c6d31a5', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'682c0c54-0dd2-8002-8899-000f8c6d31a5', N'65ed6459-bc6d-7e02-8899-000f8c6d31a5', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4f1e1246-a0b9-8202-8899-000f8c6d31a5', N'43698994-a9c2-8102-8899-000f8c6d31a5', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ca636cb8-0346-9d02-f881-000f8c6d35c0', N'e2dc313d-4caa-9c02-f881-000f8c6d35c0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5658375d-5e8b-9e02-5aed-000f8c6d35c3', N'e2dc313d-4caa-9c02-f881-000f8c6d35c0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1a0323f6-d41f-a002-5aed-000f8c6d35c3', N'98fce69d-ef8f-9f02-5aed-000f8c6d35c3', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'912fd8b6-735e-a102-5aed-000f8c6d35c3', N'98fce69d-ef8f-9f02-5aed-000f8c6d35c3', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'33198c7a-6aaf-a302-5aed-000f8c6d35c3', N'e35e24c6-af5a-a202-5aed-000f8c6d35c3', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'bba48c7b-3eff-a402-5aed-000f8c6d35c3', N'e35e24c6-af5a-a202-5aed-000f8c6d35c3', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c86f8faa-f898-a602-5aed-000f8c6d35c3', N'48f1407a-0a4e-a502-5aed-000f8c6d35c3', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6f636254-e473-7600-ad9e-000f8c6bfc3d', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'499029a8-4c37-c102-bdde-000f8c6d3ad9', N'a4aa2ae0-809d-c002-bdde-000f8c6d3ad9', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'201a3661-703c-c202-bdde-000f8c6d3ad9', N'a4aa2ae0-809d-c002-bdde-000f8c6d3ad9', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4ed624ae-a99c-c402-bdde-000f8c6d3ad9', N'd81c4b6b-ed39-c302-bdde-000f8c6d3ad9', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6f807178-7987-c502-bdde-000f8c6d3ad9', N'd81c4b6b-ed39-c302-bdde-000f8c6d3ad9', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd7673df2-a4f7-c702-bdde-000f8c6d3ad9', N'318e0dae-792f-c602-bdde-000f8c6d3ad9', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'6b4848ac-e49d-c802-bdde-000f8c6d3ad9', N'318e0dae-792f-c602-bdde-000f8c6d3ad9', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0eb8187d-e93c-ca02-bdde-000f8c6d3ad9', N'0489c113-5569-c902-bdde-000f8c6d3ad9', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6f636254-e473-7600-ad9e-000f8c6bfc3d', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'3a834257-ca2b-e502-53f8-000f8c6d3f16', N'c49e5cfd-90c1-e402-53f8-000f8c6d3f16', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'4dc950b2-f055-e602-b66e-000f8c6d3f18', N'c49e5cfd-90c1-e402-53f8-000f8c6d3f16', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'ee7a7e0e-85f3-e802-b66e-000f8c6d3f18', N'ef8394ed-39a7-e702-b66e-000f8c6d3f18', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b27f1b06-6931-e902-b66e-000f8c6d3f18', N'ef8394ed-39a7-e702-b66e-000f8c6d3f18', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8a081fe2-d3b2-eb02-b66e-000f8c6d3f18', N'99f56dc1-9469-ea02-b66e-000f8c6d3f18', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'b3a5f4e1-124a-ec02-b66e-000f8c6d3f18', N'99f56dc1-9469-ea02-b66e-000f8c6d3f18', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'dd9b3688-f48d-ee02-b66e-000f8c6d3f18', N'8b1c1eff-6ba9-ed02-b66e-000f8c6d3f18', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'5cf29d29-a7d8-0903-4114-000f8c6d43a9', N'af31c111-6d39-0803-4114-000f8c6d43a9', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'632d2c90-e257-0a03-4114-000f8c6d43a9', N'af31c111-6d39-0803-4114-000f8c6d43a9', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'd293cd56-72ff-0c03-a389-000f8c6d43ab', N'56424ff1-ddf7-0b03-a389-000f8c6d43ab', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'767c0c0a-dc45-0d03-a389-000f8c6d43ab', N'56424ff1-ddf7-0b03-a389-000f8c6d43ab', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'92bf315b-797d-0f03-a389-000f8c6d43ab', N'f2ac7aae-c1bd-0e03-a389-000f8c6d43ab', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'e3673b92-0d4a-1003-a389-000f8c6d43ab', N'f2ac7aae-c1bd-0e03-a389-000f8c6d43ab', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'7420aea9-6400-1203-a389-000f8c6d43ab', N'd54c4146-6517-1103-a389-000f8c6d43ab', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6f636254-e473-7600-ad9e-000f8c6bfc3d', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'1a3a00c8-810e-2d03-7e38-000f8c6d489e', N'781f1ebd-a613-2c03-7e38-000f8c6d489e', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'821d3be7-be7c-2e03-e0a5-000f8c6d48a0', N'781f1ebd-a613-2c03-7e38-000f8c6d489e', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'169b3fe6-0877-3003-e0a5-000f8c6d48a0', N'9fa21a2f-02f3-2f03-e0a5-000f8c6d48a0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'96151d82-4dfb-3103-e0a5-000f8c6d48a0', N'9fa21a2f-02f3-2f03-e0a5-000f8c6d48a0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'291f8ae1-1878-3303-e0a5-000f8c6d48a0', N'12349582-a882-3203-e0a5-000f8c6d48a0', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'0fe93015-adb6-3403-e0a5-000f8c6d48a0', N'12349582-a882-3203-e0a5-000f8c6d48a0', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'553d9df9-80ab-3603-e0a5-000f8c6d48a0', N'fb99f7d0-333a-3503-e0a5-000f8c6d48a0', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6096d18a-ebfe-4455-9662-12251ae494ce', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'8806fe24-f718-5103-6d43-000f8c6d4c3f', N'86c3f556-c9f8-5003-6d43-000f8c6d4c3f', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'2e586f55-a2eb-5203-6d43-000f8c6d4c3f', N'86c3f556-c9f8-5003-6d43-000f8c6d4c3f', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(1.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9ea86c41-e4a1-5403-6d43-000f8c6d4c3f', N'680a2971-c5cd-5303-6d43-000f8c6d4c3f', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'de7e6131-6731-5503-6d43-000f8c6d4c3f', N'680a2971-c5cd-5303-6d43-000f8c6d4c3f', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(3.40000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'cd6d6ede-eecb-5703-6d43-000f8c6d4c3f', N'f19b5a58-0836-5603-6d43-000f8c6d4c3f', N'3b41b916-adc8-492f-a6c3-363894f3ee18', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'9984b1ec-4a79-5803-6d43-000f8c6d4c3f', N'f19b5a58-0836-5603-6d43-000f8c6d4c3f', N'14dcabd6-1eb8-4aa6-8c27-4ff765ad99e9', NULL, CAST(6.70000 AS Decimal(18, 5)), NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'09db4e4f-7e51-5a03-6d43-000f8c6d4c3f', N'092ef76e-4a14-5903-6d43-000f8c6d4c3f', N'b2942f50-7086-9700-58bd-000f8c6c3375', NULL, NULL, NULL, NULL, N'6f636254-e473-7600-ad9e-000f8c6bfc3d', NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'c214c997-2f7a-9304-741c-00100babef02', N'537dfc1b-302b-9204-741c-00100babef02', N'6bbf1767-74e9-422e-817b-dff0a40aec24', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValue] ([ProductTypeAttributeValueId], [ProductTypeInstanceId], [ProductAttributeProductTypeId], [IntValue], [DecimalValue], [DateTimeValue], [Bitvalue], [ProductListValueId], [StringValue]) VALUES (N'041a5634-9329-4c0e-bf5a-f4c127d14ba3', N'9d8bd4c6-d578-43aa-a944-f486f2d22511', N'381a77f4-eef6-4e10-84e4-5e06168eb041', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'37da5cf5-d8ca-2525-9b6b-000d984b4ea0', N'748934de-1027-5a24-67ea-000d984b1967')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'447c7070-dc44-8703-4789-000e4f5a6322', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1a4a9c9c-5729-8c03-bcba-000e4f5a6322', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'45f3600e-59d4-9103-58fd-000e4f5a6323', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8e0f987b-f104-9603-1c50-000e4f5a6324', N'54328758-0329-5c1a-1530-000d990a82f8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c214c997-2f7a-9304-741c-00100babef02', N'fcfa69c7-d1af-7e04-8094-00100babd365')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f1a4fb34-abb8-7a02-261c-000f8c6d31a3', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'70fc3233-f542-7f02-8899-000f8c6d31a5', N'75ddb67c-7198-4d1e-ba56-06800feb79cd')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'6ceb4056-6816-6b06-2c26-000e4fa19883', N'fbdb23a3-75c0-4659-8361-0cb99abdc758')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd5b0e317-dbaa-5602-7145-000f8c6d2e24', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'e9a1eb32-9b5c-5902-7145-000f8c6d2e24', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1ec2f25c-bd7f-5c02-7145-000f8c6d2e24', N'42971be0-7f44-4bc7-89f4-11fd2ae892fb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'6eefb278-5bd6-8809-aa38-000d9903193a', N'14f9957e-1560-4a7e-97fe-143a1ab89504')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'6cea39bc-cdf6-1506-7224-000e4fa1843c', N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'041a5634-9329-4c0e-bf5a-f4c127d14ba3', N'dbe26328-7ac0-4476-a840-2d1544aabf02')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cc7a9bec-7f46-4b05-c256-000e4fa151aa', N'0326cd06-9719-4385-84a0-2d384c5a5b1f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'afbcad43-fe86-2e05-115d-000e4fa14a12', N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c2341260-9fa3-da05-8857-000e4fa173ae', N'6b5d10be-1008-449f-9b83-3fd935fabdfb')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'05aecce0-2900-f803-ad56-000e4f5a7d1b', N'ab583d60-2f3c-497b-b267-4028d3233533')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'93365a66-18f1-f401-20af-000f8c6d08a5', N'0845f8da-21df-4fca-be60-421052f1598d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a40d64d2-a937-f304-385d-000e4fa13683', N'906d47a5-74ea-4f2a-9e87-4cdd98ed093b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9eeb0349-0538-8706-c55c-000e4fa19f16', N'30a566cc-0614-4cf0-bdd4-4f22ba3b3c36')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'217d23c0-3add-a406-7561-000e4fa1a498', N'25d98e24-a6a4-4e61-b239-54135959c09d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f984e591-e54c-f605-0e47-000e4fa17abc', N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'44e6a842-ca08-e609-2d44-000d99031d7a', N'25350954-c42d-4c23-87cf-5efda6412ade')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5bc80f93-6f62-c006-31bf-000e4fa1aa72', N'a8f082d2-7e31-42b3-97c6-5f41502c358b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8806fe24-f718-5103-6d43-000f8c6d4c3f', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'9ea86c41-e4a1-5403-6d43-000f8c6d4c3f', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cd6d6ede-eecb-5703-6d43-000f8c6d4c3f', N'cbc4b8b7-9845-4314-b3d3-6f0fe53b25ba')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'46f99139-0689-1005-5579-000e4fa14054', N'2814add4-dff3-4a2a-9c12-6f15e3a46777')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ca636cb8-0346-9d02-f881-000f8c6d35c0', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1a0323f6-d41f-a002-5aed-000f8c6d35c3', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'33198c7a-6aaf-a302-5aed-000f8c6d35c3', N'4c9bf954-3bd9-49ef-8842-78da73013ac1')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a94b02a3-7b25-bf03-a1c5-000e4f5a6e15', N'fb99292b-aec0-4200-91ac-7e57ca81b305')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'cde85f6b-25b5-3202-1b7c-000f8c6d2a6c', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0374161d-a42b-3502-1b7c-000f8c6d2a6c', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'b165f854-9e39-3802-1b7c-000f8c6d2a6c', N'4cf33b3f-d345-4539-8585-8a16f492ac2f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'7e8c24f7-1f21-3206-bb08-000e4fa18c64', N'a5881e10-5938-4ba6-b041-8b1beb5b89be')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c5c5c093-1004-4e04-e7a6-000e4f5a9566', N'092b5569-4a7a-4e6b-952d-9614a7396a95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'72bc4320-c229-dc03-17d5-000e4f5a7563', N'47df82d3-7312-416f-9145-9b6e3d258dff')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd6246b0b-096f-6805-a27e-000e4fa15760', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ae5e1f6b-a90a-be05-6ef8-000e4fa16d90', N'67bc5435-a533-4429-ae0f-a3f93210b60f')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'5cf29d29-a7d8-0903-4114-000f8c6d43a9', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd293cd56-72ff-0c03-a389-000f8c6d43ab', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'92bf315b-797d-0f03-a389-000f8c6d43ab', N'62419a3b-6a13-42e1-b730-a81047d4dbcf')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'3a834257-ca2b-e502-53f8-000f8c6d3f16', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'ee7a7e0e-85f3-e802-b66e-000f8c6d3f18', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8a081fe2-d3b2-eb02-b66e-000f8c6d3f18', N'25cb3b9e-8714-4c1a-b43b-accae87f9813')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd03289dc-9f7d-d604-b11d-000e4fa130e4', N'94d680b0-7e1f-4d0e-aca8-be12500fff95')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'dbf3f7f0-b80f-9400-afda-000e4f59f541', N'40b3586c-ce62-490e-9f7f-c4231cfdeb8c')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'c7b2af65-1e9c-a205-f99b-000e4fa166a9', N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1a3a00c8-810e-2d03-7e38-000f8c6d489e', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'169b3fe6-0877-3003-e0a5-000f8c6d48a0', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'291f8ae1-1878-3303-e0a5-000f8c6d48a0', N'fa8a3d69-7835-4cc3-8068-ca48a61a61ae')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'29f93ead-d019-3003-a852-000e4f5a5a9f', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'bb314695-8653-3503-1d84-000e4f5a5aa0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'4ac50911-228c-3a03-92b6-000e4f5a5aa0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'341e2741-6b5d-3f03-e0d7-000e4f5a5aa0', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1a159f92-f143-4403-5609-000e4f5a5aa1', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'bc335287-e596-4903-a42a-000e4f5a5aa1', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8d593d73-a9ff-4e03-195b-000e4f5a5aa2', N'46118d88-f374-4b38-bb5e-cdefb10966c5')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'baf53bf3-7dd5-4f06-39b8-000e4fa192c3', N'2301a850-22de-4ab6-a4a1-d285b4deb8a8')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'8dc1991f-e0ce-8505-8f14-000e4fa15fab', N'8ed1a10b-071b-47f2-afb1-d4b288badb3b')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'56979e94-942e-8402-7c9e-000e4f5a4ac7', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'a92fbe3c-8ecb-8902-18e0-000e4f5a4ac8', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'171df531-a8c1-8e02-8e12-000e4f5a4ac8', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'6f1a16ab-e013-9302-0344-000e4f5a4ac9', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'0dfd6a68-b80c-9802-5165-000e4f5a4ac9', N'1dbcd54d-7b91-41bc-a5db-e54a497df2f3')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'499029a8-4c37-c102-bdde-000f8c6d3ad9', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'4ed624ae-a99c-c402-bdde-000f8c6d3ad9', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'd7673df2-a4f7-c702-bdde-000f8c6d3ad9', N'98690e3e-0e8a-4678-b84a-eef1873ea608')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'1b6e7a79-4b4a-3204-d362-000e4f5a8ef1', N'44a5602b-5415-48c3-a81a-f83118c8647d')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'bb945728-ce51-1604-2f90-000e4f5a854e', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductTypeAttributeValueFile] ([ProductTypeAttributeValue_ProductTypeAttributeValueId], [File_FileId]) VALUES (N'f27d89d2-7b7d-dc06-618c-000e4fa1b098', N'79d1ca8a-fbdd-436b-9199-fc71a6af6803')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'bcee6a24-2b82-495d-a772-23f1b706077c', 9, N'', N'Volume')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'1d65b47f-7fb7-414c-b7aa-425c2e80b453', 9, N'', N'Release Date')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'ecf837af-b1ae-464a-8f9c-625e147d2f2e', 9, N'', N'Image')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'd7c107bd-7a17-4748-9489-64a2d1ceab71', 9, N'', N'Sleeves')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'5ce303f8-16f1-4c30-93e8-6f214d24e91b', 9, N'', N'Shoe width')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'b08aea0e-f07d-4c54-ad1f-83c386bf1a1a', 9, N'', N'Unit')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'4e637207-dc3a-4b31-a3de-b09380976b35', 9, N'', N'Color')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'8ccc4784-0078-4560-8681-b8ce2bedeaf1', 9, N'', N'Neck')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'31ad8ef8-69a5-4910-88cc-d48ae3598b9f', 9, N'', N'Shoes size')
INSERT [magelia].[ProductAttributeLocalized] ([ProductAttributeId], [CultureId], [Description], [Name]) VALUES (N'65c08fff-ac03-4597-b260-d74a65d2e787', 9, N'', N'Operating system')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'6f636254-e473-7600-ad9e-000f8c6bfc3d', 9, N'ml')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'6096d18a-ebfe-4455-9662-12251ae494ce', 9, N'oz')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'a3dfbc1a-c830-4edd-b8eb-169d897f00ee', 9, N'Pink')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'aee5b29f-26fe-4551-ac92-1a967ba80dd3', 9, N'Blue')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e1f4a471-600d-408b-a5dd-2070b09cdb80', 9, N'Linux')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'd6f97035-3ac3-4426-9d09-23bd9c494d8f', 9, N'15 ½ in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'eef67f11-cbd9-4bea-9d2e-2a3e6f42d567', 9, N'33-34')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'59c23fbd-5421-4455-8845-33067f319c34', 9, N'34-35')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'b95f0f49-4edc-4e00-9059-3ebfbaaf69c3', 9, N'16 in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'fc4eaa3e-ad43-4f1e-abe4-50b3c39c51d9', 9, N'N')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4dfbc46f-d078-4999-9102-54e3261d0d5c', 9, N'16 ½ in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'e7393b1b-34f6-4265-a5f7-657be29c4ef2', 9, N'17 in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'40e962e7-d485-472b-9a5d-855722809e45', 9, N'Purple')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'54daeec0-064a-4f4a-899d-8c62babb4cc5', 9, N'White with Blue Stripes')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'ffc22e24-d978-4252-9efe-9a48cb799921', 9, N'Windows')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'4b6e4c59-61d2-4e52-b1b9-a256465846e5', 9, N'R')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'41327fbd-a1a9-4e7f-8000-b0c929b66ea5', 9, N'Mac OS')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'95449e85-9006-45b0-b0cb-d0b2f3b4773c', 9, N'White')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'84e3d379-c577-4215-b57f-d45d66276b5f', 9, N'M')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'996a9afb-a468-4650-9f86-d783be9140d3', 9, N'15 in')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'68f3d6b5-a65f-43b6-a034-d8f74d736962', 9, N'W')
INSERT [magelia].[ProductListValueLocalized] ([ProductListValueId], [CultureId], [Name]) VALUES (N'3812a65f-0a5d-4186-867f-dacc7efe5dc0', 9, N'36-37')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'0d09746d-cb19-b600-6402-000ebb92b971', 9, N'A week End and 1 associated product')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'82fc5da0-58a1-4a93-8aa1-03a1c89a5233', 9, N'Physical Products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'd0fc3fea-7303-47b8-bfce-19f91ad8fde5', 9, N'Downloadable products')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1e37d607-fbab-4e47-a52c-26a06cfa807e', 9, N'Bundle watch + sunglasses')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'2fd1cbf6-7f01-4855-82c9-426fb908509c', 9, N'Fragrance')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'1dba0a2e-d68d-4e27-aa03-78d0bf22642c', 9, N'Bundle of IT softwares')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'cddde355-e651-47b6-87ca-845afeb43fb1', 9, N'Shirts')
INSERT [magelia].[ProductTypeLocalized] ([ProductTypeId], [CultureId], [Name]) VALUES (N'4499d369-9384-4074-bab1-adf1c417b337', 9, N'Shoes')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'75ddb67c-7198-4d1e-ba56-06800feb79cd', 9, N'Coast to Coast', N'', N'Coast to Coast', N'Coast to Coast')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fe91a4e8-d681-4f59-a3b0-1a6e40fbc1ed', 9, N'Beige straps pillow', N'Beige straps pillow', N'Beige straps pillow', N'Beige straps pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'0326cd06-9719-4385-84a0-2d384c5a5b1f', 9, N'White Light', N'White Light', N'White Light', N'White Light')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'd07e48e0-9e54-41b0-9e0b-2fd6fcbe1497', 9, N'Men''s Chrono Day', N'Men''s Chrono Day', N'Men''s Chrono Day', N'Men''s Chrono Day')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'e56bea1b-8f57-4a90-bfe6-3d14fbf59975', 9, N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow', N'Soft decorated pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'ab583d60-2f3c-497b-b267-4028d3233533', 9, N'Purple Sun', N'Purple Sun', N'Purple Sun', N'Purple Sun')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'6a4565fa-9460-44ad-8dd2-5576db6f4fe1', 9, N'Blue decor pillow', N'Blue decor pillow', N'Blue decor pillow', N'Blue decor pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'a8f082d2-7e31-42b3-97c6-5f41502c358b', 9, N'Green Pillow', N'Green Pillow', N'Green Pillow', N'Green Pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'fb99292b-aec0-4200-91ac-7e57ca81b305', 9, N'Grey Pilliow', N'Color coordinated throw pillows, toss pillows and bolster pillows add an exceptional amount of comfort and bring out the warm, inviting essence of your existing furniture cushions. These Sunbrella pillows will last just as long and will fit perfectly with your furniture.', N'Grey Pilliow', N'Grey Pilliow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'4cf33b3f-d345-4539-8585-8a16f492ac2f', 9, N'A journey', N'A journey', N'A journey', N'A journey')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'092b5569-4a7a-4e6b-952d-9614a7396a95', 9, N'Weekend Sport', N'Our Standard frame is perfect for the weekend warrior! Polycarbonate, Japanese, polarized, UVA/UVB lenses. Includes a Black Nylon Frame, polarized lenses, integrated strap, rubber nose piece, and micro fiber pouch.', N'Weekend Sport', N'Weekend Sport')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'94d680b0-7e1f-4d0e-aca8-be12500fff95', 9, N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498', N'Zilliger ref 3498')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'1e0050e9-9ec1-47f4-a51e-c5674c61cc78', 9, N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch', N'Brown Leather Watch')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'2301a850-22de-4ab6-a4a1-d285b4deb8a8', 9, N'Orange pillow. Clipping path', N'Orange pillow. Clipping path', N'Orange pillow. Clipping path', N'Orange pillow. Clipping path')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'8ed1a10b-071b-47f2-afb1-d4b288badb3b', 9, N'Orange', N'Orange', N'Orange', N'Orange')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'44a5602b-5415-48c3-a81a-f83118c8647d', 9, N'Rose & Rosy Pillow', N'Rose & Rosy Pillow', N'Rose & Rosy Pillow', N'Rose & Rosy Pillow')
INSERT [magelia].[FileLocalized] ([FileId], [CultureId], [Name], [Description], [Title], [AlternateText]) VALUES (N'79d1ca8a-fbdd-436b-9199-fc71a6af6803', 9, N'Surf & Kite', N'Surf & Kite', N'Surf & Kite', N'Surf & Kite')
