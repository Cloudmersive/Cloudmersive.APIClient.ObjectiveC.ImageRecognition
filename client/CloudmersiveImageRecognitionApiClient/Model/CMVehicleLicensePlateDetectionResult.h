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


#import "CMDetectedLicensePlate.h"
@protocol CMDetectedLicensePlate;
@class CMDetectedLicensePlate;



@protocol CMVehicleLicensePlateDetectionResult
@end

@interface CMVehicleLicensePlateDetectionResult : CMObject

/* Was the image processed successfully? [optional]
 */
@property(nonatomic) NSNumber* successful;
/* License plates found in the image [optional]
 */
@property(nonatomic) NSArray<CMDetectedLicensePlate>* detectedLicensePlates;
/* The number of license plates detected in the image [optional]
 */
@property(nonatomic) NSNumber* detectedLicensePlateCount;

@end
