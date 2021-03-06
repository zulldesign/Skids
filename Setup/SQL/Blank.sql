--DECLARE @sellerid uniqueidentifier = 'ac5757f0-b120-11e0-a00b-0800200c9a66';
--DECLARE @storeid uniqueidentifier = 'dcafd470-b122-11e0-a00b-0800200c9a66';

DECLARE @customerSetId uniqueidentifier = newid();
DECLARE @storeConfigurationId uniqueidentifier = newid();

INSERT [magelia].[Seller] ([SellerId], [IsActive], [AdditionalDataXml], [Code]) VALUES (@sellerId, 1, N'<SellerSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><CacheSettings z:Id="2"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration></CacheSettings><Color xmlns:a="http://schemas.datacontract.org/2004/07/Magelia.Common.Drawing"><a:ArgB>-7257447</a:ArgB></Color><ETLSettings z:Id="3"><BatchSize>1000</BatchSize><CommandTimeout>PT1M</CommandTimeout><IndentXML>false</IndentXML><ValidateBaseInput>false</ValidateBaseInput><ValidateBaseOutput>false</ValidateBaseOutput></ETLSettings><ImagesSettings z:Id="4"><DisplayThumbs>true</DisplayThumbs><ThumbsFolder z:Id="5">_thumbs</ThumbsFolder></ImagesSettings><LengthUnit z:Id="6">Inch</LengthUnit><WeightUnit z:Id="7">g</WeightUnit></SellerSettings>', @SellerName)

INSERT [magelia].[SellerCulture] ([Seller_SellerId], [Culture_CultureId]) VALUES (@sellerId, 9)

INSERT [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail], [MinRequiredUserNameLength]) VALUES (@customerSetId, @sellerId, @storeName, 1, 10, 0, 3, 60, NULL, 0, 0, 1, 3)
INSERT [magelia].[StoreConfiguration] ([StoreConfigurationId], [SellerId], [Description], [Code]) VALUES (@storeConfigurationId, @sellerId, NULL, N'DefaultConfiguration')

INSERT [magelia].[Store] ([StoreId], [SellerId], [StoreConfigurationId], [Code], [IsActive], [AdditionalDataXml], [CustomerSetId], [DefaultCountryId], [BurstedContentTypeAssemblyBinary]) VALUES (@storeId, @sellerId, @storeConfigurationId, @storeName, 1, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance" xmlns:z="http://schemas.microsoft.com/2003/10/Serialization/" z:Id="1"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration><LastOrderNumber>0</LastOrderNumber></StoreSettings>', @customerSetId, 840, NULL)

INSERT [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeId, 9, @storeName, NULL)

INSERT [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeId, 9, 1)
INSERT [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (@storeId, 840, 1)