#import "CMLeadEnrichmentRequest.h"

@implementation CMLeadEnrichmentRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"contactBusinessEmail": @"ContactBusinessEmail", @"contactFirstName": @"ContactFirstName", @"contactLastName": @"ContactLastName", @"companyName": @"CompanyName", @"companyDomainName": @"CompanyDomainName", @"companyHouseNumber": @"CompanyHouseNumber", @"companyStreet": @"CompanyStreet", @"companyCity": @"CompanyCity", @"companyStateOrProvince": @"CompanyStateOrProvince", @"companyPostalCode": @"CompanyPostalCode", @"companyCountry": @"CompanyCountry", @"companyCountryCode": @"CompanyCountryCode", @"companyTelephone": @"CompanyTelephone", @"companyVATNumber": @"CompanyVATNumber" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"contactBusinessEmail", @"contactFirstName", @"contactLastName", @"companyName", @"companyDomainName", @"companyHouseNumber", @"companyStreet", @"companyCity", @"companyStateOrProvince", @"companyPostalCode", @"companyCountry", @"companyCountryCode", @"companyTelephone", @"companyVATNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end
