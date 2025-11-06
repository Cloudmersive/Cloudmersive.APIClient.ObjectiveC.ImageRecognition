# CMResizeApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**resizePost**](CMResizeApi.md#resizepost) | **POST** /image/resize/preserveAspectRatio/{maxWidth}/{maxHeight} | Resize an image while preserving aspect ratio
[**resizeResizeAISuperSampling**](CMResizeApi.md#resizeresizeaisupersampling) | **POST** /image/resize/ai/target | Resize an image with AI super sampling
[**resizeResizeSimple**](CMResizeApi.md#resizeresizesimple) | **POST** /image/resize/target/{width}/{height} | Resize an image


# **resizePost**
```objc
-(NSURLSessionTask*) resizePostWithMaxWidth: (NSNumber*) maxWidth
    maxHeight: (NSNumber*) maxHeight
    imageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Resize an image while preserving aspect ratio

Resize an image to a maximum width and maximum height, while preserving the image's original aspect ratio.  Resize is EXIF-aware.

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

// Resize an image while preserving aspect ratio
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
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resizeResizeAISuperSampling**
```objc
-(NSURLSessionTask*) resizeResizeAISuperSamplingWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Resize an image with AI super sampling

Use AI super sampling to resize a small or low resolution image to twice the size.  Input image should be PNG or JPG, and smaller than 200 x 200 pixels (larger images will be resized down).  Consumes 20 API calls.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMResizeApi*apiInstance = [[CMResizeApi alloc] init];

// Resize an image with AI super sampling
[apiInstance resizeResizeAISuperSamplingWithImageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMResizeApi->resizeResizeAISuperSampling: %@", error);
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

# **resizeResizeSimple**
```objc
-(NSURLSessionTask*) resizeResizeSimpleWithWidth: (NSNumber*) width
    height: (NSNumber*) height
    imageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Resize an image

Resize an image to a specific width and specific height.  Resize is EXIF-aware.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSNumber* width = @56; // Width of the output image - final image will be exactly this width
NSNumber* height = @56; // Height of the output image - final image will be exactly this height
NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMResizeApi*apiInstance = [[CMResizeApi alloc] init];

// Resize an image
[apiInstance resizeResizeSimpleWithWidth:width
              height:height
              imageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMResizeApi->resizeResizeSimple: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **width** | **NSNumber***| Width of the output image - final image will be exactly this width | 
 **height** | **NSNumber***| Height of the output image - final image will be exactly this height | 
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

