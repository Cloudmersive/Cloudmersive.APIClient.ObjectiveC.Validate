#import <Foundation/Foundation.h>
#import "CMAddressGetServersResponse.h"
#import "CMAddressVerifySyntaxOnlyResponse.h"
#import "CMFullEmailValidationResponse.h"
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



@interface CMEmailApi: NSObject <CMApi>

extern NSString* kCMEmailApiErrorDomain;
extern NSInteger kCMEmailApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Partially check whether an email address is valid
/// Validate an email address by identifying whether its parent domain has email servers defined.  This call is less limited than syntaxOnly but not as comprehensive as address/full.
///
/// @param email Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMAddressGetServersResponse*
-(NSURLSessionTask*) emailAddressGetServersWithEmail: (NSString*) email
    completionHandler: (void (^)(CMAddressGetServersResponse* output, NSError* error)) handler;


/// Fully validate an email address
/// Performs a full validation of the email address.  Checks for syntactic correctness, identifies the mail server in question if any, and then contacts the email server to validate the existence of the account - without sending any emails.
///
/// @param email Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMFullEmailValidationResponse*
-(NSURLSessionTask*) emailFullValidationWithEmail: (NSString*) email
    completionHandler: (void (^)(CMFullEmailValidationResponse* output, NSError* error)) handler;


/// Validate email adddress for syntactic correctness only
/// Validate whether a given email address is syntactically correct via a limited local-only check.  Use the address/full API to do a full validation.
///
/// @param value Email address to validate, e.g. \&quot;support@cloudmersive.com\&quot;.    The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMAddressVerifySyntaxOnlyResponse*
-(NSURLSessionTask*) emailPostWithValue: (NSString*) value
    completionHandler: (void (^)(CMAddressVerifySyntaxOnlyResponse* output, NSError* error)) handler;



@end
