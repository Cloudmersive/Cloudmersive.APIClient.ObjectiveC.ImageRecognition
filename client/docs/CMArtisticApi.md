# CMArtisticApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artisticPainting**](CMArtisticApi.md#artisticpainting) | **POST** /image/artistic/painting/{style} | Transform an image into an artistic painting automatically


# **artisticPainting**
```objc
-(NSURLSessionTask*) artisticPaintingWithStyle: (NSString*) style
    imageFile: (NSURL*) imageFile
        completionHandler: (void (^)(NSData* output, NSError* error)) handler;
```

Transform an image into an artistic painting automatically

Uses machine learning to automatically transform an image into an artistic painting.  Due to depth of AI processing, depending on image size this operation can take up to 20 seconds.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* style = @"style_example"; // The style of the painting to apply.  To start, try \"udnie\" a painting style.  Possible values are: \"udnie\", \"wave\", \"la_muse\", \"rain_princess\".
NSURL* imageFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported.

CMArtisticApi*apiInstance = [[CMArtisticApi alloc] init];

// Transform an image into an artistic painting automatically
[apiInstance artisticPaintingWithStyle:style
              imageFile:imageFile
          completionHandler: ^(NSData* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMArtisticApi->artisticPainting: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **style** | **NSString***| The style of the painting to apply.  To start, try \&quot;udnie\&quot; a painting style.  Possible values are: \&quot;udnie\&quot;, \&quot;wave\&quot;, \&quot;la_muse\&quot;, \&quot;rain_princess\&quot;. | 
 **imageFile** | **NSURL***| Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. | 

### Return type

**NSData***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

