# SwaggerClient::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**side** | **String** | Side - the side of the order | [optional] 
**sv** | **Float** | Size Voided - the amount of the order that has been voided | [optional] 
**pt** | **String** | Persistence Type - whether the order will persist at in play or not (L &#x3D; LAPSE, P &#x3D; PERSIST, MOC &#x3D; Market On Close) | [optional] 
**ot** | **String** | Order Type - the type of the order (L &#x3D; LIMIT, MOC &#x3D; MARKET_ON_CLOSE, LOC &#x3D; LIMIT_ON_CLOSE) | [optional] 
**p** | **Float** | Price - the original placed price of the order | [optional] 
**sc** | **Float** | Size Cancelled - the amount of the order that has been cancelled | [optional] 
**rc** | **String** | Regulator Code - the regulator of the order | [optional] 
**s** | **Float** | Size - the original placed size of the order | [optional] 
**pd** | **Integer** | Placed Date - the date the order was placed | [optional] 
**rac** | **String** | Regulator Auth Code - the auth code returned by the regulator | [optional] 
**md** | **Integer** | Matched Date - the date the order was matched (null if the order is not matched) | [optional] 
**sl** | **Float** | Size Lapsed - the amount of the order that has been lapsed | [optional] 
**avp** | **Float** | Average Price Matched - the average price the order was matched at (null if the order is not matched | [optional] 
**sm** | **Float** | Size Matched - the amount of the order that has been matched | [optional] 
**rfo** | **String** | Order Reference - the customer&#39;s order reference for this order (empty string if one was not set) | [optional] 
**id** | **String** | Bet Id - the id of the order | [optional] 
**bsp** | **Float** | BSP Liability - the BSP liability of the order (null if the order is not a BSP order) | [optional] 
**rfs** | **String** | Strategy Reference - the customer&#39;s strategy reference for this order (empty string if one was not set) | [optional] 
**status** | **String** | Status - the status of the order (E &#x3D; EXECUTABLE, EC &#x3D; EXECUTION_COMPLETE) | [optional] 
**sr** | **Float** | Size Remaining - the amount of the order that is remaining unmatched | [optional] 


