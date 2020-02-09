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


#import "CMColorResult.h"
@protocol CMColorResult;
@class CMColorResult;



@protocol CMDominantColorResult
@end

@interface CMDominantColorResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Dominant colors in the image, in order where most dominant color is in the first index position (0), the second most-dominant color is in index position 1 and so on [optional]
 */
@property(nonatomic) NSArray<CMColorResult>* dominantColors;

@end