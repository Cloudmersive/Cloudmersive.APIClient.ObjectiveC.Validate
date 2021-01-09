# CMTextInputApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**textInputCheckXss**](CMTextInputApi.md#textinputcheckxss) | **POST** /validate/text-input/check/xss | Check text input for Cross-Site-Scripting (XSS) attacks
[**textInputCheckXssBatch**](CMTextInputApi.md#textinputcheckxssbatch) | **POST** /validate/text-input/check-and-protect/xss/batch | Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
[**textInputProtectXss**](CMTextInputApi.md#textinputprotectxss) | **POST** /validate/text-input/protect/xss | Protect text input from Cross-Site-Scripting (XSS) attacks through normalization


# **textInputCheckXss**
```objc
-(NSURLSessionTask*) textInputCheckXssWithValue: (NSString*) value
        completionHandler: (void (^)(CMXssProtectionResult* output, NSError* error)) handler;
```

Check text input for Cross-Site-Scripting (XSS) attacks

Detects XSS (Cross-Site-Scripting) attacks from text input.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // User-facing text input.

CMTextInputApi*apiInstance = [[CMTextInputApi alloc] init];

// Check text input for Cross-Site-Scripting (XSS) attacks
[apiInstance textInputCheckXssWithValue:value
          completionHandler: ^(CMXssProtectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTextInputApi->textInputCheckXss: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| User-facing text input. | 

### Return type

[**CMXssProtectionResult***](CMXssProtectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textInputCheckXssBatch**
```objc
-(NSURLSessionTask*) textInputCheckXssBatchWithValue: (CMXssProtectionBatchRequest*) value
        completionHandler: (void (^)(CMXssProtectionBatchResponse* output, NSError* error)) handler;
```

Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch

Detects XSS (Cross-Site-Scripting) attacks from multiple text input.  Output preverses order of input items.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMXssProtectionBatchRequest* value = [[CMXssProtectionBatchRequest alloc] init]; // User-facing text input.

CMTextInputApi*apiInstance = [[CMTextInputApi alloc] init];

// Check and protect multiple text inputs for Cross-Site-Scripting (XSS) attacks in batch
[apiInstance textInputCheckXssBatchWithValue:value
          completionHandler: ^(CMXssProtectionBatchResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTextInputApi->textInputCheckXssBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**CMXssProtectionBatchRequest***](CMXssProtectionBatchRequest.md)| User-facing text input. | 

### Return type

[**CMXssProtectionBatchResponse***](CMXssProtectionBatchResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **textInputProtectXss**
```objc
-(NSURLSessionTask*) textInputProtectXssWithValue: (NSString*) value
        completionHandler: (void (^)(CMXssProtectionResult* output, NSError* error)) handler;
```

Protect text input from Cross-Site-Scripting (XSS) attacks through normalization

Detects and removes XSS (Cross-Site-Scripting) attacks from text input through normalization.  Returns the normalized result, as well as information on whether the original input contained an XSS risk.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // User-facing text input.

CMTextInputApi*apiInstance = [[CMTextInputApi alloc] init];

// Protect text input from Cross-Site-Scripting (XSS) attacks through normalization
[apiInstance textInputProtectXssWithValue:value
          completionHandler: ^(CMXssProtectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTextInputApi->textInputProtectXss: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| User-facing text input. | 

### Return type

[**CMXssProtectionResult***](CMXssProtectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

