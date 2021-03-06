#import <Foundation/Foundation.h>
#import "CMFirstNameValidationRequest.h"
#import "CMFirstNameValidationResponse.h"
#import "CMFullNameValidationRequest.h"
#import "CMFullNameValidationResponse.h"
#import "CMGetGenderRequest.h"
#import "CMGetGenderResponse.h"
#import "CMLastNameValidationRequest.h"
#import "CMLastNameValidationResponse.h"
#import "CMValidateIdentifierRequest.h"
#import "CMValidateIdentifierResponse.h"
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



@interface CMNameApi: NSObject <CMApi>

extern NSString* kCMNameApiErrorDomain;
extern NSInteger kCMNameApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get the gender of a first name
/// Determines the gender of a first name (given name)
///
/// @param input Gender request information
/// 
///  code:200 message:"OK"
///
/// @return CMGetGenderResponse*
-(NSURLSessionTask*) nameGetGenderWithInput: (CMGetGenderRequest*) input
    completionHandler: (void (^)(CMGetGenderResponse* output, NSError* error)) handler;


/// Validate a code identifier
/// Determines if the input name is a valid technical / code identifier.  Configure input rules such as whether whitespace, hyphens, underscores, etc. are allowed.  For example, a valid identifier might be \"helloWorld\" but not \"hello*World\".
///
/// @param input Identifier validation request information
/// 
///  code:200 message:"OK"
///
/// @return CMValidateIdentifierResponse*
-(NSURLSessionTask*) nameIdentifierWithInput: (CMValidateIdentifierRequest*) input
    completionHandler: (void (^)(CMValidateIdentifierResponse* output, NSError* error)) handler;


/// Validate a first name
/// Determines if a string is a valid first name (given name)
///
/// @param input Validation request information
/// 
///  code:200 message:"OK"
///
/// @return CMFirstNameValidationResponse*
-(NSURLSessionTask*) nameValidateFirstNameWithInput: (CMFirstNameValidationRequest*) input
    completionHandler: (void (^)(CMFirstNameValidationResponse* output, NSError* error)) handler;


/// Parse and validate a full name
/// Parses a full name string (e.g. \"Mr. Jon van der Waal Jr.\") into its component parts (and returns these component parts), and then validates whether it is a valid name string or not
///
/// @param input Validation request information
/// 
///  code:200 message:"OK"
///
/// @return CMFullNameValidationResponse*
-(NSURLSessionTask*) nameValidateFullNameWithInput: (CMFullNameValidationRequest*) input
    completionHandler: (void (^)(CMFullNameValidationResponse* output, NSError* error)) handler;


/// Validate a last name
/// Determines if a string is a valid last name (surname)
///
/// @param input Validation request information
/// 
///  code:200 message:"OK"
///
/// @return CMLastNameValidationResponse*
-(NSURLSessionTask*) nameValidateLastNameWithInput: (CMLastNameValidationRequest*) input
    completionHandler: (void (^)(CMLastNameValidationResponse* output, NSError* error)) handler;



@end
