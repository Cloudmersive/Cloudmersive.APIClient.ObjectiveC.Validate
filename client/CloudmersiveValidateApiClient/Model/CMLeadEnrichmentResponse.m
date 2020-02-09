#import "CMLeadEnrichmentResponse.h"

@implementation CMLeadEnrichmentResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"leadType": @"LeadType", @"contactBusinessEmail": @"ContactBusinessEmail", @"contactFirstName": @"ContactFirstName", @"contactLastName": @"ContactLastName", @"contactGender": @"ContactGender", @"companyName": @"CompanyName", @"companyDomainName": @"CompanyDomainName", @"companyHouseNumber": @"CompanyHouseNumber", @"companyStreet": @"CompanyStreet", @"companyCity": @"CompanyCity", @"companyStateOrProvince": @"CompanyStateOrProvince", @"companyPostalCode": @"CompanyPostalCode", @"companyCountry": @"CompanyCountry", @"companyCountryCode": @"CompanyCountryCode", @"companyTelephone": @"CompanyTelephone", @"companyVATNumber": @"CompanyVATNumber", @"employeeCount": @"EmployeeCount" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"leadType", @"contactBusinessEmail", @"contactFirstName", @"contactLastName", @"contactGender", @"companyName", @"companyDomainName", @"companyHouseNumber", @"companyStreet", @"companyCity", @"companyStateOrProvince", @"companyPostalCode", @"companyCountry", @"companyCountryCode", @"companyTelephone", @"companyVATNumber", @"employeeCount"];
  return [optionalProperties containsObject:propertyName];
}

@end
