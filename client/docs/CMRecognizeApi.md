# CMRecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognizeDescribe**](CMRecognizeApi.md#recognizedescribe) | **POST** /image/recognize/describe | Describe an image in natural language
[**recognizeDetectAndUnskewDocument**](CMRecognizeApi.md#recognizedetectandunskewdocument) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
[**recognizeDetectObjects**](CMRecognizeApi.md#recognizedetectobjects) | **POST** /image/recognize/detect-objects | Detect objects, including types and locations, in an image
[**recognizeDetectPeople**](CMRecognizeApi.md#recognizedetectpeople) | **POST** /image/recognize/detect-people | Detect people, including locations, in an image
[**recognizeDetectVehicleLicensePlates**](CMRecognizeApi.md#recognizedetectvehiclelicenseplates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image


# **recognizeDescribe**
```objc
-(NSURLSessionTask*) recognizeDescribeWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMImageDescriptionResponse* output, NSError* error)) handler;
```

Describe an image in natural language

Generate an English language text description of the image as a sentence.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Describe an image in natural language
[apiInstance recognizeDescribeWithImageFile:imageFile
          completionHandler: ^(CMImageDescriptionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDescribe: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMImageDescriptionResponse***](CMImageDescriptionResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeDetectAndUnskewDocument**
```objc
-(NSURLSessionTask*) recognizeDetectAndUnskewDocumentWithImageFile: (NSURL*) imageFile
    postProcessingEffect: (NSString*) postProcessingEffect
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Detect and unskew a photo of a document

Detect and unskew a photo of a document (e.g. taken on a cell phone) into a perfectly square image.  Great for document scanning applications; once unskewed, this image is perfect for converting to PDF using the Convert API or optical character recognition using the OCR API.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
NSString* postProcessingEffect = @"postProcessingEffect_example"; // Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). (optional)

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect and unskew a photo of a document
[apiInstance recognizeDetectAndUnskewDocumentWithImageFile:imageFile
              postProcessingEffect:postProcessingEffect
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectAndUnskewDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **postProcessingEffect** | **NSString***| Optional, post-processing effects to apply to the email, default is None.  Possible values are None and BlackAndWhite (force the image into a black and white view to aid in OCR operations). | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeDetectObjects**
```objc
-(NSURLSessionTask*) recognizeDetectObjectsWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMObjectDetectionResult* output, NSError* error)) handler;
```

Detect objects, including types and locations, in an image

Identify the position, size and description of objects in an image, along with a recognition confidence level.  Detects both human people and objects in an image.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect objects, including types and locations, in an image
[apiInstance recognizeDetectObjectsWithImageFile:imageFile
          completionHandler: ^(CMObjectDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectObjects: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMObjectDetectionResult***](CMObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeDetectPeople**
```objc
-(NSURLSessionTask*) recognizeDetectPeopleWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMObjectDetectionResult* output, NSError* error)) handler;
```

Detect people, including locations, in an image

Identify the position, and size of human people in an image, along with a recognition confidence level.  People in the image do NOT need to be facing the camera; they can be facing away, edge-on, etc.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect people, including locations, in an image
[apiInstance recognizeDetectPeopleWithImageFile:imageFile
          completionHandler: ^(CMObjectDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectPeople: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMObjectDetectionResult***](CMObjectDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeDetectVehicleLicensePlates**
```objc
-(NSURLSessionTask*) recognizeDetectVehicleLicensePlatesWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMVehicleLicensePlateDetectionResult* output, NSError* error)) handler;
```

Detect vehicle license plates in an image

Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect vehicle license plates in an image
[apiInstance recognizeDetectVehicleLicensePlatesWithImageFile:imageFile
          completionHandler: ^(CMVehicleLicensePlateDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectVehicleLicensePlates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMVehicleLicensePlateDetectionResult***](CMVehicleLicensePlateDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

