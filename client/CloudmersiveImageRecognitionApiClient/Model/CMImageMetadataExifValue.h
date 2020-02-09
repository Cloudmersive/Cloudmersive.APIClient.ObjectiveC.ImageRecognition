#import <Foundation/Foundation.h>
#import "CMObject.h"

/**
* imageapi
* Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol CMImageMetadataExifValue
@end

@interface CMImageMetadataExifValue : CMObject

/* Tag name for the EXIF value [optional]
 */
@property(nonatomic) NSString* tag;
/* Date type of the EXIF value [optional]
 */
@property(nonatomic) NSString* dataType;
/* Value, formatted as a string of the EXIF value [optional]
 */
@property(nonatomic) NSString* dataValue;

@end
