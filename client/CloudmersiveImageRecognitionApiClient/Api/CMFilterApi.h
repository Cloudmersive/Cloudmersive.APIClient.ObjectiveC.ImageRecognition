#import <Foundation/Foundation.h>
#import "CMApi.h"

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



@interface CMFilterApi: NSObject <CMApi>

extern NSString* kCMFilterApiErrorDomain;
extern NSInteger kCMFilterApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Convert image to black-and-white grayscale
/// Remove color from the image by converting to a grayscale, black-and-white image
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterBlackAndWhiteWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Despeckle to remove point noise from the image
/// Remove point noise / despeckle the input image
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterDespeckleWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Detect and highlight edges in an image
/// Perform an edge detection operation on the input image
///
/// @param radius Radius in pixels of the edge detection operation; a larger radius will produce a greater effect
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterEdgeDetectWithRadius: (NSNumber*) radius
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Emboss an image
/// Perform an emboss operation on the input image
///
/// @param radius Radius in pixels of the emboss operation; a larger radius will produce a greater effect
/// @param sigma Sigma, or variance, of the emboss operation
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterEmbossWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Perform a guassian blur on the input image
/// Perform a gaussian blur on the input image
///
/// @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect
/// @param sigma Sigma, or variance, of the gaussian blur operation
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterGaussianBlurWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Perform a motion blur on the input image
/// Perform a motion blur on the input image at a specific angle
///
/// @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect
/// @param sigma Sigma, or variance, of the motion blur operation
/// @param angle Angle of the motion blur in degrees
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterMotionBlurWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    angle: (NSNumber*) angle
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Posterize the image by reducing distinct colors
/// Reduce the unique number of colors in the image to the specified level
///
/// @param levels Number of unique colors to retain in the output image
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterPosterizeWithLevels: (NSNumber*) levels
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Swirl distort the image
/// Swirl distort the image by the specified number of degrees
///
/// @param degrees Degrees of swirl
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) filterSwirlWithDegrees: (NSNumber*) degrees
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;



@end