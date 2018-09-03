#import "CMDrawTextInstance.h"

@implementation CMDrawTextInstance

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"text": @"Text", @"fontFamilyName": @"FontFamilyName", @"fontSize": @"FontSize", @"color": @"Color", @"X": @"X", @"Y": @"Y", @"width": @"Width", @"height": @"Height" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"text", @"fontFamilyName", @"fontSize", @"color", @"X", @"Y", @"width", @"height"];
  return [optionalProperties containsObject:propertyName];
}

@end
