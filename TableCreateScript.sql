

create table Asset_Details
( Asset_ID int primary key identity(1,1),
 AssetDescription_VC varchar(500),
 AssetQuantity_VC int,
 AssetValue_NB int,
 CreatedOn_DT datetime,
 UpdatedOn_DT datetime,
 IsActive_BT bit) 

  create table User_Details
 (UserName_ID int primary key identity(1,1),
 CompanyName_VC varchar(200),
 Password_VC varchar(20),
 IsCustomer_BT bit,
 CreatedOn_DT datetime,
 UpdatedOn_DT datetime,
 IsActive_BT bit)
  
 create table Order_Details
 (Order_ID int primary key identity(1,1),
 Asset_ID int references Asset_Details(Asset_ID),
 UserName_ID int references User_Details(UserName_ID),
 ExpDeliveryDate_DT datetime,
 OrderDone_BT bit,
 CreatedOn_DT datetime,
 UpdatedOn_DT datetime,
 IsActive_BT bit)

 alter table Order_Details add QtyOrdered_NB int