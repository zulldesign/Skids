--DECLARE @sellerid uniqueidentifier = 'ac5757f0-b120-11e0-a00b-0800200c9a66';
--DECLARE @storeid uniqueidentifier = 'dcafd470-b122-11e0-a00b-0800200c9a66';
DECLARE @continentid int;
DECLARE @currencyId int; 

DECLARE @customerSetId uniqueidentifier = newid();
DECLARE @storeConfigurationId uniqueidentifier = newid();

IF @cultureId is null
	BEGIN
		SELECT @cultureId = isnull(magelia.culture.parentcultureid, 127) 
		FROM magelia.country 
			LEFT OUTER JOIN magelia.culture ON magelia.Culture.Countryid = magelia.country.CountryId
		WHERE
			magelia.Country.Countryid = @countryId;
	END


SELECT @continentid = [continentid], @currencyId = [currencyId] FROM [magelia].[country] WHERE [CountryId] = @countryID; 

INSERT INTO [magelia].[seller] ([sellerId], [Code], [IsActive], [AdditionalDataXml]) VALUES (@sellerid, @SellerName, 1, N'<SellerSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><LengthUnit>Inch</LengthUnit><WeightUnit>g</WeightUnit></SellerSettings>')

INSERT INTO [magelia].[sellerCulture] ([seller_SellerId], [Culture_CultureId]) VALUES (@sellerid, @cultureId)

INSERT INTO [magelia].[CustomerSet] ([CustomerSetId], [SellerId], [Code], [EnablePasswordReset], [MaxInvalidPasswordAttempts], [MinRequiredUserNameLength], [MinRequiredNonAlphanumericCharacters], [MinRequiredPasswordLength], [PasswordAttemptWindow], [PasswordStrengthRegularExpression], [RequiresQuestionAndAnswer], [RequiresEmail], [RequiresUniqueEmail]) VALUES (@customerSetId, @sellerid, @StoreName, 1, 10, 3, 0, 3, 60, NULL, 0, 0, 1)
INSERT INTO [magelia].[StoreConfiguration] ([StoreConfigurationId], [SellerID], [Code], [Description]) VALUES (@StoreConfigurationId, @sellerid, N'DefaultConfiguration', null)

INSERT INTO [magelia].[Store] ([StoreId], [SellerId], [CustomerSetId], [StoreConfigurationId], [Code], [IsActive], [DefaultCountryId], [AdditionalDataXml]) VALUES (@storeid, @sellerid, @customerSetId, @storeConfigurationId, @StoreName, 1, @countryId, N'<StoreSettings xmlns="http://schemas.datacontract.org/2004/07/Magelia.WebStore.Runtime" xmlns:i="http://www.w3.org/2001/XMLSchema-instance"><LongCacheDuration>PT1H</LongCacheDuration><MediumCacheDuration>PT3M</MediumCacheDuration><ShortCacheDuration>PT30S</ShortCacheDuration></StoreSettings>')

INSERT INTO [magelia].[StoreLocalized] ([StoreId], [CultureId], [Name], [Description]) VALUES (@storeid, @cultureId, @StoreName, null)

INSERT INTO [magelia].[StoreCulture] ([StoreId], [CultureId], [IsDefault]) VALUES (@storeid, @cultureId, 1)
INSERT INTO [magelia].[StoreCurrency] ([StoreId], [CurrencyId], [IsDefault]) VALUES (@storeid, @currencyId, 1)

DECLARE @taxZoneId uniqueidentifier = newid();
INSERT INTO [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (@taxZoneId, 'Default tax zone', @sellerid, 1);
INSERT INTO [magelia].[GeographicZoneFilter]([GeographicZoneFilterId],[GeographicZoneId],[ContinentId],[CountryId],[RegionId],[ZipCodeExpression],[Exclude]) VALUES(newid(),@taxZoneId,@ContinentId,@CountryId,@RegionId,NULL,0)

DECLARE @productTypeId uniqueidentifier = newid();
INSERT INTO [magelia].[ProductType]([ProductTypeId],[Code],[SellerId],[Option],[ProductKind]) VALUES(@productTypeId, 'Default productType',@sellerId, 0, 0)

DECLARE @productID uniqueidentifier = newid();
INSERT INTO [magelia].[Product]([ProductId],[SupplierId],[BrandId],[ProductTypeId],[SupplierReferenceCode],[IsOnline],[IsActive],[Weight],[SellerId],[ExternalId],[Width],[Length],[Height],[SKU],[VariableProductId],[IsDefault],[Order],[ProductKind])
	VALUES(@productId,NULL,NULL,@productTypeId,NULL,1,1,NULL,@sellerId,NULL,NULL,NULL,NULL,'SKU01',NULL,NULL,NULL,0)

INSERT INTO [magelia].[ProductLocalized]([ProductId],[CultureId],[Name],[AdditionalDescription],[ShortDescription],[LongDescription])
	VALUES(@productId, @cultureId, 'Default product', NULL, 'Default ShortDescription',NULL)


DECLARE @taxTypeId uniqueidentifier = newid();
DECLARE @taxCategoryId uniqueidentifier = newid();
INSERT INTO [magelia].[TaxType]([TaxTypeId],[Code],[SellerId])
     VALUES(@taxTypeId, 'default TaxType',@sellerId)
INSERT INTO [magelia].[TaxCategory]([TaxCategoryId],[Code],[TaxTypeId])
     VALUES(@taxCategoryId, 'default TaxCategory',@taxTypeId)
INSERT INTO [magelia].[TaxRate]([TaxRateId],[TaxCategoryId],[Value],[DestinationGeographicZoneId],[OriginGeographicZoneId])
     VALUES (newid(), @taxCategoryId,10,NULL,@taxZoneId)

INSERT INTO [magelia].[TaxCategoryProduct]([TaxCategory_TaxCategoryId],[ProductBase_ProductId])
     VALUES (@taxCategoryId, @productId)

DECLARE @warehouseID uniqueidentifier = newid();
INSERT INTO [magelia].[Warehouse] ([WarehouseId],[SellerId],[Code],[TaxZoneId]) VALUES (@warehouseId,@sellerid,'default Warehouse', @taxZoneId);

INSERT INTO [magelia].[Inventory]([WarehouseId],[ProductId],[VirtualStock],[RealStock],[MinimumStock],[AvailabilityDate],[AdditionalData],[Unlimited],[ReorderLevel],[Timestamp])
	VALUES (@warehouseId,@productId, 1000, 1000, 10, NULL, NULL, 0, 0, NULL)

DECLARE @catalogId uniqueidentifier = newid(); 
INSERT INTO [magelia].[Catalog] ([CatalogID],[StartDate],[EndDate],[SellerId],[Code],[IsActive],[IsTaxInclusive],[ExternalId]) VALUES(@catalogId, NULL, NULL, @sellerId, 'Default Catalog', 1, 0, NULL);

INSERT INTO [magelia].[StoreCatalog]([Store_StoreId],[Catalog_CatalogId])
     VALUES(@storeId,@catalogId)

INSERT INTO [magelia].[CatalogCurrency]([Catalog_CatalogId],[Currency_CurrencyId])
     VALUES(@catalogId, @currencyId)


DECLARE @productCatalogID uniqueidentifier = newid();
INSERT INTO [magelia].[ProductCatalog]([ProductCatalogId],[CatalogId],[ProductId],[AdditionalData])
	VALUES (@productCatalogID, @catalogID, @productID, NULL);

INSERT INTO [magelia].[ProductPrice]([ProductPriceId],[ProductCatalogId],[CurrencyId],[Quantity],[SalePrice],[CutPrice],[AdditionalData])
     VALUES(newid(), @productCatalogId, @currencyId, 1, 50, NULL, NULL);


DECLARE @rootCategoryID uniqueidentifier = newid();
DECLARE @homeCategoryID uniqueidentifier = newid();
INSERT INTO [magelia].[CatalogCategory]([CategoryId],[CatalogId],[IsActive],[IsOnline],[Code],[ExternalId]) VALUES(@rootCategoryID, @catalogID, 1, 1, 'root', NULL)
INSERT INTO [magelia].[CatalogCategory]([CategoryId],[CatalogId],[IsActive],[IsOnline],[Code],[ExternalId]) VALUES(@homeCategoryID, @catalogID, 1, 0, 'home', NULL)
INSERT INTO [magelia].[CatalogCategoryHierarchy]([CategoryId],[ParentCategoryId],[Order])
     VALUES(@homeCategoryId, @rootCategoryId, 0)

INSERT INTO [magelia].[ProductCategory] ([CategoryId] ,[ProductCatalogId] ,[Order]) VALUES (@homeCategoryID,@productCatalogId,0)


DECLARE @shippingzoneID uniqueidentifier = newid();
INSERT INTO [magelia].[GeographicZone] ([GeographicZoneId], [Code], [SellerId], [ZoneType]) VALUES (@shippingzoneID, 'Default shipping zone', @sellerid, 0);
INSERT INTO [magelia].[GeographicZoneFilter]([GeographicZoneFilterId],[GeographicZoneId],[ContinentId],[CountryId],[RegionId],[ZipCodeExpression],[Exclude]) VALUES(newid(),@shippingzoneID,@ContinentId,@CountryId,@RegionId,NULL,0)

INSERT INTO [magelia].[ShippingZoneCatalog]([ShippingZone_GeographicZoneId],[Catalog_CatalogId])
     VALUES(@shippingzoneID,@catalogId)

DECLARE @carrierId uniqueidentifier = newid();
INSERT INTO [magelia].[Carrier]([CarrierId],[Code],[SellerId],[FileId])
     VALUES (@carrierId, 'default carrier',@sellerId, NULL)

DECLARE @shippingRateID uniqueidentifier = newid();
INSERT INTO [magelia].[ShippingRate]([ShippingRateId],[CarrierId],[WarehouseId],[Code],[GeographicZoneId],[Criteria])
     VALUES (@shippingRateID, @carrierId, @warehouseId, 'default shippingrate', @shippingZoneId, 0);
INSERT INTO [magelia].[ShippingRateValue]([ShippingRateValueId],[ShippingRateId],[From],[To],[Rate],[CurrencyId])
     VALUES(newid(), @shippingRateId, 0, NULL, 10, @currencyId)

INSERT INTO [magelia].[DataBurstConfiguration]([DataBurstConfigurationId],[StoreId],[CultureId],[CurrencyId],[CountryId]) VALUES (newid(), @storeid, @cultureId, @currencyId, @countryID)