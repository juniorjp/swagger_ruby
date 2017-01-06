# SwaggerClient::DefaultApi

All URIs are relative to *http://stream-api.betfair.com:443/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**request_post**](DefaultApi.md#request_post) | **POST** /request | 


# **request_post**
> AllResponseTypesExample request_post(request_message)



This is a socket protocol delimited by CRLF (not http)

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::DefaultApi.new

request_message = SwaggerClient::AllRequestTypesExample.new # AllRequestTypesExample | Requests are sent to socket


begin
  result = api_instance.request_post(request_message)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->request_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_message** | [**AllRequestTypesExample**](AllRequestTypesExample.md)| Requests are sent to socket | 

### Return type

[**AllResponseTypesExample**](AllResponseTypesExample.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



