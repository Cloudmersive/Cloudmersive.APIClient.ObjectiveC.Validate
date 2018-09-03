#import "CMGeolocateResponse.h"

@implementation CMGeolocateResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"countryCode": @"CountryCode", @"countryName": @"CountryName", @"city": @"City", @"regionCode": @"RegionCode", @"regionName": @"RegionName", @"zipCode": @"ZipCode", @"timezoneStandardName": @"TimezoneStandardName", @"latitude": @"Latitude", @"longitude": @"Longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"countryCode", @"countryName", @"city", @"regionCode", @"regionName", @"zipCode", @"timezoneStandardName", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
