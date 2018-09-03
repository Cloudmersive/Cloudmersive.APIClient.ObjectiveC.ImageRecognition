# CMEditApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**editCompositeBasic**](CMEditApi.md#editcompositebasic) | **POST** /image/edit/composite/{location} | Composite two images together
[**editDrawRectangle**](CMEditApi.md#editdrawrectangle) | **POST** /image/edit/draw/rectangle | Draw rectangle onto an image
[**editDrawText**](CMEditApi.md#editdrawtext) | **POST** /image/edit/draw/text | Draw text onto an image


# **editCompositeBasic**
```objc
-(NSURLSessionTask*) editCompositeBasicWithLocation: (NSString*) location
    baseImage: (NSURL*) baseImage
    layeredImage: (NSURL*) layeredImage
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Composite two images together

Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* location = @"location_example"; // Location to composite the layered images; possible values are: \"center\", \"top-left\", \"top-center\", \"top-right\", \"center-left\", \"center-right\", \"bottom-left\", \"bottom-center\", \"bottom-right\"
NSURL* baseImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.
NSURL* layeredImage = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image to layer on top of the base image.

CMEditApi*apiInstance = [[CMEditApi alloc] init];

// Composite two images together
[apiInstance editCompositeBasicWithLocation:location
              baseImage:baseImage
              layeredImage:layeredImage
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditApi->editCompositeBasic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **location** | **NSString***| Location to composite the layered images; possible values are: \&quot;center\&quot;, \&quot;top-left\&quot;, \&quot;top-center\&quot;, \&quot;top-right\&quot;, \&quot;center-left\&quot;, \&quot;center-right\&quot;, \&quot;bottom-left\&quot;, \&quot;bottom-center\&quot;, \&quot;bottom-right\&quot; | 
 **baseImage** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 
 **layeredImage** | **NSURL***| Image to layer on top of the base image. | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDrawRectangle**
```objc
-(NSURLSessionTask*) editDrawRectangleWithRequest: (CMDrawRectangleRequest*) request
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Draw rectangle onto an image

Draw one or more rectangles, with customized visuals, onto an image

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDrawRectangleRequest* request = [[CMDrawRectangleRequest alloc] init]; // 

CMEditApi*apiInstance = [[CMEditApi alloc] init];

// Draw rectangle onto an image
[apiInstance editDrawRectangleWithRequest:request
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditApi->editDrawRectangle: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMDrawRectangleRequest***](CMDrawRectangleRequest.md)|  | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editDrawText**
```objc
-(NSURLSessionTask*) editDrawTextWithRequest: (CMDrawTextRequest*) request
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Draw text onto an image

Draw one or more pieces of text, with customized visuals, onto an image

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMDrawTextRequest* request = [[CMDrawTextRequest alloc] init]; // 

CMEditApi*apiInstance = [[CMEditApi alloc] init];

// Draw text onto an image
[apiInstance editDrawTextWithRequest:request
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMEditApi->editDrawText: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMDrawTextRequest***](CMDrawTextRequest.md)|  | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

