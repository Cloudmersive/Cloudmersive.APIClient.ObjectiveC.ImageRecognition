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


#import "CMFineTextItem.h"
@protocol CMFineTextItem;
@class CMFineTextItem;



@protocol CMFineTextDetectionResult
@end

@interface CMFineTextDetectionResult : CMObject

/* True if the operation was successful, false otherwise [optional]
 */
@property(nonatomic) NSNumber* successful;
/* Text items found in the input image [optional]
 */
@property(nonatomic) NSArray<CMFineTextItem>* textItems;
/* Count of text items found in the input image [optional]
 */
@property(nonatomic) NSNumber* textItemsCount;

@end
