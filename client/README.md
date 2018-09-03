# CloudmersiveImageRecognitionApiClient

Image Recognition and Processing APIs let you use Machine Learning to recognize and process images, and also perform useful image modification operations.

This ObjC package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v1
- Package version: 
- Build package: io.swagger.codegen.languages.ObjcClientCodegen

## Requirements

The SDK requires [**ARC (Automatic Reference Counting)**](http://stackoverflow.com/questions/7778356/how-to-enable-disable-automatic-reference-counting) to be enabled in the Xcode project.

## Installation & Usage
### Install from Github using [CocoaPods](https://cocoapods.org/)

Add the following to the Podfile:

```ruby
pod 'CloudmersiveImageRecognitionApiClient', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'
```

To specify a particular branch, append `, :branch => 'branch-name-here'`

To specify a particular commit, append `, :commit => '11aa22'`

### Install from local path using [CocoaPods](https://cocoapods.org/)

Put the SDK under your project folder (e.g. /path/to/objc_project/Vendor/CloudmersiveImageRecognitionApiClient) and then add the following to the Podfile:

```ruby
pod 'CloudmersiveImageRecognitionApiClient', :path => 'Vendor/CloudmersiveImageRecognitionApiClient'
```

### Usage

Import the following:

```objc
#import <CloudmersiveImageRecognitionApiClient/CMApiClient.h>
#import <CloudmersiveImageRecognitionApiClient/CMDefaultConfiguration.h>
// load models
#import <CloudmersiveImageRecognitionApiClient/CMAgeDetectionResult.h>
#import <CloudmersiveImageRecognitionApiClient/CMDetectedLicensePlate.h>
#import <CloudmersiveImageRecognitionApiClient/CMDetectedObject.h>
#import <CloudmersiveImageRecognitionApiClient/CMDrawRectangleInstance.h>
#import <CloudmersiveImageRecognitionApiClient/CMDrawRectangleRequest.h>
#import <CloudmersiveImageRecognitionApiClient/CMDrawTextInstance.h>
#import <CloudmersiveImageRecognitionApiClient/CMDrawTextRequest.h>
#import <CloudmersiveImageRecognitionApiClient/CMFace.h>
#import <CloudmersiveImageRecognitionApiClient/CMFaceLocateResponse.h>
#import <CloudmersiveImageRecognitionApiClient/CMImageDescriptionResponse.h>
#import <CloudmersiveImageRecognitionApiClient/CMNsfwResult.h>
#import <CloudmersiveImageRecognitionApiClient/CMObjectDetectionResult.h>
#import <CloudmersiveImageRecognitionApiClient/CMPersonWithAge.h>
#import <CloudmersiveImageRecognitionApiClient/CMRecognitionOutcome.h>
#import <CloudmersiveImageRecognitionApiClient/CMVehicleLicensePlateDetectionResult.h>
// load API classes for accessing endpoints
#import <CloudmersiveImageRecognitionApiClient/CMArtisticApi.h>
#import <CloudmersiveImageRecognitionApiClient/CMEditApi.h>
#import <CloudmersiveImageRecognitionApiClient/CMFaceApi.h>
#import <CloudmersiveImageRecognitionApiClient/CMNsfwApi.h>
#import <CloudmersiveImageRecognitionApiClient/CMRecognizeApi.h>
#import <CloudmersiveImageRecognitionApiClient/CMResizeApi.h>

```

## Recommendation

It's recommended to create an instance of ApiClient per thread in a multi-threaded environment to avoid any potential issues.

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```objc

CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* *style = @"style_example"; // The style of the painting to apply.  To start, try \"udnie\" a painting style.  Possible values are: \"udnie\", \"wave\", \"la_muse\", \"rain_princess\".
NSURL* *imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMArtisticApi *apiInstance = [[CMArtisticApi alloc] init];

// Transform an image into an artistic painting automatically
[apiInstance artisticPaintingWithStyle:style
    imageFile:imageFile
              completionHandler: ^(NSData* output, NSError* error) {
                            if (output) {
                                NSLog(@"%@", output);
                            }
                            if (error) {
                                NSLog(@"Error: %@", error);
                            }
                        }];

```

## Documentation for API Endpoints

All URIs are relative to *https://api.cloudmersive.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CMArtisticApi* | [**artisticPainting**](docs/CMArtisticApi.md#artisticpainting) | **POST** /image/artistic/painting/{style} | Transform an image into an artistic painting automatically
*CMEditApi* | [**editCompositeBasic**](docs/CMEditApi.md#editcompositebasic) | **POST** /image/edit/composite/{location} | Composite two images together
*CMEditApi* | [**editDrawRectangle**](docs/CMEditApi.md#editdrawrectangle) | **POST** /image/edit/draw/rectangle | Draw rectangle onto an image
*CMEditApi* | [**editDrawText**](docs/CMEditApi.md#editdrawtext) | **POST** /image/edit/draw/text | Draw text onto an image
*CMFaceApi* | [**faceCropFirst**](docs/CMFaceApi.md#facecropfirst) | **POST** /image/face/crop/first | Crop image to face (square)
*CMFaceApi* | [**faceCropFirstRound**](docs/CMFaceApi.md#facecropfirstround) | **POST** /image/face/crop/first/round | Crop image to face (round)
*CMFaceApi* | [**faceDetectAge**](docs/CMFaceApi.md#facedetectage) | **POST** /image/face/detect-age | Detect the age of people in an image
*CMFaceApi* | [**faceLocate**](docs/CMFaceApi.md#facelocate) | **POST** /image/face/locate | Find faces in an image
*CMNsfwApi* | [**nsfwClassify**](docs/CMNsfwApi.md#nsfwclassify) | **POST** /image/nsfw/classify | Not safe for work (NSFW) racy content classification
*CMRecognizeApi* | [**recognizeDescribe**](docs/CMRecognizeApi.md#recognizedescribe) | **POST** /image/recognize/describe | Describe an image in natural language
*CMRecognizeApi* | [**recognizeDetectAndUnskewDocument**](docs/CMRecognizeApi.md#recognizedetectandunskewdocument) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
*CMRecognizeApi* | [**recognizeDetectObjects**](docs/CMRecognizeApi.md#recognizedetectobjects) | **POST** /image/recognize/detect-objects | Detect objects, including types and locations, in an image
*CMRecognizeApi* | [**recognizeDetectPeople**](docs/CMRecognizeApi.md#recognizedetectpeople) | **POST** /image/recognize/detect-people | Detect people, including locations, in an image
*CMRecognizeApi* | [**recognizeDetectVehicleLicensePlates**](docs/CMRecognizeApi.md#recognizedetectvehiclelicenseplates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image
*CMResizeApi* | [**resizePost**](docs/CMResizeApi.md#resizepost) | **POST** /image/resize/preserveAspectRatio/{maxWidth}/{maxHeight} | Resize an image with parameters


## Documentation For Models

 - [CMAgeDetectionResult](docs/CMAgeDetectionResult.md)
 - [CMDetectedLicensePlate](docs/CMDetectedLicensePlate.md)
 - [CMDetectedObject](docs/CMDetectedObject.md)
 - [CMDrawRectangleInstance](docs/CMDrawRectangleInstance.md)
 - [CMDrawRectangleRequest](docs/CMDrawRectangleRequest.md)
 - [CMDrawTextInstance](docs/CMDrawTextInstance.md)
 - [CMDrawTextRequest](docs/CMDrawTextRequest.md)
 - [CMFace](docs/CMFace.md)
 - [CMFaceLocateResponse](docs/CMFaceLocateResponse.md)
 - [CMImageDescriptionResponse](docs/CMImageDescriptionResponse.md)
 - [CMNsfwResult](docs/CMNsfwResult.md)
 - [CMObjectDetectionResult](docs/CMObjectDetectionResult.md)
 - [CMPersonWithAge](docs/CMPersonWithAge.md)
 - [CMRecognitionOutcome](docs/CMRecognitionOutcome.md)
 - [CMVehicleLicensePlateDetectionResult](docs/CMVehicleLicensePlateDetectionResult.md)


## Documentation For Authorization


## Apikey

- **Type**: API key
- **API key parameter name**: Apikey
- **Location**: HTTP header


## Author



