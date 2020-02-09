# CMNameApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nameGetGender**](CMNameApi.md#namegetgender) | **POST** /validate/name/get-gender | Get the gender of a first name
[**nameIdentifier**](CMNameApi.md#nameidentifier) | **POST** /validate/name/identifier | Validate a code identifier
[**nameValidateFirstName**](CMNameApi.md#namevalidatefirstname) | **POST** /validate/name/first | Validate a first name
[**nameValidateFullName**](CMNameApi.md#namevalidatefullname) | **POST** /validate/name/full-name | Parse and validate a full name
[**nameValidateLastName**](CMNameApi.md#namevalidatelastname) | **POST** /validate/name/last | Validate a last name


# **nameGetGender**
```objc
-(NSURLSessionTask*) nameGetGenderWithInput: (CMGetGenderRequest*) input
        completionHandler: (void (^)(CMGetGenderResponse* output, NSError* error)) handler;
```

Get the gender of a first name

Determines the gender of a first name (given name)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetGenderRequest* input = [[CMGetGenderRequest alloc] init]; // Gender request information

CMNameApi*apiInstance = [[CMNameApi alloc] init];

// Get the gender of a first name
[apiInstance nameGetGenderWithInput:input
          completionHandler: ^(CMGetGenderResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNameApi->nameGetGender: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetGenderRequest***](CMGetGenderRequest.md)| Gender request information | 

### Return type

[**CMGetGenderResponse***](CMGetGenderResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nameIdentifier**
```objc
-(NSURLSessionTask*) nameIdentifierWithInput: (CMValidateIdentifierRequest*) input
        completionHandler: (void (^)(CMValidateIdentifierResponse* output, NSError* error)) handler;
```

Validate a code identifier

Determines if the input name is a valid technical / code identifier.  Configure input rules such as whether whitespace, hyphens, underscores, etc. are allowed.  For example, a valid identifier might be \"helloWorld\" but not \"hello*World\".

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateIdentifierRequest* input = [[CMValidateIdentifierRequest alloc] init]; // Identifier validation request information

CMNameApi*apiInstance = [[CMNameApi alloc] init];

// Validate a code identifier
[apiInstance nameIdentifierWithInput:input
          completionHandler: ^(CMValidateIdentifierResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNameApi->nameIdentifier: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateIdentifierRequest***](CMValidateIdentifierRequest.md)| Identifier validation request information | 

### Return type

[**CMValidateIdentifierResponse***](CMValidateIdentifierResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nameValidateFirstName**
```objc
-(NSURLSessionTask*) nameValidateFirstNameWithInput: (CMFirstNameValidationRequest*) input
        completionHandler: (void (^)(CMFirstNameValidationResponse* output, NSError* error)) handler;
```

Validate a first name

Determines if a string is a valid first name (given name)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMFirstNameValidationRequest* input = [[CMFirstNameValidationRequest alloc] init]; // Validation request information

CMNameApi*apiInstance = [[CMNameApi alloc] init];

// Validate a first name
[apiInstance nameValidateFirstNameWithInput:input
          completionHandler: ^(CMFirstNameValidationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNameApi->nameValidateFirstName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMFirstNameValidationRequest***](CMFirstNameValidationRequest.md)| Validation request information | 

### Return type

[**CMFirstNameValidationResponse***](CMFirstNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nameValidateFullName**
```objc
-(NSURLSessionTask*) nameValidateFullNameWithInput: (CMFullNameValidationRequest*) input
        completionHandler: (void (^)(CMFullNameValidationResponse* output, NSError* error)) handler;
```

Parse and validate a full name

Parses a full name string (e.g. \"Mr. Jon van der Waal Jr.\") into its component parts (and returns these component parts), and then validates whether it is a valid name string or not

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMFullNameValidationRequest* input = [[CMFullNameValidationRequest alloc] init]; // Validation request information

CMNameApi*apiInstance = [[CMNameApi alloc] init];

// Parse and validate a full name
[apiInstance nameValidateFullNameWithInput:input
          completionHandler: ^(CMFullNameValidationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNameApi->nameValidateFullName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMFullNameValidationRequest***](CMFullNameValidationRequest.md)| Validation request information | 

### Return type

[**CMFullNameValidationResponse***](CMFullNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nameValidateLastName**
```objc
-(NSURLSessionTask*) nameValidateLastNameWithInput: (CMLastNameValidationRequest*) input
        completionHandler: (void (^)(CMLastNameValidationResponse* output, NSError* error)) handler;
```

Validate a last name

Determines if a string is a valid last name (surname)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMLastNameValidationRequest* input = [[CMLastNameValidationRequest alloc] init]; // Validation request information

CMNameApi*apiInstance = [[CMNameApi alloc] init];

// Validate a last name
[apiInstance nameValidateLastNameWithInput:input
          completionHandler: ^(CMLastNameValidationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNameApi->nameValidateLastName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMLastNameValidationRequest***](CMLastNameValidationRequest.md)| Validation request information | 

### Return type

[**CMLastNameValidationResponse***](CMLastNameValidationResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

