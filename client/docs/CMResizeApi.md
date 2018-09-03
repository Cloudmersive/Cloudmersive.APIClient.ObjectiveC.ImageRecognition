# CMResizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resizePost**](CMResizeApi.md#resizepost) | **POST** /image/resize/preserveAspectRatio/{maxWidth}/{maxHeight} | Resize an image with parameters


# **resizePost**
```objc
-(NSURLSessionTask*) resizePostWithMaxWidth: (NSNumber*) maxWidth
    maxHeight: (NSNumber*) maxHeight
    imageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Resize an image with parameters

Resize an image to a maximum width and maximum height, while preserving the image's original aspect ratio

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSNumber* maxWidth = @56; // Maximum width of the output image - final image will be as large as possible while less than or equial to this width
NSNumber* maxHeight = @56; // Maximum height of the output image - final image will be as large as possible while less than or equial to this height
NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMResizeApi*apiInstance = [[CMResizeApi alloc] init];

// Resize an image with parameters
[apiInstance resizePostWithMaxWidth:maxWidth
              maxHeight:maxHeight
              imageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMResizeApi->resizePost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxWidth** | **NSNumber***| Maximum width of the output image - final image will be as large as possible while less than or equial to this width | 
 **maxHeight** | **NSNumber***| Maximum height of the output image - final image will be as large as possible while less than or equial to this height | 
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
