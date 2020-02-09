# CMAddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressCountry**](CMAddressApi.md#addresscountry) | **POST** /validate/address/country | Validate and normalize country information, return ISO 3166-1 country codes and country name
[**addressGetTimezone**](CMAddressApi.md#addressgettimezone) | **POST** /validate/address/country/get-timezones | Gets IANA/Olsen time zones for a country
[**addressParseString**](CMAddressApi.md#addressparsestring) | **POST** /validate/address/parse | Parse an unstructured input text string into an international, formatted address
[**addressValidateAddress**](CMAddressApi.md#addressvalidateaddress) | **POST** /validate/address/street-address | Validate a street address


# **addressCountry**
```objc
-(NSURLSessionTask*) addressCountryWithInput: (CMValidateCountryRequest*) input
        completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler;
```

Validate and normalize country information, return ISO 3166-1 country codes and country name

Validates and normalizes country information, and returns key information about a country.  Also returns distinct time zones in the country.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateCountryRequest* input = [[CMValidateCountryRequest alloc] init]; // Input request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Validate and normalize country information, return ISO 3166-1 country codes and country name
[apiInstance addressCountryWithInput:input
          completionHandler: ^(CMValidateCountryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressCountry: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateCountryRequest***](CMValidateCountryRequest.md)| Input request | 

### Return type

[**CMValidateCountryResponse***](CMValidateCountryResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressGetTimezone**
```objc
-(NSURLSessionTask*) addressGetTimezoneWithInput: (CMGetTimezonesRequest*) input
        completionHandler: (void (^)(CMGetTimezonesResponse* output, NSError* error)) handler;
```

Gets IANA/Olsen time zones for a country

Gets the IANA/Olsen time zones for a country.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetTimezonesRequest* input = [[CMGetTimezonesRequest alloc] init]; // Input request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Gets IANA/Olsen time zones for a country
[apiInstance addressGetTimezoneWithInput:input
          completionHandler: ^(CMGetTimezonesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressGetTimezone: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetTimezonesRequest***](CMGetTimezonesRequest.md)| Input request | 

### Return type

[**CMGetTimezonesResponse***](CMGetTimezonesResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressParseString**
```objc
-(NSURLSessionTask*) addressParseStringWithInput: (CMParseAddressRequest*) input
        completionHandler: (void (^)(CMParseAddressResponse* output, NSError* error)) handler;
```

Parse an unstructured input text string into an international, formatted address

Uses machine learning and Natural Language Processing (NLP) to handle a wide array of cases, including non-standard and unstructured address strings across a wide array of countries and address formatting norms.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMParseAddressRequest* input = [[CMParseAddressRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Parse an unstructured input text string into an international, formatted address
[apiInstance addressParseStringWithInput:input
          completionHandler: ^(CMParseAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressParseString: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMParseAddressRequest***](CMParseAddressRequest.md)| Input parse request | 

### Return type

[**CMParseAddressResponse***](CMParseAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressValidateAddress**
```objc
-(NSURLSessionTask*) addressValidateAddressWithInput: (CMValidateAddressRequest*) input
        completionHandler: (void (^)(CMValidateAddressResponse* output, NSError* error)) handler;
```

Validate a street address

Determines if an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateAddressRequest* input = [[CMValidateAddressRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Validate a street address
[apiInstance addressValidateAddressWithInput:input
          completionHandler: ^(CMValidateAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressValidateAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateAddressRequest***](CMValidateAddressRequest.md)| Input parse request | 

### Return type

[**CMValidateAddressResponse***](CMValidateAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

