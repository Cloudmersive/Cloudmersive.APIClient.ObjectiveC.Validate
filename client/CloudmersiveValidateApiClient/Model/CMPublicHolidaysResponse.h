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


#import "CMPublicHolidayOccurrence.h"
@protocol CMPublicHolidayOccurrence;
@class CMPublicHolidayOccurrence;



@protocol CMPublicHolidaysResponse
@end

@interface CMPublicHolidaysResponse : CMObject

/* True if successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Public holidays in the requested country and year [optional]
 */
@property(nonatomic) NSArray<CMPublicHolidayOccurrence>* publicHolidays;

@end
