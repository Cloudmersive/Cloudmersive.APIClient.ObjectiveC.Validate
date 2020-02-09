# CMPhoneNumberApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**phoneNumberSyntaxOnly**](CMPhoneNumberApi.md#phonenumbersyntaxonly) | **POST** /validate/phonenumber/basic | Validate phone number (basic)


# **phoneNumberSyntaxOnly**
```objc
-(NSURLSessionTask*) phoneNumberSyntaxOnlyWithValue: (CMPhoneNumberValidateRequest*) value
        completionHandler: (void (^)(CMPhoneNumberValidationResponse* output, NSError* error)) handler;
```

Validate phone number (basic)

Validate a phone number by analyzing the syntax

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMPhoneNumberValidateRequest* value = [[CMPhoneNumberValidateRequest alloc] init]; // Phone number to validate in a PhoneNumberValidateRequest object.  Try a phone number such as \"1.800.463.3339\", and either leave DefaultCountryCode blank or use \"US\".

CMPhoneNumberApi*apiInstance = [[CMPhoneNumberApi alloc] init];

// Validate phone number (basic)
[apiInstance phoneNumberSyntaxOnlyWithValue:value
          completionHandler: ^(CMPhoneNumberValidationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMPhoneNumberApi->phoneNumberSyntaxOnly: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | [**CMPhoneNumberValidateRequest***](CMPhoneNumberValidateRequest.md)| Phone number to validate in a PhoneNumberValidateRequest object.  Try a phone number such as \&quot;1.800.463.3339\&quot;, and either leave DefaultCountryCode blank or use \&quot;US\&quot;. | 

### Return type

[**CMPhoneNumberValidationResponse***](CMPhoneNumberValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

