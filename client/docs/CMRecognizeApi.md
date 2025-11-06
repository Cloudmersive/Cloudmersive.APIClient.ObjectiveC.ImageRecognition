# CMRecognizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recognizeDescribe**](CMRecognizeApi.md#recognizedescribe) | **POST** /image/recognize/describe | Describe an image in natural language
[**recognizeDetectAndUnskewDocument**](CMRecognizeApi.md#recognizedetectandunskewdocument) | **POST** /image/recognize/detect-document/unskew | Detect and unskew a photo of a document
[**recognizeDetectTextFine**](CMRecognizeApi.md#recognizedetecttextfine) | **POST** /image/recognize/detect-text/fine | Detect fine text in a photo of a document
[**recognizeDetectTextLarge**](CMRecognizeApi.md#recognizedetecttextlarge) | **POST** /image/recognize/detect-text/large | Detect large text in a photo
[**recognizeDetectVehicleLicensePlates**](CMRecognizeApi.md#recognizedetectvehiclelicenseplates) | **POST** /image/recognize/detect-vehicle-license-plates | Detect vehicle license plates in an image
[**recognizeFindSymbol**](CMRecognizeApi.md#recognizefindsymbol) | **POST** /image/recognize/find/symbol | Find the location of a symbol in an image
[**recognizeSimilarityCompare**](CMRecognizeApi.md#recognizesimilaritycompare) | **POST** /image/recognize/similarity/compare | Compare two images for similarity
[**recognizeSimilarityHash**](CMRecognizeApi.md#recognizesimilarityhash) | **POST** /image/recognize/similarity/hash | Generate a perceptual image hash
[**recognizeSimilarityHashDistance**](CMRecognizeApi.md#recognizesimilarityhashdistance) | **POST** /image/recognize/similarity/hash/distance | Calculates the similarity between two perceptual image hashes


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

# **recognizeDetectTextFine**
```objc
-(NSURLSessionTask*) recognizeDetectTextFineWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMFineTextDetectionResult* output, NSError* error)) handler;
```

Detect fine text in a photo of a document

Identify the position, and size of small/fine text within a photograph of a document.  Identify the location of small text in a photo - such as words and other forms of high density text.  Can be used on a scan of a document or a photograph (e.g. smartphone camera) of a document, page or receipt.  For OCR purposes - please see our Deep Learning OCR APIs.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect fine text in a photo of a document
[apiInstance recognizeDetectTextFineWithImageFile:imageFile
          completionHandler: ^(CMFineTextDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectTextFine: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMFineTextDetectionResult***](CMFineTextDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeDetectTextLarge**
```objc
-(NSURLSessionTask*) recognizeDetectTextLargeWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMTextDetectionResult* output, NSError* error)) handler;
```

Detect large text in a photo

Identify the position, and size of large text within a photograph.  Identify the location of large text in a photo - such as signs, titles, etc. and other forms of large, low-density text.  Not suitable for high-density text (e.g. scans of documents, receipts, etc.) for OCR purposes - for OCR, please see our Deep Learning OCR APIs.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Detect large text in a photo
[apiInstance recognizeDetectTextLargeWithImageFile:imageFile
          completionHandler: ^(CMTextDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeDetectTextLarge: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMTextDetectionResult***](CMTextDetectionResult.md)

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

Identify the position, and size, and content of vehicle license plates in an image.  License plates should be within 15-20 degrees on-axis to the camera.  Supported image formats are JPG, PNG and BMP.

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

# **recognizeFindSymbol**
```objc
-(NSURLSessionTask*) recognizeFindSymbolWithInputImage: (NSURL*) inputImage
    targetImage: (NSURL*) targetImage
        completionHandler: (void (^)(CMFindSymbolResult* output, NSError* error)) handler;
```

Find the location of a symbol in an image

Determine if an image contains a symbol, and if so, the location of that symbol in the image.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to search through for the target image.
NSURL* targetImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image to find in the input image.

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Find the location of a symbol in an image
[apiInstance recognizeFindSymbolWithInputImage:inputImage
              targetImage:targetImage
          completionHandler: ^(CMFindSymbolResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeFindSymbol: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputImage** | **NSURL***| Image file to search through for the target image. | 
 **targetImage** | **NSURL***| Image to find in the input image. | 

### Return type

[**CMFindSymbolResult***](CMFindSymbolResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeSimilarityCompare**
```objc
-(NSURLSessionTask*) recognizeSimilarityCompareWithBaseImage: (NSURL*) baseImage
    comparisonImage: (NSURL*) comparisonImage
    recognitionMode: (NSString*) recognitionMode
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Compare two images for similarity

Generates an image similarity score using Deep Learning between 0.0 and 1.0, values closer to 1.0 indicate greater similarity

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* baseImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to compare against.  Common file formats such as PNG, JPEG are supported.
NSURL* comparisonImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image to compare to the base image.
NSString* recognitionMode = @"recognitionMode_example"; // Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. (optional)

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Compare two images for similarity
[apiInstance recognizeSimilarityCompareWithBaseImage:baseImage
              comparisonImage:comparisonImage
              recognitionMode:recognitionMode
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeSimilarityCompare: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **baseImage** | **NSURL***| Image file to compare against.  Common file formats such as PNG, JPEG are supported. | 
 **comparisonImage** | **NSURL***| Image to compare to the base image. | 
 **recognitionMode** | **NSString***| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional] 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeSimilarityHash**
```objc
-(NSURLSessionTask*) recognizeSimilarityHashWithImageFile: (NSURL*) imageFile
    recognitionMode: (NSString*) recognitionMode
        completionHandler: (void (^)(CMImageSimilarityHashResponse* output, NSError* error)) handler;
```

Generate a perceptual image hash

Generates a hash value for the image; hash values that are closer together in terms of Hamming Distance are more similar.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
NSString* recognitionMode = @"recognitionMode_example"; // Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. (optional)

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Generate a perceptual image hash
[apiInstance recognizeSimilarityHashWithImageFile:imageFile
              recognitionMode:recognitionMode
          completionHandler: ^(CMImageSimilarityHashResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeSimilarityHash: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **recognitionMode** | **NSString***| Optional, specify the recognition mode; possible values are Normal, Basic and Advanced.  Default is Normal. | [optional] 

### Return type

[**CMImageSimilarityHashResponse***](CMImageSimilarityHashResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recognizeSimilarityHashDistance**
```objc
-(NSURLSessionTask*) recognizeSimilarityHashDistanceWithRequest: (CMImageSimilarityHashDistanceRequest*) request
        completionHandler: (void (^)(CMImageSimilarityHashDistanceResponse* output, NSError* error)) handler;
```

Calculates the similarity between two perceptual image hashes

Calculates the similarity between two perceptual image hashes by computing the Hamming Distance between them.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMImageSimilarityHashDistanceRequest* request = [[CMImageSimilarityHashDistanceRequest alloc] init]; // 

CMRecognizeApi*apiInstance = [[CMRecognizeApi alloc] init];

// Calculates the similarity between two perceptual image hashes
[apiInstance recognizeSimilarityHashDistanceWithRequest:request
          completionHandler: ^(CMImageSimilarityHashDistanceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMRecognizeApi->recognizeSimilarityHashDistance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMImageSimilarityHashDistanceRequest***](CMImageSimilarityHashDistanceRequest.md)|  | 

### Return type

[**CMImageSimilarityHashDistanceResponse***](CMImageSimilarityHashDistanceResponse.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

