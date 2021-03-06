#import "CMIPIntelligenceResponse.h"

@implementation CMIPIntelligenceResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"isBot": @"IsBot", @"isTorNode": @"IsTorNode", @"isThreat": @"IsThreat", @"isEU": @"IsEU", @"location": @"Location", @"currencyCode": @"CurrencyCode", @"currencyName": @"CurrencyName", @"regionArea": @"RegionArea", @"subregionArea": @"SubregionArea" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"isBot", @"isTorNode", @"isThreat", @"isEU", @"location", @"currencyCode", @"currencyName", @"regionArea", @"subregionArea"];
  return [optionalProperties containsObject:propertyName];
}

@end
