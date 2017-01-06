# SwaggerClient::OrderRunnerChange

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mb** | **Array&lt;Array&lt;Float&gt;&gt;** | Matched Backs - matched amounts by distinct matched price on the Back side for this runner (selection) | [optional] 
**smc** | [**Hash&lt;String, StrategyMatchChange&gt;**](StrategyMatchChange.md) | Strategy Matches - Matched Backs and Matched Lays grouped by strategy reference | [optional] 
**uo** | [**Array&lt;Order&gt;**](Order.md) | Unmatched Orders - orders on this runner (selection) that are not fully matched | [optional] 
**id** | **Integer** | Selection Id - the id of the runner (selection) | [optional] 
**hc** | **Float** | Handicap - the handicap of the runner (selection) (null if not applicable) | [optional] 
**full_image** | **BOOLEAN** |  | [optional] 
**ml** | **Array&lt;Array&lt;Float&gt;&gt;** | Matched Lays - matched amounts by distinct matched price on the Lay side for this runner (selection) | [optional] 


