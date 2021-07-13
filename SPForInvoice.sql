
create procedure GetDetailsForInvoice
(@OrderId int)
as
begin

select ad.AssetDescription_VC as AssetName, ad.AssetValue_NB as Price, od.CreatedOn_DT as OrderedOn, 
od.QtyOrdered_NB QtyOrdered, ud.CompanyName_VC, (ad.AssetValue_NB * od.QtyOrdered_NB) TotalAmount
from Order_Details od with(nolock)
join Asset_Details ad with(nolock) on od.Asset_ID = ad.Asset_ID and ad.IsActive_BT = 1
join User_Details ud with(nolock) on od.UserName_ID = ud.UserName_ID and ud.IsActive_BT = 1
where od.Order_ID = @OrderId and od.IsActive_BT = 1 and isnull(od.OrderDone_BT,0) = 0

end

