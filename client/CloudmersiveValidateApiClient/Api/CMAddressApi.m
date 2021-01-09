#import "CMAddressApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMCountryListResult.h"
#import "CMGetTimezonesRequest.h"
#import "CMGetTimezonesResponse.h"
#import "CMNormalizeAddressResponse.h"
#import "CMParseAddressRequest.h"
#import "CMParseAddressResponse.h"
#import "CMReverseGeocodeAddressRequest.h"
#import "CMReverseGeocodeAddressResponse.h"
#import "CMValidateAddressRequest.h"
#import "CMValidateAddressResponse.h"
#import "CMValidateCityRequest.h"
#import "CMValidateCityResponse.h"
#import "CMValidateCountryRequest.h"
#import "CMValidateCountryResponse.h"
#import "CMValidatePostalCodeRequest.h"
#import "CMValidatePostalCodeResponse.h"
#import "CMValidateStateRequest.h"
#import "CMValidateStateResponse.h"


@interface CMAddressApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMAddressApi

NSString* kCMAddressApiErrorDomain = @"CMAddressApiErrorDomain";
NSInteger kCMAddressApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Check if a country is a member of the European Union (EU)
/// Checks if the input country is a member of the European Union or not.
///  @param input Input request 
///
///  @returns CMValidateCountryResponse*
///
-(NSURLSessionTask*) addressCheckEUMembershipWithInput: (CMValidateCountryRequest*) input
    completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country/check-eu-membership"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateCountryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateCountryResponse*)data, error);
                                }
                            }];
}

///
/// Validate and normalize country information, return ISO 3166-1 country codes and country name
/// Validates and normalizes country information, and returns key information about a country, as well as whether it is a member of the European Union.  Also returns distinct time zones in the country.
///  @param input Input request 
///
///  @returns CMValidateCountryResponse*
///
-(NSURLSessionTask*) addressCountryWithInput: (CMValidateCountryRequest*) input
    completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateCountryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateCountryResponse*)data, error);
                                }
                            }];
}

///
/// Get a list of ISO 3166-1 countries
/// Enumerates the list of ISO 3166-1 countries, including name, country codes, and more.
///  @returns CMCountryListResult*
///
-(NSURLSessionTask*) addressCountryListWithCompletionHandler: 
    (void (^)(CMCountryListResult* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country/list"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMCountryListResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMCountryListResult*)data, error);
                                }
                            }];
}

///
/// Geocode a street address into latitude and longitude
/// Geocodes a street address into latitude and longitude.
///  @param input Input parse request 
///
///  @returns CMValidateAddressResponse*
///
-(NSURLSessionTask*) addressGeocodeWithInput: (CMValidateAddressRequest*) input
    completionHandler: (void (^)(CMValidateAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/geocode"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateAddressResponse*)data, error);
                                }
                            }];
}

///
/// Get the currency of the input country
/// Gets the currency information for the input country, including the ISO three-letter country code, currency symbol, and English currency name.
///  @param input Input request 
///
///  @returns CMValidateCountryResponse*
///
-(NSURLSessionTask*) addressGetCountryCurrencyWithInput: (CMValidateCountryRequest*) input
    completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country/get-currency"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateCountryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateCountryResponse*)data, error);
                                }
                            }];
}

///
/// Get the region, subregion and continent of the country
/// Gets the continent information including region and subregion for the input country.
///  @param input Input request 
///
///  @returns CMValidateCountryResponse*
///
-(NSURLSessionTask*) addressGetCountryRegionWithInput: (CMValidateCountryRequest*) input
    completionHandler: (void (^)(CMValidateCountryResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country/get-region"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateCountryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateCountryResponse*)data, error);
                                }
                            }];
}

///
/// Gets IANA/Olsen time zones for a country
/// Gets the IANA/Olsen time zones for a country.
///  @param input Input request 
///
///  @returns CMGetTimezonesResponse*
///
-(NSURLSessionTask*) addressGetTimezoneWithInput: (CMGetTimezonesRequest*) input
    completionHandler: (void (^)(CMGetTimezonesResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/country/get-timezones"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMGetTimezonesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMGetTimezonesResponse*)data, error);
                                }
                            }];
}

///
/// Normalize a street address
/// Normalizes an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.  Supports all major international addresses.
///  @param input Input parse request 
///
///  @returns CMNormalizeAddressResponse*
///
-(NSURLSessionTask*) addressNormalizeAddressWithInput: (CMValidateAddressRequest*) input
    completionHandler: (void (^)(CMNormalizeAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/street-address/normalize"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMNormalizeAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMNormalizeAddressResponse*)data, error);
                                }
                            }];
}

///
/// Parse an unstructured input text string into an international, formatted address
/// Uses machine learning and Natural Language Processing (NLP) to handle a wide array of cases, including non-standard and unstructured address strings across a wide array of countries and address formatting norms.
///  @param input Input parse request 
///
///  @returns CMParseAddressResponse*
///
-(NSURLSessionTask*) addressParseStringWithInput: (CMParseAddressRequest*) input
    completionHandler: (void (^)(CMParseAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/parse"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMParseAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMParseAddressResponse*)data, error);
                                }
                            }];
}

///
/// Reverse geocode a lattitude and longitude into an address
/// Converts lattitude and longitude coordinates into an address through reverse-geocoding.
///  @param input Input reverse geocoding request 
///
///  @returns CMReverseGeocodeAddressResponse*
///
-(NSURLSessionTask*) addressReverseGeocodeAddressWithInput: (CMReverseGeocodeAddressRequest*) input
    completionHandler: (void (^)(CMReverseGeocodeAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/geocode/reverse"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMReverseGeocodeAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMReverseGeocodeAddressResponse*)data, error);
                                }
                            }];
}

///
/// Validate a street address
/// Determines if an input structured street address is valid or invalid.  If the address is valid, also returns the latitude and longitude of the address.  Supports all major international addresses.
///  @param input Input parse request 
///
///  @returns CMValidateAddressResponse*
///
-(NSURLSessionTask*) addressValidateAddressWithInput: (CMValidateAddressRequest*) input
    completionHandler: (void (^)(CMValidateAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/street-address"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateAddressResponse*)data, error);
                                }
                            }];
}

///
/// Validate a City and State/Province combination, get location information about it
/// Checks if the input city and state name or code is valid, and returns information about it such as normalized City name, State name and more.  Supports all major international addresses.
///  @param input Input parse request 
///
///  @returns CMValidateCityResponse*
///
-(NSURLSessionTask*) addressValidateCityWithInput: (CMValidateCityRequest*) input
    completionHandler: (void (^)(CMValidateCityResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/city"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateCityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateCityResponse*)data, error);
                                }
                            }];
}

///
/// Validate a postal code, get location information about it
/// Checks if the input postal code is valid, and returns information about it such as City, State and more.  Supports all major countries.
///  @param input Input parse request 
///
///  @returns CMValidatePostalCodeResponse*
///
-(NSURLSessionTask*) addressValidatePostalCodeWithInput: (CMValidatePostalCodeRequest*) input
    completionHandler: (void (^)(CMValidatePostalCodeResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/postal-code"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidatePostalCodeResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidatePostalCodeResponse*)data, error);
                                }
                            }];
}

///
/// Validate a state or province, name or abbreviation, get location information about it
/// Checks if the input state name or code is valid, and returns information about it such as normalized State name and more.  Supports all major countries.
///  @param input Input parse request 
///
///  @returns CMValidateStateResponse*
///
-(NSURLSessionTask*) addressValidateStateWithInput: (CMValidateStateRequest*) input
    completionHandler: (void (^)(CMValidateStateResponse* output, NSError* error)) handler {
    // verify the required parameter 'input' is set
    if (input == nil) {
        NSParameterAssert(input);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"input"] };
            NSError* error = [NSError errorWithDomain:kCMAddressApiErrorDomain code:kCMAddressApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/address/state"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = input;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMValidateStateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMValidateStateResponse*)data, error);
                                }
                            }];
}



@end
