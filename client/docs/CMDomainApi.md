# CMDomainApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**domainCheck**](CMDomainApi.md#domaincheck) | **POST** /validate/domain/check | Validate a domain name
[**domainPost**](CMDomainApi.md#domainpost) | **POST** /validate/domain/whois | Get WHOIS information for a domain
[**domainQualityScore**](CMDomainApi.md#domainqualityscore) | **POST** /validate/domain/quality-score | Validate a domain name&#39;s quality score
[**domainUrlFull**](CMDomainApi.md#domainurlfull) | **POST** /validate/domain/url/full | Validate a URL fully
[**domainUrlSyntaxOnly**](CMDomainApi.md#domainurlsyntaxonly) | **POST** /validate/domain/url/syntax-only | Validate a URL syntactically


# **domainCheck**
```objc
-(NSURLSessionTask*) domainCheckWithDomain: (NSString*) domain
        completionHandler: (void (^)(CMCheckResponse* output, NSError* error)) handler;
```

Validate a domain name

Check whether a domain name is valid or not.  API performs a live validation by contacting DNS services to validate the existence of the domain name.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* domain = domain_example; // Domain name to check, for example \"cloudmersive.com\".  The input is a string so be sure to enclose it in double-quotes.

CMDomainApi*apiInstance = [[CMDomainApi alloc] init];

// Validate a domain name
[apiInstance domainCheckWithDomain:domain
          completionHandler: ^(CMCheckResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDomainApi->domainCheck: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| Domain name to check, for example \&quot;cloudmersive.com\&quot;.  The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMCheckResponse***](CMCheckResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domainPost**
```objc
-(NSURLSessionTask*) domainPostWithDomain: (NSString*) domain
        completionHandler: (void (^)(CMWhoisResponse* output, NSError* error)) handler;
```

Get WHOIS information for a domain

Validate whether a domain name exists, and also return the full WHOIS record for that domain name.  WHOIS records include all the registration details of the domain name, such as information about the domain's owners.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* domain = domain_example; // Domain name to check, for example \"cloudmersive.com\".   The input is a string so be sure to enclose it in double-quotes.

CMDomainApi*apiInstance = [[CMDomainApi alloc] init];

// Get WHOIS information for a domain
[apiInstance domainPostWithDomain:domain
          completionHandler: ^(CMWhoisResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDomainApi->domainPost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| Domain name to check, for example \&quot;cloudmersive.com\&quot;.   The input is a string so be sure to enclose it in double-quotes. | 

### Return type

[**CMWhoisResponse***](CMWhoisResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domainQualityScore**
```objc
-(NSURLSessionTask*) domainQualityScoreWithDomain: (NSString*) domain
        completionHandler: (void (^)(CMDomainQualityResponse* output, NSError* error)) handler;
```

Validate a domain name's quality score

Check the quality of a domain name.  Supports over 9 million domain names.  Higher quality scores indicate more trust and authority in the domain name, with values ranging from 0.0 (low quality) to 10.0 (maximum quality).

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* domain = domain_example; // Domain name to check, for example \"cloudmersive.com\".

CMDomainApi*apiInstance = [[CMDomainApi alloc] init];

// Validate a domain name's quality score
[apiInstance domainQualityScoreWithDomain:domain
          completionHandler: ^(CMDomainQualityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDomainApi->domainQualityScore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **NSString***| Domain name to check, for example \&quot;cloudmersive.com\&quot;. | 

### Return type

[**CMDomainQualityResponse***](CMDomainQualityResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domainUrlFull**
```objc
-(NSURLSessionTask*) domainUrlFullWithRequest: (CMValidateUrlRequestFull*) request
        completionHandler: (void (^)(CMValidateUrlResponseFull* output, NSError* error)) handler;
```

Validate a URL fully

Validate whether a URL is syntactically valid (does not check endpoint for validity), whether it exists, and whether the endpoint is up and passes virus scan checks.  Accepts various types of input and produces a well-formed URL as output.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateUrlRequestFull* request = [[CMValidateUrlRequestFull alloc] init]; // Input URL request

CMDomainApi*apiInstance = [[CMDomainApi alloc] init];

// Validate a URL fully
[apiInstance domainUrlFullWithRequest:request
          completionHandler: ^(CMValidateUrlResponseFull* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDomainApi->domainUrlFull: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMValidateUrlRequestFull***](CMValidateUrlRequestFull.md)| Input URL request | 

### Return type

[**CMValidateUrlResponseFull***](CMValidateUrlResponseFull.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **domainUrlSyntaxOnly**
```objc
-(NSURLSessionTask*) domainUrlSyntaxOnlyWithRequest: (CMValidateUrlRequestSyntaxOnly*) request
        completionHandler: (void (^)(CMValidateUrlResponseSyntaxOnly* output, NSError* error)) handler;
```

Validate a URL syntactically

Validate whether a URL is syntactically valid (does not check endpoint for validity).  Accepts various types of input and produces a well-formed URL as output.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMValidateUrlRequestSyntaxOnly* request = [[CMValidateUrlRequestSyntaxOnly alloc] init]; // Input URL information

CMDomainApi*apiInstance = [[CMDomainApi alloc] init];

// Validate a URL syntactically
[apiInstance domainUrlSyntaxOnlyWithRequest:request
          completionHandler: ^(CMValidateUrlResponseSyntaxOnly* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDomainApi->domainUrlSyntaxOnly: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMValidateUrlRequestSyntaxOnly***](CMValidateUrlRequestSyntaxOnly.md)| Input URL information | 

### Return type

[**CMValidateUrlResponseSyntaxOnly***](CMValidateUrlResponseSyntaxOnly.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

