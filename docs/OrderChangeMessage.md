# SwaggerClient::OrderChangeMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**op** | **String** | The operation type | [optional] 
**id** | **Integer** | Client generated unique id to link request with response (like json rpc) | [optional] 
**ct** | **String** | Change Type - set to indicate the type of change - if null this is a delta) | [optional] 
**clk** | **String** | Token value (non-null) should be stored and passed in a MarketSubscriptionMessage to resume subscription (in case of disconnect) | [optional] 
**heartbeat_ms** | **Integer** | Heartbeat Milliseconds - the heartbeat rate (may differ from requested: bounds are 500 to 30000) | [optional] 
**pt** | **Integer** | Publish Time (in millis since epoch) that the changes were generated | [optional] 
**oc** | [**Array&lt;OrderMarketChange&gt;**](OrderMarketChange.md) | OrderMarketChanges - the modifications to account&#39;s orders (will be null on a heartbeat | [optional] 
**initial_clk** | **String** | Token value (non-null) should be stored and passed in a MarketSubscriptionMessage to resume subscription (in case of disconnect) | [optional] 
**conflate_ms** | **Integer** | Conflate Milliseconds - the conflation rate (may differ from that requested if subscription is delayed) | [optional] 
**segment_type** | **String** | Segment Type - if the change is split into multiple segments, this denotes the beginning and end of a change, and segments in between. Will be null if data is not segmented | [optional] 


