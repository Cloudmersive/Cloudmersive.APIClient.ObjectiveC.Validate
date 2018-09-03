# CMVatApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vatVatLookup**](CMVatApi.md#vatvatlookup) | **POST** /validate/vat/lookup | Lookup a VAT code


# **vatVatLookup**
```objc
-(NSURLSessionTask*) vatVatLookupWithInput: (CMVatLookupRequest*) input
        completionHandler: (void (^)(CMVatLookupResponse* output, NSError* error)) handler;
```

Lookup a VAT code

Checks if a VAT code is valid, and if it is, returns more information about it

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMVatLookupRequest* input = [[CMVatLookupRequest alloc] init]; // Input VAT code

CMVatApi*apiInstance = [[CMVatApi alloc] init];

// Lookup a VAT code
[apiInstance vatVatLookupWithInput:input
          completionHandler: ^(CMVatLookupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMVatApi->vatVatLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMVatLookupRequest***](CMVatLookupRequest.md)| Input VAT code | 

### Return type

[**CMVatLookupResponse***](CMVatLookupResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

