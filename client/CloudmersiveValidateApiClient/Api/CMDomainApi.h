#import <Foundation/Foundation.h>
#import "CMCheckResponse.h"
#import "CMWhoisResponse.h"
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



@interface CMDomainApi: NSObject <CMApi>

extern NSString* kCMDomainApiErrorDomain;
extern NSInteger kCMDomainApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Validate a domain name
/// Check whether a domain name is valid or not.  API performs a live validation by contacting DNS services to validate the existence of the domain name.
///
/// @param domain Domain name to check, for example \&quot;cloudmersive.com\&quot;.  The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMCheckResponse*
-(NSURLSessionTask*) domainCheckWithDomain: (NSString*) domain
    completionHandler: (void (^)(CMCheckResponse* output, NSError* error)) handler;


/// Get WHOIS information for a domain
/// Validate whether a domain name exists, and also return the full WHOIS record for that domain name.  WHOIS records include all the registration details of the domain name, such as information about the domain's owners.
///
/// @param domain Domain name to check, for example \&quot;cloudmersive.com\&quot;.   The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMWhoisResponse*
-(NSURLSessionTask*) domainPostWithDomain: (NSString*) domain
    completionHandler: (void (^)(CMWhoisResponse* output, NSError* error)) handler;



@end