#import "CMFineTextItem.h"

@implementation CMFineTextItem

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"detectedText": @"DetectedText", @"topLeftX": @"TopLeftX", @"topLeftY": @"TopLeftY", @"topRightX": @"TopRightX", @"topRightY": @"TopRightY", @"bottomLeftX": @"BottomLeftX", @"bottomLeftY": @"BottomLeftY", @"bottomRightX": @"BottomRightX", @"bottomRightY": @"BottomRightY", @"width": @"Width", @"height": @"Height", @"angle": @"Angle" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"detectedText", @"topLeftX", @"topLeftY", @"topRightX", @"topRightY", @"bottomLeftX", @"bottomLeftY", @"bottomRightX", @"bottomRightY", @"width", @"height", @"angle"];
  return [optionalProperties containsObject:propertyName];
}

@end
