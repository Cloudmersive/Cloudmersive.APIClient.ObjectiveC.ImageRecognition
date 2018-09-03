#import "CMDrawRectangleInstance.h"

@implementation CMDrawRectangleInstance

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"borderColor": @"BorderColor", @"borderWidth": @"BorderWidth", @"fillColor": @"FillColor", @"X": @"X", @"Y": @"Y", @"width": @"Width", @"height": @"Height" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"borderColor", @"borderWidth", @"fillColor", @"X", @"Y", @"width", @"height"];
  return [optionalProperties containsObject:propertyName];
}

@end
