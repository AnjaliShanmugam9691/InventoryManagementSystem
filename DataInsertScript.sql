


 insert into User_Details(UserName_ID, CompanyName_VC, Password_VC, IsCustomer_BT, CreatedOn_DT, IsActive_BT)
 select 1, 'Test', 'Test123', 1, CURRENT_TIMESTAMP, 1 union all
 select 2, 'Test2', 'Test123', 1, CURRENT_TIMESTAMP, 1

 insert into Asset_Details(Asset_ID,AssetDescription_VC,AssetQuantity_VC,AssetValue_NB, CreatedOn_DT, IsActive_BT)
 select 1, 'Laptop', 50, 20000, CURRENT_TIMESTAMP, 1 union all
 select 2, 'Wireless Mouse', 100, 1000, CURRENT_TIMESTAMP, 1 union all
 select 3, 'Headphone', 50, 1500, CURRENT_TIMESTAMP, 1

 select * from order_details

 select * from asset_details