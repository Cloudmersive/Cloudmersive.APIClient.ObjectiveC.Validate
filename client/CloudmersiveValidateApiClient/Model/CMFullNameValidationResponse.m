#import "CMFullNameValidationResponse.h"

@implementation CMFullNameValidationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"validationResultFirstName": @"ValidationResult_FirstName", @"validationResultLastName": @"ValidationResult_LastName", @"title": @"Title", @"firstName": @"FirstName", @"middleName": @"MiddleName", @"lastName": @"LastName", @"nickName": @"NickName", @"suffix": @"Suffix", @"displayName": @"DisplayName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"validationResultFirstName", @"validationResultLastName", @"title", @"firstName", @"middleName", @"lastName", @"nickName", @"suffix", @"displayName"];
  return [optionalProperties containsObject:propertyName];
}

@end
