#import "CMPhoneNumberValidationResponse.h"

@implementation CMPhoneNumberValidationResponse

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"isValid": @"IsValid", @"successful": @"Successful", @"phoneNumberType": @"PhoneNumberType", @"e164Format": @"E164Format", @"internationalFormat": @"InternationalFormat", @"nationalFormat": @"NationalFormat", @"countryCode": @"CountryCode", @"countryName": @"CountryName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"isValid", @"successful", @"phoneNumberType", @"e164Format", @"internationalFormat", @"nationalFormat", @"countryCode", @"countryName"];
  return [optionalProperties containsObject:propertyName];
}

@end
