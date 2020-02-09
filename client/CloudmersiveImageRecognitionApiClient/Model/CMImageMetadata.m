#import "CMImageMetadata.h"

@implementation CMImageMetadata

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"successful": @"Successful", @"isValidImage": @"IsValidImage", @"fileFormat": @"FileFormat", @"width": @"Width", @"height": @"Height", @"bitDepth": @"BitDepth", @"hasTransparency": @"HasTransparency", @"colorSpace": @"ColorSpace", @"exifProfileName": @"ExifProfileName", @"exifValues": @"ExifValues" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"successful", @"isValidImage", @"fileFormat", @"width", @"height", @"bitDepth", @"hasTransparency", @"colorSpace", @"exifProfileName", @"exifValues"];
  return [optionalProperties containsObject:propertyName];
}

@end
