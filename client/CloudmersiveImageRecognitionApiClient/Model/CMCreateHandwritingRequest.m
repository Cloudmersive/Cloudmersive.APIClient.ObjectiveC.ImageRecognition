#import "CMCreateHandwritingRequest.h"

@implementation CMCreateHandwritingRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"textInput": @"TextInput", @"targetWidth": @"TargetWidth", @"strokeWidth": @"StrokeWidth", @"color": @"Color" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"textInput", @"targetWidth", @"strokeWidth", @"color"];
  return [optionalProperties containsObject:propertyName];
}

@end
