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





@protocol CMCountryDetails
@end

@interface CMCountryDetails : CMObject

/* Name of the country [optional]
 */
@property(nonatomic) NSString* countryName;
/* Three-letter ISO 3166-1 country code [optional]
 */
@property(nonatomic) NSString* threeLetterCode;
/* Two-letter ISO 3166-1 country code [optional]
 */
@property(nonatomic) NSString* iSOTwoLetterCode;
/* True if this country is currently a member of the European Union (EU), false otherwise [optional]
 */
@property(nonatomic) NSNumber* isEuropeanUnionMember;
/* ISO 4217 currency three-letter code associated with the country [optional]
 */
@property(nonatomic) NSString* iSOCurrencyCode;
/* Symbol associated with the currency [optional]
 */
@property(nonatomic) NSString* currencySymbol;
/* Full name of the currency [optional]
 */
@property(nonatomic) NSString* currencyEnglishName;
/* Region (continent) in which the country is located; possible values are None, Europe, Americas, Asia, Africa, Oceania [optional]
 */
@property(nonatomic) NSString* region;
/* Subregion in which the country is located; possible values are None, NorthernEurope, WesternEurope, SouthernEurope, EasternEurope, CentralAmerica, NorthernAmerica, SouthAmerica, EasternAfrica, MiddleAfrica, NorthernAfrica , SouthernAfrica , WesternAfrica , CentralAsia , EasternAsia , SouthernAsia , SouthEasternAsia , WesternAsia , Southern , Middle , AustraliaandNewZealand , Melanesia , Polynesia , Micronesia , Caribbean, [optional]
 */
@property(nonatomic) NSString* subregion;

@end