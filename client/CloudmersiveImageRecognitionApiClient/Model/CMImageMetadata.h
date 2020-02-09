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


#import "CMImageMetadataExifValue.h"
@protocol CMImageMetadataExifValue;
@class CMImageMetadataExifValue;



@protocol CMImageMetadata
@end

@interface CMImageMetadata : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* True if the input image is a valid image file, false otherwise [optional]
 */
@property(nonatomic) NSNumber* isValidImage;
/* File format of the image [optional]
 */
@property(nonatomic) NSString* fileFormat;
/* Width of the image in pixels [optional]
 */
@property(nonatomic) NSNumber* width;
/* Height of the image in pixels [optional]
 */
@property(nonatomic) NSNumber* height;
/* Bits per pixel [optional]
 */
@property(nonatomic) NSNumber* bitDepth;
/* True if the image has transaprency in the form of an alpha channel, false otherwise [optional]
 */
@property(nonatomic) NSNumber* hasTransparency;
/* Color space of the image [optional]
 */
@property(nonatomic) NSString* colorSpace;
/* Name of the EXIF profile used [optional]
 */
@property(nonatomic) NSString* exifProfileName;
/* EXIF tags and values embedded in the image [optional]
 */
@property(nonatomic) NSArray<CMImageMetadataExifValue>* exifValues;

@end
