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


#import "CMPolygonPoint.h"
@protocol CMPolygonPoint;
@class CMPolygonPoint;



@protocol CMDrawPolygonInstance
@end

@interface CMDrawPolygonInstance : CMObject

/* Border Color to use - can be a hex value (with #) or HTML common color name.  Transparent colors are supported. [optional]
 */
@property(nonatomic) NSString* borderColor;
/* Width in pixels of the border.  Pass in 0 to draw a polygon with no border [optional]
 */
@property(nonatomic) NSNumber* borderWidth;
/* Fill Color to use - can be a hex value (with #) or HTML common color name.  Transparent colors are supported.  Leave blank to not fill the polygon. [optional]
 */
@property(nonatomic) NSString* fillColor;
/* Points (vertices) which comprise the polygon; valid polygons must have at least 3 points [optional]
 */
@property(nonatomic) NSArray<CMPolygonPoint>* points;

@end
