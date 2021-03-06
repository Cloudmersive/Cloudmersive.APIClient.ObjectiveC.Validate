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





@protocol CMDateTimeNaturalLanguageParseRequest
@end

@interface CMDateTimeNaturalLanguageParseRequest : CMObject

/* Raw string input of a natural language-formatted date and time for parsing [optional]
 */
@property(nonatomic) NSString* rawDateTimeInput;

@end
