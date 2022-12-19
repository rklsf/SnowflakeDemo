-- ************************** SqlDBM: Snowflake *************************
-- ************************* Generated by SqlDBM ************************


-- ************************************** ADWORKS.DIM_PRODUCT_CAT_SUBCAT_V
CREATE VIEW SQLDBM_DEMO.ADWORKS.DIM_PRODUCT_CAT_SUBCAT_V(
	"ProductKey",
	"ProductAlternateKey",
	"ProductSubcategoryKey",
	"WeightUnitMeasureCode",
	"SizeUnitMeasureCode",
	"EnglishProductName",
	"StandardCost",
	"FinishedGoodsFlag",
	"Color",
	"SafetyStockLevel",
	"ReorderPoint",
	"ListPrice",
	"Size",
	"SizeRange",
	"Weight",
	"DaysToManufacture",
	"ProductLine",
	"DealerPrice",
	"Class",
	"Style",
	"ModelName",
	"EnglishDescription",
	"Status",
	"ProductCategoryKey",
	"ProductCategoryAlternateKey",
	"EnglishProductCategoryName",
	"EnglishProductSubcategoryName"
) COMMENT='Product details with cat and subcat english names. For fwd/rev engineering'
 as
(
WITH cat_subcat as (
SELECT cat.* , sub."ProductSubcategoryKey" as "SubProductSubcategoryKey", sub."EnglishProductSubcategoryName"  FROM "DimProductCategory" cat
inner join  "DimProductSubcategory" sub
on  cat."ProductCategoryKey" = sub."ProductCategoryKey"
) 
  select 
 "ProductKey"           
, "ProductAlternateKey"  
, "ProductSubcategoryKey"
, "WeightUnitMeasureCode"
, "SizeUnitMeasureCode"  
, "EnglishProductName"   
, "StandardCost"         
, "FinishedGoodsFlag"    
, "Color"                
, "SafetyStockLevel"     
, "ReorderPoint"         
, "ListPrice"            
, "Size"                 
 ,"SizeRange"            
 ,"Weight"               
 ,"DaysToManufacture"    
 ,"ProductLine"          
 ,"DealerPrice"          
 ,"Class"                
 ,"Style"                
 ,"ModelName"            
 ,"EnglishDescription"   
 ,"Status"                   
,"ProductCategoryKey"         
,"ProductCategoryAlternateKey"
,"EnglishProductCategoryName" 
,"EnglishProductSubcategoryName"
 from "DimProduct" prod
  left join cat_subcat 
  on prod."ProductSubcategoryKey" = cat_subcat."SubProductSubcategoryKey"
);
