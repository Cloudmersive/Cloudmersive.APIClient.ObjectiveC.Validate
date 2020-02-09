# CMLeadEnrichmentApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**leadEnrichmentEnrichLead**](CMLeadEnrichmentApi.md#leadenrichmentenrichlead) | **POST** /validate/lead-enrichment/lead/enrich | Enrich an input lead with additional fields of data


# **leadEnrichmentEnrichLead**
```objc
-(NSURLSessionTask*) leadEnrichmentEnrichLeadWithRequest: (CMLeadEnrichmentRequest*) request
        completionHandler: (void (^)(CMLeadEnrichmentResponse* output, NSError* error)) handler;
```

Enrich an input lead with additional fields of data

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMLeadEnrichmentRequest* request = [[CMLeadEnrichmentRequest alloc] init]; // Input lead with known fields set, and unknown fields left blank (null)

CMLeadEnrichmentApi*apiInstance = [[CMLeadEnrichmentApi alloc] init];

// Enrich an input lead with additional fields of data
[apiInstance leadEnrichmentEnrichLeadWithRequest:request
          completionHandler: ^(CMLeadEnrichmentResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMLeadEnrichmentApi->leadEnrichmentEnrichLead: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMLeadEnrichmentRequest***](CMLeadEnrichmentRequest.md)| Input lead with known fields set, and unknown fields left blank (null) | 

### Return type

[**CMLeadEnrichmentResponse***](CMLeadEnrichmentResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

