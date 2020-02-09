#import "CMWhoisResponse.h"

@implementation CMWhoisResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"validDomain": @"ValidDomain", @"registrantName": @"RegistrantName", @"registrantOrganization": @"RegistrantOrganization", @"registrantEmail": @"RegistrantEmail", @"registrantStreetNumber": @"RegistrantStreetNumber", @"registrantStreet": @"RegistrantStreet", @"registrantCity": @"RegistrantCity", @"registrantStateOrProvince": @"RegistrantStateOrProvince", @"registrantPostalCode": @"RegistrantPostalCode", @"registrantCountry": @"RegistrantCountry", @"registrantRawAddress": @"RegistrantRawAddress", @"registrantTelephone": @"RegistrantTelephone", @"whoisServer": @"WhoisServer", @"rawTextRecord": @"RawTextRecord", @"createdDt": @"CreatedDt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"validDomain", @"registrantName", @"registrantOrganization", @"registrantEmail", @"registrantStreetNumber", @"registrantStreet", @"registrantCity", @"registrantStateOrProvince", @"registrantPostalCode", @"registrantCountry", @"registrantRawAddress", @"registrantTelephone", @"whoisServer", @"rawTextRecord", @"createdDt"];
  return [optionalProperties containsObject:propertyName];
}

@end
