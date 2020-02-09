#import <Foundation/Foundation.h>
#import "CMLeadEnrichmentRequest.h"
#import "CMLeadEnrichmentResponse.h"
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



@interface CMLeadEnrichmentApi: NSObject <CMApi>

extern NSString* kCMLeadEnrichmentApiErrorDomain;
extern NSInteger kCMLeadEnrichmentApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Enrich an input lead with additional fields of data
/// 
///
/// @param request Input lead with known fields set, and unknown fields left blank (null)
/// 
///  code:200 message:"OK"
///
/// @return CMLeadEnrichmentResponse*
-(NSURLSessionTask*) leadEnrichmentEnrichLeadWithRequest: (CMLeadEnrichmentRequest*) request
    completionHandler: (void (^)(CMLeadEnrichmentResponse* output, NSError* error)) handler;



@end