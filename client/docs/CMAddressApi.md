# CMAddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addressCheckEUMembership**](CMAddressApi.md#addresscheckeumembership) | **POST** /validate/address/country/check-eu-membership | Check if a country is a member of the European Union (EU)
[**addressCountry**](CMAddressApi.md#addresscountry) | **POST** /validate/address/country | Validate and normalize country information, return ISO 3166-1 country codes and country name
[**addressCountryList**](CMAddressApi.md#addresscountrylist) | **POST** /validate/address/country/list | Get a list of ISO 3166-1 countries
[**addressGeocode**](CMAddressApi.md#addressgeocode) | **POST** /validate/address/geocode | Geocode a street address into latitude and longitude
[**addressGetCountryCurrency**](CMAddressApi.md#addressgetcountrycurrency) | **POST** /validate/address/country/get-currency | Get the currency of the input country
[**addressGetCountryRegion**](CMAddressApi.md#addressgetcountryregion) | **POST** /validate/address/country/get-region | Get the region, subregion and continent of the country
[**addressGetTimezone**](CMAddressApi.md#addressgettimezone) | **POST** /validate/address/country/get-timezones | Gets IANA/Olsen time zones for a country
[**addressNormalizeAddress**](CMAddressApi.md#addressnormalizeaddress) | **POST** /validate/address/street-address/normalize | Normalize a street address
[**addressParseString**](CMAddressApi.md#addressparsestring) | **POST** /validate/address/parse | Parse an unstructured input text string into an international, formatted address
[**addressReverseGeocodeAddress**](CMAddressApi.md#addressreversegeocodeaddress) | **POST** /validate/address/geocode/reverse | Reverse geocode a lattitude and longitude into an address
[**addressValidateAddress**](CMAddressApi.md#addressvalidateaddress) | **POST** /validate/address/street-address | Validate a street address
[**addressValidateCity**](CMAddressApi.md#addressvalidatecity) | **POST** /validate/address/city | Validate a City and State/Province combination, get location information about it
[**addressValidatePostalCode**](CMAddressApi.md#addressvalidatepostalcode) | **POST** /validate/address/postal-code | Validate a postal code, get location information about it
[**addressValidateState**](CMAddressApi.md#addressvalidatestate) | **POST** /validate/address/state | Validate a state or province, name or abbreviation, get location information about it


# **addressCheckEUMembership**
```objc
-(NSURLSessionTask*) addressCheckEUMembershipWithInput: (CMValidateCountryRequest*) input
        completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler;
```

Check if a country is a member of the European Union (EU)

Checks if the input country is a member of the European Union or not.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateCountryRequest* input = [[CMValidateCountryRequest alloc] init]; // Input request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Check if a country is a member of the European Union (EU)
[apiInstance addressCheckEUMembershipWithInput:input
          completionHandler: ^(CMValidateCountryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressCheckEUMembership: %@", error);
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

# **addressCountry**
```objc
-(NSURLSessionTask*) addressCountryWithInput: (CMValidateCountryRequest*) input
        completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler;
```

Validate and normalize country information, return ISO 3166-1 country codes and country name

Validates and normalizes country information, and returns key information about a country, as well as whether it is a member of the European Union.  Also returns distinct time zones in the country.

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

# **addressCountryList**
```objc
-(NSURLSessionTask*) addressCountryListWithCompletionHandler: 
        (void (^)(CMCountryListResult* output, NSError* error)) handler;
```

Get a list of ISO 3166-1 countries

Enumerates the list of ISO 3166-1 countries, including name, country codes, and more.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];



CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Get a list of ISO 3166-1 countries
[apiInstance addressCountryListWithCompletionHandler: 
          ^(CMCountryListResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressCountryList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CMCountryListResult***](CMCountryListResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressGeocode**
```objc
-(NSURLSessionTask*) addressGeocodeWithInput: (CMValidateAddressRequest*) input
        completionHandler: (void (^)(CMValidateAddressResponse* output, NSError* error)) handler;
```

Geocode a street address into latitude and longitude

Geocodes a street address into latitude and longitude.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateAddressRequest* input = [[CMValidateAddressRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Geocode a street address into latitude and longitude
[apiInstance addressGeocodeWithInput:input
          completionHandler: ^(CMValidateAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressGeocode: %@", error);
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

# **addressGetCountryCurrency**
```objc
-(NSURLSessionTask*) addressGetCountryCurrencyWithInput: (CMValidateCountryRequest*) input
        completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler;
```

Get the currency of the input country

Gets the currency information for the input country, including the ISO three-letter country code, currency symbol, and English currency name.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateCountryRequest* input = [[CMValidateCountryRequest alloc] init]; // Input request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Get the currency of the input country
[apiInstance addressGetCountryCurrencyWithInput:input
          completionHandler: ^(CMValidateCountryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressGetCountryCurrency: %@", error);
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

# **addressGetCountryRegion**
```objc
-(NSURLSessionTask*) addressGetCountryRegionWithInput: (CMValidateCountryRequest*) input
        completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler;
```

Get the region, subregion and continent of the country

Gets the continent information including region and subregion for the input country.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateCountryRequest* input = [[CMValidateCountryRequest alloc] init]; // Input request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Get the region, subregion and continent of the country
[apiInstance addressGetCountryRegionWithInput:input
          completionHandler: ^(CMValidateCountryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressGetCountryRegion: %@", error);
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

# **addressNormalizeAddress**
```objc
-(NSURLSessionTask*) addressNormalizeAddressWithInput: (CMValidateAddressRequest*) input
        completionHandler: (void (^)(CMNormalizeAddressResponse* output, NSError* error)) handler;
```

Normalize a street address

Normalizes an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.  Supports all major international addresses.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateAddressRequest* input = [[CMValidateAddressRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Normalize a street address
[apiInstance addressNormalizeAddressWithInput:input
          completionHandler: ^(CMNormalizeAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressNormalizeAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateAddressRequest***](CMValidateAddressRequest.md)| Input parse request | 

### Return type

[**CMNormalizeAddressResponse***](CMNormalizeAddressResponse.md)

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

# **addressReverseGeocodeAddress**
```objc
-(NSURLSessionTask*) addressReverseGeocodeAddressWithInput: (CMReverseGeocodeAddressRequest*) input
        completionHandler: (void (^)(CMReverseGeocodeAddressResponse* output, NSError* error)) handler;
```

Reverse geocode a lattitude and longitude into an address

Converts lattitude and longitude coordinates into an address through reverse-geocoding.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMReverseGeocodeAddressRequest* input = [[CMReverseGeocodeAddressRequest alloc] init]; // Input reverse geocoding request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Reverse geocode a lattitude and longitude into an address
[apiInstance addressReverseGeocodeAddressWithInput:input
          completionHandler: ^(CMReverseGeocodeAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressReverseGeocodeAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMReverseGeocodeAddressRequest***](CMReverseGeocodeAddressRequest.md)| Input reverse geocoding request | 

### Return type

[**CMReverseGeocodeAddressResponse***](CMReverseGeocodeAddressResponse.md)

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

Determines if an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.  Supports all major international addresses.

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

# **addressValidateCity**
```objc
-(NSURLSessionTask*) addressValidateCityWithInput: (CMValidateCityRequest*) input
        completionHandler: (void (^)(CMValidateCityResponse* output, NSError* error)) handler;
```

Validate a City and State/Province combination, get location information about it

Checks if the input city and state name or code is valid, and returns information about it such as normalized City name, State name and more.  Supports all major international addresses.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateCityRequest* input = [[CMValidateCityRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Validate a City and State/Province combination, get location information about it
[apiInstance addressValidateCityWithInput:input
          completionHandler: ^(CMValidateCityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressValidateCity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateCityRequest***](CMValidateCityRequest.md)| Input parse request | 

### Return type

[**CMValidateCityResponse***](CMValidateCityResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressValidatePostalCode**
```objc
-(NSURLSessionTask*) addressValidatePostalCodeWithInput: (CMValidatePostalCodeRequest*) input
        completionHandler: (void (^)(CMValidatePostalCodeResponse* output, NSError* error)) handler;
```

Validate a postal code, get location information about it

Checks if the input postal code is valid, and returns information about it such as City, State and more.  Supports all major countries.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidatePostalCodeRequest* input = [[CMValidatePostalCodeRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Validate a postal code, get location information about it
[apiInstance addressValidatePostalCodeWithInput:input
          completionHandler: ^(CMValidatePostalCodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressValidatePostalCode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidatePostalCodeRequest***](CMValidatePostalCodeRequest.md)| Input parse request | 

### Return type

[**CMValidatePostalCodeResponse***](CMValidatePostalCodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addressValidateState**
```objc
-(NSURLSessionTask*) addressValidateStateWithInput: (CMValidateStateRequest*) input
        completionHandler: (void (^)(CMValidateStateResponse* output, NSError* error)) handler;
```

Validate a state or province, name or abbreviation, get location information about it

Checks if the input state name or code is valid, and returns information about it such as normalized State name and more.  Supports all major countries.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateStateRequest* input = [[CMValidateStateRequest alloc] init]; // Input parse request

CMAddressApi*apiInstance = [[CMAddressApi alloc] init];

// Validate a state or province, name or abbreviation, get location information about it
[apiInstance addressValidateStateWithInput:input
          completionHandler: ^(CMValidateStateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAddressApi->addressValidateState: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMValidateStateRequest***](CMValidateStateRequest.md)| Input parse request | 

### Return type

[**CMValidateStateResponse***](CMValidateStateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

