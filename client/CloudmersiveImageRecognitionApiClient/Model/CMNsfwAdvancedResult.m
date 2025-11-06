#import "CMNsfwAdvancedResult.h"

@implementation CMNsfwAdvancedResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"cleanResult": @"CleanResult", @"containsNudity": @"ContainsNudity", @"containsGraphicViolence": @"ContainsGraphicViolence", @"containsNonGraphicViolence": @"ContainsNonGraphicViolence", @"containsSelfHarm": @"ContainsSelfHarm", @"containsHate": @"ContainsHate", @"containsPotentialIllegalActivity": @"ContainsPotentialIllegalActivity", @"containsMedicalImagery": @"ContainsMedicalImagery", @"containsProfanity": @"ContainsProfanity", @"score": @"Score", @"classificationOutcome": @"ClassificationOutcome" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"cleanResult", @"containsNudity", @"containsGraphicViolence", @"containsNonGraphicViolence", @"containsSelfHarm", @"containsHate", @"containsPotentialIllegalActivity", @"containsMedicalImagery", @"containsProfanity", @"score", @"classificationOutcome"];
  return [optionalProperties containsObject:propertyName];
}

@end
