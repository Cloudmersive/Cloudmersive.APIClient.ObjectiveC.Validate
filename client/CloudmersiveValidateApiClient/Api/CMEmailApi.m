#import "CMEmailApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMAddressGetServersResponse.h"
#import "CMAddressVerifySyntaxOnlyResponse.h"
#import "CMFullEmailValidationResponse.h"


@interface CMEmailApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMEmailApi

NSString* kCMEmailApiErrorDomain = @"CMEmailApiErrorDomain";
NSInteger kCMEmailApiMissingParamErrorCode = 234513;

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
/// Partially check whether an email address is valid
/// Validate an email address by identifying whether its parent domain has email servers defined.  This call is less limited than syntaxOnly but not as comprehensive as address/full.
///  @param email Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes. 
///
///  @returns CMAddressGetServersResponse*
///
-(NSURLSessionTask*) emailAddressGetServersWithEmail: (NSString*) email
    completionHandler: (void (^)(CMAddressGetServersResponse* output, NSError* error)) handler {
    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kCMEmailApiErrorDomain code:kCMEmailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/email/address/servers"];

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
    bodyParam = email;

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
                              responseType: @"CMAddressGetServersResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAddressGetServersResponse*)data, error);
                                }
                            }];
}

///
/// Fully validate an email address
/// Performs a full validation of the email address.  Checks for syntactic correctness, identifies the mail server in question if any, and then contacts the email server to validate the existence of the account - without sending any emails.
///  @param email Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes. 
///
///  @returns CMFullEmailValidationResponse*
///
-(NSURLSessionTask*) emailFullValidationWithEmail: (NSString*) email
    completionHandler: (void (^)(CMFullEmailValidationResponse* output, NSError* error)) handler {
    // verify the required parameter 'email' is set
    if (email == nil) {
        NSParameterAssert(email);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"email"] };
            NSError* error = [NSError errorWithDomain:kCMEmailApiErrorDomain code:kCMEmailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/email/address/full"];

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
    bodyParam = email;

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
                              responseType: @"CMFullEmailValidationResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMFullEmailValidationResponse*)data, error);
                                }
                            }];
}

///
/// Validate email adddress for syntactic correctness only
/// Validate whether a given email address is syntactically correct via a limited local-only check.  Use the address/full API to do a full validation.
///  @param value Email address to validate, e.g. \"support@cloudmersive.com\".    The input is a string so be sure to enclose it in double-quotes. 
///
///  @returns CMAddressVerifySyntaxOnlyResponse*
///
-(NSURLSessionTask*) emailPostWithValue: (NSString*) value
    completionHandler: (void (^)(CMAddressVerifySyntaxOnlyResponse* output, NSError* error)) handler {
    // verify the required parameter 'value' is set
    if (value == nil) {
        NSParameterAssert(value);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"value"] };
            NSError* error = [NSError errorWithDomain:kCMEmailApiErrorDomain code:kCMEmailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/validate/email/address/syntaxOnly"];

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
    bodyParam = value;

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
                              responseType: @"CMAddressVerifySyntaxOnlyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMAddressVerifySyntaxOnlyResponse*)data, error);
                                }
                            }];
}



@end
