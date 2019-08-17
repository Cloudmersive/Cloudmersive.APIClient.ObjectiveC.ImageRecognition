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


#import "CMPersonWithGender.h"
@protocol CMPersonWithGender;
@class CMPersonWithGender;



@protocol CMGenderDetectionResult
@end

@interface CMGenderDetectionResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* People in the image annotated with gender information [optional]
 */
@property(nonatomic) NSArray<CMPersonWithGender>* personWithGender;
/* Number of people identified in the image with a gender [optional]
 */
@property(nonatomic) NSNumber* peopleIdentified;

@end
