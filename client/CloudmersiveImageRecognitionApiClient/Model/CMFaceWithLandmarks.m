#import "CMFaceWithLandmarks.h"

@implementation CMFaceWithLandmarks

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"leftX": @"LeftX", @"topY": @"TopY", @"rightX": @"RightX", @"bottomY": @"BottomY", @"leftEyebrow": @"LeftEyebrow", @"rightEyebrow": @"RightEyebrow", @"leftEye": @"LeftEye", @"rightEye": @"RightEye", @"bottomAndSidesOfFace": @"BottomAndSidesOfFace", @"noseBridge": @"NoseBridge", @"noseBottom": @"NoseBottom", @"lipsInnerOutline": @"LipsInnerOutline", @"lipsOuterOutline": @"LipsOuterOutline" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"leftX", @"topY", @"rightX", @"bottomY", @"leftEyebrow", @"rightEyebrow", @"leftEye", @"rightEye", @"bottomAndSidesOfFace", @"noseBridge", @"noseBottom", @"lipsInnerOutline", @"lipsOuterOutline"];
  return [optionalProperties containsObject:propertyName];
}

@end
