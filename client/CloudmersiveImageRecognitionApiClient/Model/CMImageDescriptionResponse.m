#import "CMImageDescriptionResponse.h"

@implementation CMImageDescriptionResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"highconfidence": @"Highconfidence", @"bestOutcome": @"BestOutcome", @"runnerUpOutcome": @"RunnerUpOutcome" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"highconfidence", @"bestOutcome", @"runnerUpOutcome"];
  return [optionalProperties containsObject:propertyName];
}

@end
