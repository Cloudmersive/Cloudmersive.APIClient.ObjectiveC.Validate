#import "CMValidateIdentifierRequest.h"

@implementation CMValidateIdentifierRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"input": @"Input", @"allowWhitespace": @"AllowWhitespace", @"allowHyphens": @"AllowHyphens", @"allowUnderscore": @"AllowUnderscore", @"allowNumbers": @"AllowNumbers", @"allowPeriods": @"AllowPeriods", @"maxLength": @"MaxLength", @"minLength": @"MinLength" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"input", @"allowWhitespace", @"allowHyphens", @"allowUnderscore", @"allowNumbers", @"allowPeriods", @"maxLength", @"minLength"];
  return [optionalProperties containsObject:propertyName];
}

@end
