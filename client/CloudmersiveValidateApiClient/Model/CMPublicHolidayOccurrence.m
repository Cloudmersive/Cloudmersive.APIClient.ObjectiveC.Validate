#import "CMPublicHolidayOccurrence.h"

@implementation CMPublicHolidayOccurrence

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"englishName": @"EnglishName", @"localName": @"LocalName", @"occurrenceDate": @"OccurrenceDate", @"holidayType": @"HolidayType", @"nationwaide": @"Nationwaide" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"englishName", @"localName", @"occurrenceDate", @"holidayType", @"nationwaide"];
  return [optionalProperties containsObject:propertyName];
}

@end
