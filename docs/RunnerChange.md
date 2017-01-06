# SwaggerClient::RunnerChange

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tv** | **Float** | The total amount matched. This value is truncated at 2dp. | [optional] 
**batb** | **Array&lt;Array&lt;Float&gt;&gt;** | Best Available To Back - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) | [optional] 
**spb** | **Array&lt;Array&lt;Float&gt;&gt;** | Starting Price Back - PriceVol tuple delta of price changes (0 vol is remove) | [optional] 
**bdatl** | **Array&lt;Array&lt;Float&gt;&gt;** | Best Display Available To Lay (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) | [optional] 
**trd** | **Array&lt;Array&lt;Float&gt;&gt;** | Traded - PriceVol tuple delta of price changes (0 vol is remove) | [optional] 
**spf** | **Float** | Starting Price Far - The far starting price (or null if un-changed) | [optional] 
**ltp** | **Float** | Last Traded Price - The last traded price (or null if un-changed) | [optional] 
**atb** | **Array&lt;Array&lt;Float&gt;&gt;** | Available To Back - PriceVol tuple delta of price changes (0 vol is remove) | [optional] 
**spl** | **Array&lt;Array&lt;Float&gt;&gt;** | Starting Price Lay - PriceVol tuple delta of price changes (0 vol is remove) | [optional] 
**spn** | **Float** | Starting Price Near - The far starting price (or null if un-changed) | [optional] 
**atl** | **Array&lt;Array&lt;Float&gt;&gt;** | Available To Lay - PriceVol tuple delta of price changes (0 vol is remove) | [optional] 
**batl** | **Array&lt;Array&lt;Float&gt;&gt;** | Best Available To Lay - LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) | [optional] 
**id** | **Integer** | Selection Id - the id of the runner (selection) | [optional] 
**hc** | **Float** | Handicap - the handicap of the runner (selection) (null if not applicable) | [optional] 
**bdatb** | **Array&lt;Array&lt;Float&gt;&gt;** | Best Display Available To Back (includes virtual prices)- LevelPriceVol triple delta of price changes, keyed by level (0 vol is remove) | [optional] 


