#import "CMUserAgentValidateResponse.h"

@implementation CMUserAgentValidateResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"isBot": @"IsBot", @"botName": @"BotName", @"botURL": @"BotURL", @"operatingSystem": @"OperatingSystem", @"operatingSystemCPUPlatform": @"OperatingSystemCPUPlatform", @"operatingSystemVersion": @"OperatingSystemVersion", @"deviceType": @"DeviceType", @"deviceBrandName": @"DeviceBrandName", @"deviceModel": @"DeviceModel", @"browserName": @"BrowserName", @"browserVersion": @"BrowserVersion", @"browserEngineName": @"BrowserEngineName", @"browserEngineVersion": @"BrowserEngineVersion" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"isBot", @"botName", @"botURL", @"operatingSystem", @"operatingSystemCPUPlatform", @"operatingSystemVersion", @"deviceType", @"deviceBrandName", @"deviceModel", @"browserName", @"browserVersion", @"browserEngineName", @"browserEngineVersion"];
  return [optionalProperties containsObject:propertyName];
}

@end
