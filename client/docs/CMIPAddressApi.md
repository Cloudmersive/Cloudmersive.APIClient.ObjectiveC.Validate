# CMIPAddressApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**iPAddressGeolocateStreetAddress**](CMIPAddressApi.md#ipaddressgeolocatestreetaddress) | **POST** /validate/ip/geolocate/street-address | Geolocate an IP address to a street address
[**iPAddressIpIntelligence**](CMIPAddressApi.md#ipaddressipintelligence) | **POST** /validate/ip/intelligence | Get intelligence on an IP address
[**iPAddressIsBot**](CMIPAddressApi.md#ipaddressisbot) | **POST** /validate/ip/is-bot | Check if IP address is a Bot client
[**iPAddressIsThreat**](CMIPAddressApi.md#ipaddressisthreat) | **POST** /validate/ip/is-threat | Check if IP address is a known threat
[**iPAddressIsTorNode**](CMIPAddressApi.md#ipaddressistornode) | **POST** /validate/ip/is-tor-node | Check if IP address is a Tor node server
[**iPAddressPost**](CMIPAddressApi.md#ipaddresspost) | **POST** /validate/ip/geolocate | Geolocate an IP address
[**iPAddressReverseDomainLookup**](CMIPAddressApi.md#ipaddressreversedomainlookup) | **POST** /validate/ip/reverse-domain-lookup | Perform a reverse domain name (DNS) lookup on an IP address


# **iPAddressGeolocateStreetAddress**
```objc
-(NSURLSessionTask*) iPAddressGeolocateStreetAddressWithValue: (NSString*) value
        completionHandler: (void (^)(CMGeolocateStreetAddressResponse* output, NSError* error)) handler;
```

Geolocate an IP address to a street address

Identify an IP address's street address.  Useful for security and UX applications.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to geolocate, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Geolocate an IP address to a street address
[apiInstance iPAddressGeolocateStreetAddressWithValue:value
          completionHandler: ^(CMGeolocateStreetAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressGeolocateStreetAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMGeolocateStreetAddressResponse***](CMGeolocateStreetAddressResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressIpIntelligence**
```objc
-(NSURLSessionTask*) iPAddressIpIntelligenceWithValue: (NSString*) value
        completionHandler: (void (^)(CMIPIntelligenceResponse* output, NSError* error)) handler;
```

Get intelligence on an IP address

Identify key intelligence about an IP address, including if it is a known threat IP, known bot, Tor exit node, as well as the location of the IP address.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to process, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Get intelligence on an IP address
[apiInstance iPAddressIpIntelligenceWithValue:value
          completionHandler: ^(CMIPIntelligenceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressIpIntelligence: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to process, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMIPIntelligenceResponse***](CMIPIntelligenceResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressIsBot**
```objc
-(NSURLSessionTask*) iPAddressIsBotWithValue: (NSString*) value
        completionHandler: (void (^)(CMBotCheckResponse* output, NSError* error)) handler;
```

Check if IP address is a Bot client

Check if the input IP address is a Bot, robot, or otherwise a non-user entity.  Leverages real-time signals to check against known high-probability bots..

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Check if IP address is a Bot client
[apiInstance iPAddressIsBotWithValue:value
          completionHandler: ^(CMBotCheckResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressIsBot: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMBotCheckResponse***](CMBotCheckResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressIsThreat**
```objc
-(NSURLSessionTask*) iPAddressIsThreatWithValue: (NSString*) value
        completionHandler: (void (^)(CMIPThreatResponse* output, NSError* error)) handler;
```

Check if IP address is a known threat

Check if the input IP address is a known threat IP address.  Checks against known bad IPs, botnets, compromised servers, and other lists of threats.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Check if IP address is a known threat
[apiInstance iPAddressIsThreatWithValue:value
          completionHandler: ^(CMIPThreatResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressIsThreat: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMIPThreatResponse***](CMIPThreatResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressIsTorNode**
```objc
-(NSURLSessionTask*) iPAddressIsTorNodeWithValue: (NSString*) value
        completionHandler: (void (^)(CMTorNodeResponse* output, NSError* error)) handler;
```

Check if IP address is a Tor node server

Check if the input IP address is a Tor exit node server.  Tor servers are a type of privacy-preserving technology that can hide the original IP address who makes a request.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Check if IP address is a Tor node server
[apiInstance iPAddressIsTorNodeWithValue:value
          completionHandler: ^(CMTorNodeResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressIsTorNode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMTorNodeResponse***](CMTorNodeResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressPost**
```objc
-(NSURLSessionTask*) iPAddressPostWithValue: (NSString*) value
        completionHandler: (void (^)(CMGeolocateResponse* output, NSError* error)) handler;
```

Geolocate an IP address

Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to geolocate, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Geolocate an IP address
[apiInstance iPAddressPostWithValue:value
          completionHandler: ^(CMGeolocateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMGeolocateResponse***](CMGeolocateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iPAddressReverseDomainLookup**
```objc
-(NSURLSessionTask*) iPAddressReverseDomainLookupWithValue: (NSString*) value
        completionHandler: (void (^)(CMIPReverseDNSLookupResponse* output, NSError* error)) handler;
```

Perform a reverse domain name (DNS) lookup on an IP address

Gets the domain name, if any, associated with the IP address.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* value = value_example; // IP address to check, e.g. \"55.55.55.55\".  The input is a string so be sure to enclose it in double-quotes.

CMIPAddressApi*apiInstance = [[CMIPAddressApi alloc] init];

// Perform a reverse domain name (DNS) lookup on an IP address
[apiInstance iPAddressReverseDomainLookupWithValue:value
          completionHandler: ^(CMIPReverseDNSLookupResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMIPAddressApi->iPAddressReverseDomainLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **value** | **NSString***| IP address to check, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMIPReverseDNSLookupResponse***](CMIPReverseDNSLookupResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

