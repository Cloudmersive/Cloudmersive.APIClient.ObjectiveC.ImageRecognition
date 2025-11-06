# CMAiImageDetectionApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aiImageDetectionDetectFile**](CMAiImageDetectionApi.md#aiimagedetectiondetectfile) | **POST** /image/ai-detection/file | Detect if an input image was generated using AI


# **aiImageDetectionDetectFile**
```objc
-(NSURLSessionTask*) aiImageDetectionDetectFileWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMImageAiDetectionResult* output, NSError* error)) handler;
```

Detect if an input image was generated using AI

Detects if the input image was generated using AI tools.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMAiImageDetectionApi*apiInstance = [[CMAiImageDetectionApi alloc] init];

// Detect if an input image was generated using AI
[apiInstance aiImageDetectionDetectFileWithImageFile:imageFile
          completionHandler: ^(CMImageAiDetectionResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMAiImageDetectionApi->aiImageDetectionDetectFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMImageAiDetectionResult***](CMImageAiDetectionResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

