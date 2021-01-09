# CMDateTimeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dateTimeGetNowSimple**](CMDateTimeApi.md#datetimegetnowsimple) | **GET** /validate/date-time/get/now | Get current date and time as of now
[**dateTimeGetPublicHolidays**](CMDateTimeApi.md#datetimegetpublicholidays) | **POST** /validate/date-time/get/holidays | Get public holidays in the specified country and year
[**dateTimeParseNaturalLanguageDateTime**](CMDateTimeApi.md#datetimeparsenaturallanguagedatetime) | **POST** /validate/date-time/parse/date-time/natural-language | Parses a free-form natural language date and time string into a date and time
[**dateTimeParseStandardDateTime**](CMDateTimeApi.md#datetimeparsestandarddatetime) | **POST** /validate/date-time/parse/date-time/structured | Parses a standardized date and time string into a date and time


# **dateTimeGetNowSimple**
```objc
-(NSURLSessionTask*) dateTimeGetNowSimpleWithCompletionHandler: 
        (void (^)(CMDateTimeNowResult* output, NSError* error)) handler;
```

Get current date and time as of now

Gets the current date and time.  Response time is syncronized with atomic clocks, and represents a monotonic, centrally available, consistent clock.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];



CMDateTimeApi*apiInstance = [[CMDateTimeApi alloc] init];

// Get current date and time as of now
[apiInstance dateTimeGetNowSimpleWithCompletionHandler: 
          ^(CMDateTimeNowResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDateTimeApi->dateTimeGetNowSimple: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CMDateTimeNowResult***](CMDateTimeNowResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dateTimeGetPublicHolidays**
```objc
-(NSURLSessionTask*) dateTimeGetPublicHolidaysWithInput: (CMGetPublicHolidaysRequest*) input
        completionHandler: (void (^)(CMPublicHolidaysResponse* output, NSError* error)) handler;
```

Get public holidays in the specified country and year

Enumerates all public holidays in a given country for a given year.  Supports over 100 countries.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMGetPublicHolidaysRequest* input = [[CMGetPublicHolidaysRequest alloc] init]; // Input request

CMDateTimeApi*apiInstance = [[CMDateTimeApi alloc] init];

// Get public holidays in the specified country and year
[apiInstance dateTimeGetPublicHolidaysWithInput:input
          completionHandler: ^(CMPublicHolidaysResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDateTimeApi->dateTimeGetPublicHolidays: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMGetPublicHolidaysRequest***](CMGetPublicHolidaysRequest.md)| Input request | 

### Return type

[**CMPublicHolidaysResponse***](CMPublicHolidaysResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dateTimeParseNaturalLanguageDateTime**
```objc
-(NSURLSessionTask*) dateTimeParseNaturalLanguageDateTimeWithInput: (CMDateTimeNaturalLanguageParseRequest*) input
        completionHandler: (void (^)(CMDateTimeStandardizedParseResponse* output, NSError* error)) handler;
```

Parses a free-form natural language date and time string into a date and time

Parses an unstructured, free-form, natural language date and time string into a date time object.  This is intended for lightweight human-entered input, such as \"tomorrow at 3pm\" or \"tuesday\".

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDateTimeNaturalLanguageParseRequest* input = [[CMDateTimeNaturalLanguageParseRequest alloc] init]; // Input request

CMDateTimeApi*apiInstance = [[CMDateTimeApi alloc] init];

// Parses a free-form natural language date and time string into a date and time
[apiInstance dateTimeParseNaturalLanguageDateTimeWithInput:input
          completionHandler: ^(CMDateTimeStandardizedParseResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDateTimeApi->dateTimeParseNaturalLanguageDateTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMDateTimeNaturalLanguageParseRequest***](CMDateTimeNaturalLanguageParseRequest.md)| Input request | 

### Return type

[**CMDateTimeStandardizedParseResponse***](CMDateTimeStandardizedParseResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dateTimeParseStandardDateTime**
```objc
-(NSURLSessionTask*) dateTimeParseStandardDateTimeWithInput: (CMDateTimeStandardizedParseRequest*) input
        completionHandler: (void (^)(CMDateTimeStandardizedParseResponse* output, NSError* error)) handler;
```

Parses a standardized date and time string into a date and time

Parses a structured date and time string into a date time object.  This is intended for standardized date strings that adhere to formatting conventions, rather than natural language input.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDateTimeStandardizedParseRequest* input = [[CMDateTimeStandardizedParseRequest alloc] init]; // Input request

CMDateTimeApi*apiInstance = [[CMDateTimeApi alloc] init];

// Parses a standardized date and time string into a date and time
[apiInstance dateTimeParseStandardDateTimeWithInput:input
          completionHandler: ^(CMDateTimeStandardizedParseResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMDateTimeApi->dateTimeParseStandardDateTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMDateTimeStandardizedParseRequest***](CMDateTimeStandardizedParseRequest.md)| Input request | 

### Return type

[**CMDateTimeStandardizedParseResponse***](CMDateTimeStandardizedParseResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

