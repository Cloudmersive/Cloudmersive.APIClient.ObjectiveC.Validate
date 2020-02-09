#import "CMValidateCountryResponse.h"

@implementation CMValidateCountryResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"countryFullName": @"CountryFullName", @"iSOTwoLetterCode": @"ISOTwoLetterCode", @"fIPSTwoLetterCode": @"FIPSTwoLetterCode", @"threeLetterCode": @"ThreeLetterCode", @"timezones": @"Timezones" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"countryFullName", @"iSOTwoLetterCode", @"fIPSTwoLetterCode", @"threeLetterCode", @"timezones"];
  return [optionalProperties containsObject:propertyName];
}

@end
