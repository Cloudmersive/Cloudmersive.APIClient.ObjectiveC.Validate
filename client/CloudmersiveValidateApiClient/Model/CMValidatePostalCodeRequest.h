#import <Foundation/Foundation.h>
#import "CMObject.h"

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





@protocol CMValidatePostalCodeRequest
@end

@interface CMValidatePostalCodeRequest : CMObject

/* Required: Zip code or postal code of the address to validate, such as '94597' [optional]
 */
@property(nonatomic) NSString* postalCode;
/* Optional (recommended); Name of the country, such as 'United States'.  If left blank, and CountryCode is also left blank, will default to United States.  Global countries are supported. [optional]
 */
@property(nonatomic) NSString* countryFullName;
/* Optional; two-letter country code (Two-letter ISO 3166-1 country code) of the country.  If left blank, and CountryFullName is also left blank, will default to United States.  Global countries are supported. [optional]
 */
@property(nonatomic) NSString* countryCode;

@end
