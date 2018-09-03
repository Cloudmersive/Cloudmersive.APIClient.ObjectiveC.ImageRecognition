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





@protocol CMDetectedObject
@end

@interface CMDetectedObject : CMObject

/* Class of the object.  Example values are \"person\", \"car\", \"dining table\", etc. [optional]
 */
@property(nonatomic) NSString* objectClassName;
/* Height, in pixels, of the object [optional]
 */
@property(nonatomic) NSNumber* height;
/* Width, in pixels, of the object [optional]
 */
@property(nonatomic) NSNumber* width;
/* Confidence score of detected object; possible values are between 0.0 and 1.0; values closer to 1.0 are higher confidence [optional]
 */
@property(nonatomic) NSNumber* score;
/* X location, in pixels, of the left side location of the object, with the right side being X + Width [optional]
 */
@property(nonatomic) NSNumber* X;
/* Y location, in pixels, of the top side location of the object, with the bottom side being Y + Height [optional]
 */
@property(nonatomic) NSNumber* Y;

@end
