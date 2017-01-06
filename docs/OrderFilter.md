# SwaggerClient::OrderFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_overall_position** | **BOOLEAN** | Returns overall / net position (See: OrderRunnerChange.mb / OrderRunnerChange.ml). Default&#x3D;true | [optional] 
**account_ids** | **Array&lt;Integer&gt;** | Internal use only &amp; should not be set on your filter (your subscription is already locked to your account). If set subscription will fail. | [optional] 
**customer_strategy_refs** | **Array&lt;String&gt;** | Restricts to specified customerStrategyRefs; this will filter orders and StrategyMatchChanges accordingly (Note: overall postition is not filtered) | [optional] 
**partition_matched_by_strategy_ref** | **BOOLEAN** | Returns strategy positions (See: OrderRunnerChange.smc&#x3D;Map&lt;customerStrategyRef, StrategyMatchChange&gt;) - these are sent in delta format as per overall position. Default&#x3D;false | [optional] 


