#import <Foundation/Foundation.h>
#import "CMFineTextDetectionResult.h"
#import "CMImageDescriptionResponse.h"
#import "CMObjectDetectionResult.h"
#import "CMTextDetectionResult.h"
#import "CMVehicleLicensePlateDetectionResult.h"
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



@interface CMRecognizeApi: NSObject <CMApi>

extern NSString* kCMRecognizeApiErrorDomain;
extern NSInteger kCMRecognizeApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Describe an image in natural language
/// Generate an English language text description of the image as a sentence.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return CMImageDescriptionResponse*
-(NSURLSessionTask*) recognizeDescribeWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMImageDescriptionResponse* output, NSError* error)) handler;


/// Detect and unskew a photo of a document
/// Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// @param postProcessingEffect Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). (optional)
/// 
///  code:200 message:"OK"
///
/// @return NSData*
-(NSURLSessionTask*) recognizeDetectAndUnskewDocumentWithImageFile: (NSURL*) imageFile
    postProcessingEffect: (NSString*) postProcessingEffect
    completionHandler: (void (^)(NSData* output, NSError* error)) handler;


/// Detect objects, including types and locations, in an image
/// Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return CMObjectDetectionResult*
-(NSURLSessionTask*) recognizeDetectObjectsWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMObjectDetectionResult* output, NSError* error)) handler;


/// Detect people, including locations, in an image
/// Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return CMObjectDetectionResult*
-(NSURLSessionTask*) recognizeDetectPeopleWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMObjectDetectionResult* output, NSError* error)) handler;


/// Detect fine text in a photo of a document
/// Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return CMFineTextDetectionResult*
-(NSURLSessionTask*) recognizeDetectTextFineWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMFineTextDetectionResult* output, NSError* error)) handler;


/// Detect large text in a photo
/// Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.
///
/// 
///  code:200 message:"OK"
///
/// @return CMTextDetectionResult*
-(NSURLSessionTask*) recognizeDetectTextLargeWithCompletionHandler: 
    (void (^)(CMTextDetectionResult* output, NSError* error)) handler;


/// Detect vehicle license plates in an image
/// Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.
///
/// @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
/// 
///  code:200 message:"OK"
///
/// @return CMVehicleLicensePlateDetectionResult*
-(NSURLSessionTask*) recognizeDetectVehicleLicensePlatesWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMVehicleLicensePlateDetectionResult* output, NSError* error)) handler;



@end
