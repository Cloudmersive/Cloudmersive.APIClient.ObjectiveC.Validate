#import "CMFullEmailValidationResponse.h"

@implementation CMFullEmailValidationResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"validAddress": @"ValidAddress", @"mailServerUsedForValidation": @"MailServerUsedForValidation", @"validSyntax": @"Valid_Syntax", @"validDomain": @"Valid_Domain", @"validSMTP": @"Valid_SMTP", @"isCatchallDomain": @"IsCatchallDomain", @"domain": @"Domain", @"isFreeEmailProvider": @"IsFreeEmailProvider", @"isDisposable": @"IsDisposable" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"validAddress", @"mailServerUsedForValidation", @"validSyntax", @"validDomain", @"validSMTP", @"isCatchallDomain", @"domain", @"isFreeEmailProvider", @"isDisposable"];
  return [optionalProperties containsObject:propertyName];
}

@end
