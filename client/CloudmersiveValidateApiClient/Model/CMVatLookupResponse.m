#import "CMVatLookupResponse.h"

@implementation CMVatLookupResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"countryCode": @"CountryCode", @"vatNumber": @"VatNumber", @"isValid": @"IsValid", @"businessName": @"BusinessName", @"businessAddress": @"BusinessAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"countryCode", @"vatNumber", @"isValid", @"businessName", @"businessAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
