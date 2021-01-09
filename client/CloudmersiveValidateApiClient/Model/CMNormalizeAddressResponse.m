#import "CMNormalizeAddressResponse.h"

@implementation CMNormalizeAddressResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"validAddress": @"ValidAddress", @"building": @"Building", @"streetNumber": @"StreetNumber", @"street": @"Street", @"city": @"City", @"stateOrProvince": @"StateOrProvince", @"postalCode": @"PostalCode", @"countryFullName": @"CountryFullName", @"iSOTwoLetterCode": @"ISOTwoLetterCode", @"latitude": @"Latitude", @"longitude": @"Longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"validAddress", @"building", @"streetNumber", @"street", @"city", @"stateOrProvince", @"postalCode", @"countryFullName", @"iSOTwoLetterCode", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
