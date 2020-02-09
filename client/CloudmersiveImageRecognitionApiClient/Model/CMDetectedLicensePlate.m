#import "CMDetectedLicensePlate.h"

@implementation CMDetectedLicensePlate

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"licensePlateTextBestMatch": @"LicensePlateText_BestMatch", @"licensePlateTextRunnerUp": @"LicensePlateText_RunnerUp", @"locationX": @"LocationX", @"locationY": @"LocationY", @"width": @"Width", @"height": @"Height", @"licensePlateRecognitionConfidenceLevel": @"LicensePlateRecognitionConfidenceLevel" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"licensePlateTextBestMatch", @"licensePlateTextRunnerUp", @"locationX", @"locationY", @"width", @"height", @"licensePlateRecognitionConfidenceLevel"];
  return [optionalProperties containsObject:propertyName];
}

@end
