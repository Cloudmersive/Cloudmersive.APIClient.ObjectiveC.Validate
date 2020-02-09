# CMUserAgentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAgentParse**](CMUserAgentApi.md#useragentparse) | **POST** /validate/useragent/parse | Parse an HTTP User-Agent string, identify robots


# **userAgentParse**
```objc
-(NSURLSessionTask*) userAgentParseWithRequest: (CMUserAgentValidateRequest*) request
        completionHandler: (void (^)(CMUserAgentValidateResponse* output, NSError* error)) handler;
```

Parse an HTTP User-Agent string, identify robots

Uses a parsing system and database to parse the User-Agent into its structured component parts, such as Browser, Browser Version, Browser Engine, Operating System, and importantly, Robot identification.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMUserAgentValidateRequest* request = [[CMUserAgentValidateRequest alloc] init]; // Input parse request

CMUserAgentApi*apiInstance = [[CMUserAgentApi alloc] init];

// Parse an HTTP User-Agent string, identify robots
[apiInstance userAgentParseWithRequest:request
          completionHandler: ^(CMUserAgentValidateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMUserAgentApi->userAgentParse: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMUserAgentValidateRequest***](CMUserAgentValidateRequest.md)| Input parse request | 

### Return type

[**CMUserAgentValidateResponse***](CMUserAgentValidateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

