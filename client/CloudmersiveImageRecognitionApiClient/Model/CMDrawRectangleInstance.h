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





@protocol CMDrawRectangleInstance
@end

@interface CMDrawRectangleInstance : CMObject

/* Border Color to use - can be a hex value (with #) or HTML common color name.  Transparent colors are supported. [optional]
 */
@property(nonatomic) NSString* borderColor;
/* Width in pixels of the border.  Pass in 0 to draw a rectangle with no border [optional]
 */
@property(nonatomic) NSNumber* borderWidth;
/* Fill Color to use - can be a hex value (with #) or HTML common color name.  Transparent colors are supported.  Leave blank to not fill the rectangle. [optional]
 */
@property(nonatomic) NSString* fillColor;
/* Pixel location of the left edge of the rectangle location [optional]
 */
@property(nonatomic) NSNumber* X;
/* Pixel location of the top edge of the rectangle location [optional]
 */
@property(nonatomic) NSNumber* Y;
/* Width in pixels of the rectangle [optional]
 */
@property(nonatomic) NSNumber* width;
/* Height in pixels of the rectangle [optional]
 */
@property(nonatomic) NSNumber* height;

@end
