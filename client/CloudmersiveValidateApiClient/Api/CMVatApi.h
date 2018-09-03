#import <Foundation/Foundation.h>
#import "CMVatLookupRequest.h"
#import "CMVatLookupResponse.h"
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



@interface CMVatApi: NSObject <CMApi>

extern NSString* kCMVatApiErrorDomain;
extern NSInteger kCMVatApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Lookup a VAT code
/// Checks if a VAT code is valid, and if it is, returns more information about it
///
/// @param input Input VAT code
/// 
///  code:200 message:"OK"
///
/// @return CMVatLookupResponse*
-(NSURLSessionTask*) vatVatLookupWithInput: (CMVatLookupRequest*) input
    completionHandler: (void (^)(CMVatLookupResponse* output, NSError* error)) handler;



@end
