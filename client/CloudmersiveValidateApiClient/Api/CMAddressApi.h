#import <Foundation/Foundation.h>
#import "CMParseAddressRequest.h"
#import "CMParseAddressResponse.h"
#import "CMApi.h"

/**
* validateapi
* The validation APIs help you validate data. Check if an E-mail address is real. Check if a domain is real. Check up on an IP address, and even where it is located. All this and much more is available in the validation API.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface CMAddressApi: NSObject <CMApi>

extern NSString* kCMAddressApiErrorDomain;
extern NSInteger kCMAddressApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Parse an unstructured input text string into an international, formatted address
/// Uses machine learning and Natural Language Processing (NLP) to handle a wide array of cases, including non-standard and unstructured address strings across a wide array of countries and address formatting norms.
///
/// @param input Input parse request
/// 
///  code:200 message:"OK"
///
/// @return CMParseAddressResponse*
-(NSURLSessionTask*) addressParseStringWithInput: (CMParseAddressRequest*) input
    completionHandler: (void (^)(CMParseAddressResponse* output, NSError* error)) handler;



@end
