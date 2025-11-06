# CMNsfwApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nsfwClassify**](CMNsfwApi.md#nsfwclassify) | **POST** /image/nsfw/classify | Not safe for work (NSFW) content classification for Images
[**nsfwClassifyAdvanced**](CMNsfwApi.md#nsfwclassifyadvanced) | **POST** /image/nsfw/classify/advanced | Advanced content moderation and not safe for work (NSFW) content classification for Images
[**nsfwClassifyDocument**](CMNsfwApi.md#nsfwclassifydocument) | **POST** /image/nsfw/classify/document | Not safe for work (NSFW) content classification for Documents
[**nsfwClassifyVideo**](CMNsfwApi.md#nsfwclassifyvideo) | **POST** /image/nsfw/classify/video | Not safe for work (NSFW) content classification for Video


# **nsfwClassify**
```objc
-(NSURLSessionTask*) nsfwClassifyWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler;
```

Not safe for work (NSFW) content classification for Images

Classify an image into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG or GIF.  Consumes 20 API calls.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMNsfwApi*apiInstance = [[CMNsfwApi alloc] init];

// Not safe for work (NSFW) content classification for Images
[apiInstance nsfwClassifyWithImageFile:imageFile
          completionHandler: ^(CMNsfwResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNsfwApi->nsfwClassify: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMNsfwResult***](CMNsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nsfwClassifyAdvanced**
```objc
-(NSURLSessionTask*) nsfwClassifyAdvancedWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMNsfwAdvancedResult* output, NSError* error)) handler;
```

Advanced content moderation and not safe for work (NSFW) content classification for Images

Uses advanced AI to classify an image into Not Safe For Work (NSFW) or not and determine if it contains nudity, graphic violence, non-graphic violence, self-harm, hate, potential illegal activity, medical imagery, or profanity.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG.  Consumes 100 API calls.  Requires Managed Instance or Private Cloud deployment, and a GPU.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMNsfwApi*apiInstance = [[CMNsfwApi alloc] init];

// Advanced content moderation and not safe for work (NSFW) content classification for Images
[apiInstance nsfwClassifyAdvancedWithImageFile:imageFile
          completionHandler: ^(CMNsfwAdvancedResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNsfwApi->nsfwClassifyAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMNsfwAdvancedResult***](CMNsfwAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nsfwClassifyDocument**
```objc
-(NSURLSessionTask*) nsfwClassifyDocumentWithImageFile: (NSURL*) imageFile
        completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler;
```

Not safe for work (NSFW) content classification for Documents

Classify a document (PDF, DOCX, DOC, XLSX, XLS, PPTX, PPT) into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Consumes 20 API calls per image.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMNsfwApi*apiInstance = [[CMNsfwApi alloc] init];

// Not safe for work (NSFW) content classification for Documents
[apiInstance nsfwClassifyDocumentWithImageFile:imageFile
          completionHandler: ^(CMNsfwResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNsfwApi->nsfwClassifyDocument: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

[**CMNsfwResult***](CMNsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nsfwClassifyVideo**
```objc
-(NSURLSessionTask*) nsfwClassifyVideoWithVideoFile: (NSURL*) videoFile
        completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler;
```

Not safe for work (NSFW) content classification for Video

Classify a video into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be MP4, MOV, WEBM, MKV, AVI, FLV, MPG, GIF.  Consumes 20 API calls per frame analyzed.  Requires Cloudmersive Managed Instance or Private Cloud deployment.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* videoFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Video file to perform the operation on.  Common file formats such as MP4, MPG are supported.

CMNsfwApi*apiInstance = [[CMNsfwApi alloc] init];

// Not safe for work (NSFW) content classification for Video
[apiInstance nsfwClassifyVideoWithVideoFile:videoFile
          completionHandler: ^(CMNsfwResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMNsfwApi->nsfwClassifyVideo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **videoFile** | **NSURL***| Video file to perform the operation on.  Common file formats such as MP4, MPG are supported. | 

### Return type

[**CMNsfwResult***](CMNsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

