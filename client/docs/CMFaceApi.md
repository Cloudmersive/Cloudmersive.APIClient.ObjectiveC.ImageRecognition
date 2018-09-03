# CMFaceApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**faceCropFirst**](CMFaceApi.md#facecropfirst) | **POST** /image/face/crop/first | Crop image to face (square)
[**faceCropFirstRound**](CMFaceApi.md#facecropfirstround) | **POST** /image/face/crop/first/round | Crop image to face (round)
[**faceDetectAge**](CMFaceApi.md#facedetectage) | **POST** /image/face/detect-age | Detect the age of people in an image
[**faceLocate**](CMFaceApi.md#facelocate) | **POST** /image/face/locate | Find faces in an image


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

