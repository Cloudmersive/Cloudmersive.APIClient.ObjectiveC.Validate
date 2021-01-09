# CMEmailApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailAddressGetServers**](CMEmailApi.md#emailaddressgetservers) | **POST** /validate/email/address/servers | Partially check whether an email address is valid
[**emailFullValidation**](CMEmailApi.md#emailfullvalidation) | **POST** /validate/email/address/full | Fully validate an email address
[**emailPost**](CMEmailApi.md#emailpost) | **POST** /validate/email/address/syntaxOnly | Validate email adddress for syntactic correctness only


# **emailAddressGetServers**
```objc
-(NSURLSessionTask*) emailAddressGetServersWithEmail: (NSString*) email
        completionHandler: (void (^)(CMAddressGetServersResponse* output, NSError* error)) handler;
```

Partially check whether an email address is valid

Validate an email address by identifying whether its parent domain has email servers defined.  This call is less limited than syntaxOnly but not as comprehensive as address/full.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* email = email_example; // Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes.

CMEmailApi*apiInstance = [[CMEmailApi alloc] init];

// Partially check whether an email address is valid
[apiInstance emailAddressGetServersWithEmail:email
          completionHandler: ^(CMAddressGetServersResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEmailApi->emailAddressGetServers: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMAddressGetServersResponse***](CMAddressGetServersResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailFullValidation**
```objc
-(NSURLSessionTask*) emailFullValidationWithEmail: (NSString*) email
        completionHandler: (void (^)(CMFullEmailValidationResponse* output, NSError* error)) handler;
```

Fully validate an email address

Performs a full validation of the email address.  Checks for syntactic correctness, identifies the mail server in question if any, and then contacts the email server to validate the existence of the account - without sending any emails.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* email = email_example; // Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes.

CMEmailApi*apiInstance = [[CMEmailApi alloc] init];

// Fully validate an email address
[apiInstance emailFullValidationWithEmail:email
          completionHandler: ^(CMFullEmailValidationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEmailApi->emailFullValidation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMFullEmailValidationResponse***](CMFullEmailValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailPost**
```objc
-(NSURLSessionTask*) emailPostWithValue: (NSString*) value
        completionHandler: (void (^)(CMAddressVerifySyntaxOnlyResponse* output, NSError* error)) handler;
```

Validate email adddress for syntactic correctness only

Validate whether a given email address is syntactically correct via a limited local-only check.  Use the address/full API to do a full validation.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes.

CMEmailApi*apiInstance = [[CMEmailApi alloc] init];

// Validate email adddress for syntactic correctness only
[apiInstance emailPostWithValue:value
          completionHandler: ^(CMAddressVerifySyntaxOnlyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEmailApi->emailPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMAddressVerifySyntaxOnlyResponse***](CMAddressVerifySyntaxOnlyResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

