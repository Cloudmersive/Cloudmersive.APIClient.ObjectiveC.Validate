#import "CMCountryDetails.h"

@implementation CMCountryDetails

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"countryName": @"CountryName", @"threeLetterCode": @"ThreeLetterCode", @"iSOTwoLetterCode": @"ISOTwoLetterCode", @"isEuropeanUnionMember": @"IsEuropeanUnionMember", @"iSOCurrencyCode": @"ISOCurrencyCode", @"currencySymbol": @"CurrencySymbol", @"currencyEnglishName": @"CurrencyEnglishName", @"region": @"Region", @"subregion": @"Subregion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"countryName", @"threeLetterCode", @"iSOTwoLetterCode", @"isEuropeanUnionMember", @"iSOCurrencyCode", @"currencySymbol", @"currencyEnglishName", @"region", @"subregion"];
  return [optionalProperties containsObject:propertyName];
}

@end
