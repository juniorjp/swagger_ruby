# SwaggerClient::OrderSubscriptionMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**op** | **String** | The operation type | [optional] 
**id** | **Integer** | Client generated unique id to link request with response (like json rpc) | [optional] 
**segmentation_enabled** | **BOOLEAN** | Segmentation Enabled - allow the server to send large sets of data in segments, instead of a single block | [optional] 
**order_filter** | [**OrderFilter**](OrderFilter.md) | Optional filter applied to order subscription | [optional] 
**clk** | **String** | Token value delta (received in MarketChangeMessage) that should be passed to resume a subscription | [optional] 
**heartbeat_ms** | **Integer** | Heartbeat Milliseconds - the heartbeat rate (looped back on initial image after validation: bounds are 500 to 30000) | [optional] 
**initial_clk** | **String** | Token value (received in initial MarketChangeMessage) that should be passed to resume a subscription | [optional] 
**conflate_ms** | **Integer** | Conflate Milliseconds - the conflation rate (looped back on initial image after validation: bounds are 0 to 120000) | [optional] 


