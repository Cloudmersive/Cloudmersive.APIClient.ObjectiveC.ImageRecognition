# CMFaceApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faceCompare**](CMFaceApi.md#facecompare) | **POST** /image/face/compare-and-match | Compare and match faces
[**faceCropFirst**](CMFaceApi.md#facecropfirst) | **POST** /image/face/crop/first | Crop image to face (square)
[**faceCropFirstRound**](CMFaceApi.md#facecropfirstround) | **POST** /image/face/crop/first/round | Crop image to face (round)
[**faceDetectAge**](CMFaceApi.md#facedetectage) | **POST** /image/face/detect-age | Detect the age of people in an image
[**faceDetectGender**](CMFaceApi.md#facedetectgender) | **POST** /image/face/detect-gender | Detect the gender of people in an image
[**faceLocate**](CMFaceApi.md#facelocate) | **POST** /image/face/locate | Find faces in an image
[**faceLocateWithLandmarks**](CMFaceApi.md#facelocatewithlandmarks) | **POST** /image/face/locate-with-landmarks | Find faces and face landmarks (eyes, eye brows, nose, mouth) in an image


# **faceCompare**
```objc
-(NSURLSessionTask*) faceCompareWithInputImage: (NSURL*) inputImage
    matchFace: (NSURL*) matchFace
        completionHandler: (void (^)(CMFaceCompareResponse* output, NSError* error)) handler;
```

Compare and match faces

Find the faces in an input image, and compare against a reference image to determine if there is a match against the face in the reference image.  The reference image (second parameter) should contain exactly one face.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on; this image can contain one or more faces which will be matched against face provided in the second image.  Common file formats such as PNG, JPEG are supported.
NSURL* matchFace = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image of a single face to compare and match against.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Compare and match faces
[apiInstance faceCompareWithInputImage:inputImage
              matchFace:matchFace
          completionHandler: ^(CMFaceCompareResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceCompare: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputImage** | **NSURL***| Image file to perform the operation on; this image can contain one or more faces which will be matched against face provided in the second image.  Common file formats such as PNG, JPEG are supported. | 
 **matchFace** | **NSURL***| Image of a single face to compare and match against. | 

### Return type

[**CMFaceCompareResponse***](CMFaceCompareResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceCropFirst**
```objc
-(NSURLSessionTask*) faceCropFirstWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Crop image to face (square)

Crop an image to the face (rectangular crop).  If there is more than one face present, choose the first one.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Crop image to face (square)
[apiInstance faceCropFirstWithImageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceCropFirst: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceCropFirstRound**
```objc
-(NSURLSessionTask*) faceCropFirstRoundWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Crop image to face (round)

Crop an image to the face (circular/round crop).  If there is more than one face present, choose the first one.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Crop image to face (round)
[apiInstance faceCropFirstRoundWithImageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceCropFirstRound: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceDetectAge**
```objc
-(NSURLSessionTask*) faceDetectAgeWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMAgeDetectionResult* output, NSError* error)) handler;
```

Detect the age of people in an image

Identify the age, position, and size of human faces in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Detect the age of people in an image
[apiInstance faceDetectAgeWithImageFile:imageFile
          completionHandler: ^(CMAgeDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceDetectAge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMAgeDetectionResult***](CMAgeDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceDetectGender**
```objc
-(NSURLSessionTask*) faceDetectGenderWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMGenderDetectionResult* output, NSError* error)) handler;
```

Detect the gender of people in an image

Identify the gender, position, and size of human faces in an image, along with a recognition confidence level.  People in the image should be facing the camera.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Detect the gender of people in an image
[apiInstance faceDetectGenderWithImageFile:imageFile
          completionHandler: ^(CMGenderDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceDetectGender: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMGenderDetectionResult***](CMGenderDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceLocate**
```objc
-(NSURLSessionTask*) faceLocateWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMFaceLocateResponse* output, NSError* error)) handler;
```

Find faces in an image

Locate the positions of all faces in an image

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Find faces in an image
[apiInstance faceLocateWithImageFile:imageFile
          completionHandler: ^(CMFaceLocateResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceLocate: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMFaceLocateResponse***](CMFaceLocateResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **faceLocateWithLandmarks**
```objc
-(NSURLSessionTask*) faceLocateWithLandmarksWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMFaceLocateWithLandmarksResponse* output, NSError* error)) handler;
```

Find faces and face landmarks (eyes, eye brows, nose, mouth) in an image

Locate the positions of all faces in an image, along with the eyes, eye brows, nose and mouth components of each

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMFaceApi*apiInstance = [[CMFaceApi alloc] init];

// Find faces and face landmarks (eyes, eye brows, nose, mouth) in an image
[apiInstance faceLocateWithLandmarksWithImageFile:imageFile
          completionHandler: ^(CMFaceLocateWithLandmarksResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMFaceApi->faceLocateWithLandmarks: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMFaceLocateWithLandmarksResponse***](CMFaceLocateWithLandmarksResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

