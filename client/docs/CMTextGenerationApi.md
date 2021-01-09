# CMTextGenerationApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**textGenerationCreateHandwritingPng**](CMTextGenerationApi.md#textgenerationcreatehandwritingpng) | **POST** /image/text/create/handwriting/png | Create an image of handwriting in PNG format


# **textGenerationCreateHandwritingPng**
```objc
-(NSURLSessionTask*) textGenerationCreateHandwritingPngWithRequest: (CMCreateHandwritingRequest*) request
        completionHandler: (void (^)(NSObject* output, NSError* error)) handler;
```

Create an image of handwriting in PNG format

Uses Deep Learning to generate realistic handwriting and returns the result as a PNG image

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMCreateHandwritingRequest* request = [[CMCreateHandwritingRequest alloc] init]; // Draw text parameters

CMTextGenerationApi*apiInstance = [[CMTextGenerationApi alloc] init];

// Create an image of handwriting in PNG format
[apiInstance textGenerationCreateHandwritingPngWithRequest:request
          completionHandler: ^(NSObject* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMTextGenerationApi->textGenerationCreateHandwritingPng: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request** | [**CMCreateHandwritingRequest***](CMCreateHandwritingRequest.md)| Draw text parameters | 

### Return type

**NSObject***

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

