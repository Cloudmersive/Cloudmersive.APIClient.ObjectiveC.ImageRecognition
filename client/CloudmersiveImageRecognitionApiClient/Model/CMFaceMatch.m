#import "CMFaceMatch.h"

@implementation CMFaceMatch

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"leftX": @"LeftX", @"topY": @"TopY", @"rightX": @"RightX", @"bottomY": @"BottomY", @"highConfidenceMatch": @"HighConfidenceMatch", @"matchScore": @"MatchScore" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"leftX", @"topY", @"rightX", @"bottomY", @"highConfidenceMatch", @"matchScore"];
  return [optionalProperties containsObject:propertyName];
}

@end
