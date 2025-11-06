#import "CMNsfwApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMNsfwAdvancedResult.h"
#import "CMNsfwResult.h"


@interface CMNsfwApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMNsfwApi

NSString* kCMNsfwApiErrorDomain = @"CMNsfwApiErrorDomain";
NSInteger kCMNsfwApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Not safe for work (NSFW) content classification for Images
/// Classify an image into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG or GIF.  Consumes 20 API calls.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns CMNsfwResult*
///
-(NSURLSessionTask*) nsfwClassifyWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMNsfwApiErrorDomain code:kCMNsfwApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/nsfw/classify"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"imageFile"] = imageFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMNsfwResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMNsfwResult*)data, error);
                                }
                            }];
}

///
/// Advanced content moderation and not safe for work (NSFW) content classification for Images
/// Uses advanced AI to classify an image into Not Safe For Work (NSFW) or not and determine if it contains nudity, graphic violence, non-graphic violence, self-harm, hate, potential illegal activity, medical imagery, or profanity.  Helpful for filtering out unsafe content when processing user images.  Input image should be JPG, PNG.  Consumes 100 API calls.  Requires Managed Instance or Private Cloud deployment, and a GPU.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns CMNsfwAdvancedResult*
///
-(NSURLSessionTask*) nsfwClassifyAdvancedWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMNsfwAdvancedResult* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMNsfwApiErrorDomain code:kCMNsfwApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/nsfw/classify/advanced"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"imageFile"] = imageFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMNsfwAdvancedResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMNsfwAdvancedResult*)data, error);
                                }
                            }];
}

///
/// Not safe for work (NSFW) content classification for Documents
/// Classify a document (PDF, DOCX, DOC, XLSX, XLS, PPTX, PPT) into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Consumes 20 API calls per image.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns CMNsfwResult*
///
-(NSURLSessionTask*) nsfwClassifyDocumentWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMNsfwApiErrorDomain code:kCMNsfwApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/nsfw/classify/document"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"imageFile"] = imageFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMNsfwResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMNsfwResult*)data, error);
                                }
                            }];
}

///
/// Not safe for work (NSFW) content classification for Video
/// Classify a video into Not Safe For Work (NSFW)/Pornographic/Nudity/Racy content and Safe Content.  Helpful for filtering out unsafe content when processing user images.  Input image should be MP4, MOV, WEBM, MKV, AVI, FLV, MPG, GIF.  Consumes 20 API calls per frame analyzed.  Requires Cloudmersive Managed Instance or Private Cloud deployment.
///  @param videoFile Video file to perform the operation on.  Common file formats such as MP4, MPG are supported. 
///
///  @returns CMNsfwResult*
///
-(NSURLSessionTask*) nsfwClassifyVideoWithVideoFile: (NSURL*) videoFile
    completionHandler: (void (^)(CMNsfwResult* output, NSError* error)) handler {
    // verify the required parameter 'videoFile' is set
    if (videoFile == nil) {
        NSParameterAssert(videoFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"videoFile"] };
            NSError* error = [NSError errorWithDomain:kCMNsfwApiErrorDomain code:kCMNsfwApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/nsfw/classify/video"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"videoFile"] = videoFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMNsfwResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMNsfwResult*)data, error);
                                }
                            }];
}



@end
