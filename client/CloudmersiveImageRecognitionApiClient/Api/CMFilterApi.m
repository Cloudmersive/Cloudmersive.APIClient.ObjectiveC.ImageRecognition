#import "CMFilterApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"


@interface CMFilterApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMFilterApi

NSString* kCMFilterApiErrorDomain = @"CMFilterApiErrorDomain";
NSInteger kCMFilterApiMissingParamErrorCode = 234513;

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
/// Convert image to black-and-white grayscale
/// Remove color from the image by converting to a grayscale, black-and-white image
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterBlackAndWhiteWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/black-and-white"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Despeckle to remove point noise from the image
/// Remove point noise / despeckle the input image
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterDespeckleWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/despeckle"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Detect and highlight edges in an image
/// Perform an edge detection operation on the input image
///  @param radius Radius in pixels of the edge detection operation; a larger radius will produce a greater effect 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterEdgeDetectWithRadius: (NSNumber*) radius
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'radius' is set
    if (radius == nil) {
        NSParameterAssert(radius);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"radius"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/edge-detect/{radius}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (radius != nil) {
        pathParams[@"radius"] = radius;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Emboss an image
/// Perform an emboss operation on the input image
///  @param radius Radius in pixels of the emboss operation; a larger radius will produce a greater effect 
///
///  @param sigma Sigma, or variance, of the emboss operation 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterEmbossWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'radius' is set
    if (radius == nil) {
        NSParameterAssert(radius);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"radius"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sigma' is set
    if (sigma == nil) {
        NSParameterAssert(sigma);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sigma"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/emboss/{radius}/{sigma}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (radius != nil) {
        pathParams[@"radius"] = radius;
    }
    if (sigma != nil) {
        pathParams[@"sigma"] = sigma;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Perform a guassian blur on the input image
/// Perform a gaussian blur on the input image
///  @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect 
///
///  @param sigma Sigma, or variance, of the gaussian blur operation 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterGaussianBlurWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'radius' is set
    if (radius == nil) {
        NSParameterAssert(radius);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"radius"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sigma' is set
    if (sigma == nil) {
        NSParameterAssert(sigma);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sigma"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/blur/guassian/{radius}/{sigma}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (radius != nil) {
        pathParams[@"radius"] = radius;
    }
    if (sigma != nil) {
        pathParams[@"sigma"] = sigma;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Perform a motion blur on the input image
/// Perform a motion blur on the input image at a specific angle
///  @param radius Radius in pixels of the blur operation; a larger radius will produce a greater blur effect 
///
///  @param sigma Sigma, or variance, of the motion blur operation 
///
///  @param angle Angle of the motion blur in degrees 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterMotionBlurWithRadius: (NSNumber*) radius
    sigma: (NSNumber*) sigma
    angle: (NSNumber*) angle
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'radius' is set
    if (radius == nil) {
        NSParameterAssert(radius);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"radius"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sigma' is set
    if (sigma == nil) {
        NSParameterAssert(sigma);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sigma"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'angle' is set
    if (angle == nil) {
        NSParameterAssert(angle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"angle"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/blur/motion/{radius}/{sigma}/{angle}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (radius != nil) {
        pathParams[@"radius"] = radius;
    }
    if (sigma != nil) {
        pathParams[@"sigma"] = sigma;
    }
    if (angle != nil) {
        pathParams[@"angle"] = angle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Posterize the image by reducing distinct colors
/// Reduce the unique number of colors in the image to the specified level
///  @param levels Number of unique colors to retain in the output image 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterPosterizeWithLevels: (NSNumber*) levels
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'levels' is set
    if (levels == nil) {
        NSParameterAssert(levels);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"levels"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/posterize"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (levels != nil) {
        queryParams[@"levels"] = levels;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}

///
/// Swirl distort the image
/// Swirl distort the image by the specified number of degrees
///  @param degrees Degrees of swirl 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) filterSwirlWithDegrees: (NSNumber*) degrees
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'degrees' is set
    if (degrees == nil) {
        NSParameterAssert(degrees);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"degrees"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMFilterApiErrorDomain code:kCMFilterApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/filter/swirl"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (degrees != nil) {
        queryParams[@"degrees"] = degrees;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/octet-stream"]];
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
                              responseType: @"NSData*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSData*)data, error);
                                }
                            }];
}



@end
