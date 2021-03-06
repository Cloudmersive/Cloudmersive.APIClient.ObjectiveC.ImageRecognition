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


#import "CMPersonWithAge.h"
@protocol CMPersonWithAge;
@class CMPersonWithAge;



@protocol CMAgeDetectionResult
@end

@interface CMAgeDetectionResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* People in the image annotated with age information [optional]
 */
@property(nonatomic) NSArray<CMPersonWithAge>* peopleWithAge;
/* Number of people identified in the image with an age [optional]
 */
@property(nonatomic) NSNumber* peopleIdentified;

@end
