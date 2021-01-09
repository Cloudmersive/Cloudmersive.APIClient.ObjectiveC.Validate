#import <Foundation/Foundation.h>
#import "CMDateTimeNaturalLanguageParseRequest.h"
#import "CMDateTimeNowResult.h"
#import "CMDateTimeStandardizedParseRequest.h"
#import "CMDateTimeStandardizedParseResponse.h"
#import "CMGetPublicHolidaysRequest.h"
#import "CMPublicHolidaysResponse.h"
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



@interface CMDateTimeApi: NSObject <CMApi>

extern NSString* kCMDateTimeApiErrorDomain;
extern NSInteger kCMDateTimeApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get current date and time as of now
/// Gets the current date and time.  Response time is syncronized with atomic clocks, and represents a monotonic, centrally available, consistent clock.
///
/// 
///  code:200 message:"OK"
///
/// @return CMDateTimeNowResult*
-(NSURLSessionTask*) dateTimeGetNowSimpleWithCompletionHandler: 
    (void (^)(CMDateTimeNowResult* output, NSError* error)) handler;


/// Get public holidays in the specified country and year
/// Enumerates all public holidays in a given country for a given year.  Supports over 100 countries.
///
/// @param input Input request
/// 
///  code:200 message:"OK"
///
/// @return CMPublicHolidaysResponse*
-(NSURLSessionTask*) dateTimeGetPublicHolidaysWithInput: (CMGetPublicHolidaysRequest*) input
    completionHandler: (void (^)(CMPublicHolidaysResponse* output, NSError* error)) handler;


/// Parses a free-form natural language date and time string into a date and time
/// Parses an unstructured, free-form, natural language date and time string into a date time object.  This is intended for lightweight human-entered input, such as \"tomorrow at 3pm\" or \"tuesday\".
///
/// @param input Input request
/// 
///  code:200 message:"OK"
///
/// @return CMDateTimeStandardizedParseResponse*
-(NSURLSessionTask*) dateTimeParseNaturalLanguageDateTimeWithInput: (CMDateTimeNaturalLanguageParseRequest*) input
    completionHandler: (void (^)(CMDateTimeStandardizedParseResponse* output, NSError* error)) handler;


/// Parses a standardized date and time string into a date and time
/// Parses a structured date and time string into a date time object.  This is intended for standardized date strings that adhere to formatting conventions, rather than natural language input.
///
/// @param input Input request
/// 
///  code:200 message:"OK"
///
/// @return CMDateTimeStandardizedParseResponse*
-(NSURLSessionTask*) dateTimeParseStandardDateTimeWithInput: (CMDateTimeStandardizedParseRequest*) input
    completionHandler: (void (^)(CMDateTimeStandardizedParseResponse* output, NSError* error)) handler;



@end
