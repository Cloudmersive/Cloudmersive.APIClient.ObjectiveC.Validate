#import <Foundation/Foundation.h>
#import "CMGeolocateResponse.h"
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



@interface CMIPAddressApi: NSObject <CMApi>

extern NSString* kCMIPAddressApiErrorDomain;
extern NSInteger kCMIPAddressApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Geolocate an IP address
/// Identify an IP address Country, State/Provence, City, Zip/Postal Code, etc.  Useful for security and UX applications.
///
/// @param value IP address to geolocate, e.g. \&quot;55.55.55.55\&quot;.  The input is a string so be sure to enclose it in double-quotes.
/// 
///  code:200 message:"OK"
///
/// @return CMGeolocateResponse*
-(NSURLSessionTask*) iPAddressPostWithValue: (NSString*) value
    completionHandler: (void (^)(CMGeolocateResponse* output, NSError* error)) handler;



@end