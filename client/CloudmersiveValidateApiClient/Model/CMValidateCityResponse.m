#import "CMValidateCityResponse.h"

@implementation CMValidateCityResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"validCity": @"ValidCity", @"city": @"City", @"stateOrProvince": @"StateOrProvince", @"latitude": @"Latitude", @"longitude": @"Longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"validCity", @"city", @"stateOrProvince", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
