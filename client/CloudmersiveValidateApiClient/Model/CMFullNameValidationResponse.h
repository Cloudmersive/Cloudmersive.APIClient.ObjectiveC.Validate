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





@protocol CMFullNameValidationResponse
@end

@interface CMFullNameValidationResponse : CMObject

/* True if the validation operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Possible values are: ValidFirstName, ValidUnknownFirstName, InvalidSpamInput, InvalidCharacters, InvalidEmpty [optional]
 */
@property(nonatomic) NSString* validationResultFirstName;
/* Possible values are: ValidLastName, ValidUnknownLastName, InvalidSpamInput, InvalidCharacters, InvalidEmpty [optional]
 */
@property(nonatomic) NSString* validationResultLastName;
/* The person's title (if supplied), e.g. \"Mr.\" or \"Ms.\" [optional]
 */
@property(nonatomic) NSString* title;
/* The first name (given name) [optional]
 */
@property(nonatomic) NSString* firstName;
/* The middle name(s); if there are multiple names they will be separated by spaces [optional]
 */
@property(nonatomic) NSString* middleName;
/* The last name (surname) [optional]
 */
@property(nonatomic) NSString* lastName;
/* Nickname (if supplied) [optional]
 */
@property(nonatomic) NSString* nickName;
/* Suffix to the name, e.g. \"Jr.\" or \"Sr.\" [optional]
 */
@property(nonatomic) NSString* suffix;
/* The full display name of the name [optional]
 */
@property(nonatomic) NSString* displayName;

@end