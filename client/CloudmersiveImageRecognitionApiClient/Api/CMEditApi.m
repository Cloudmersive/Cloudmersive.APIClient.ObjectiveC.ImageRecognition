#import "CMEditApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMDrawPolygonRequest.h"
#import "CMDrawRectangleRequest.h"
#import "CMDrawTextRequest.h"


@interface CMEditApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMEditApi

NSString* kCMEditApiErrorDomain = @"CMEditApiErrorDomain";
NSInteger kCMEditApiMissingParamErrorCode = 234513;

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
/// Normalizes image rotation and removes EXIF rotation data
/// Automatically orients the input image based on EXIF information and then removes the EXIF information.  EXIF is an additional set of information stored in some images taken with cell phone cameras based on the orientation of the camera.  By normalizing rotation and removing EXIF data these images become much easier to process.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editAutoOrientWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/auto-orient/remove-exif"];

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
/// Composite two images together
/// Composites two input images together; a layered image onto a base image.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.
///  @param location Location to composite the layered images; possible values are: \"center\", \"top-left\", \"top-center\", \"top-right\", \"center-left\", \"center-right\", \"bottom-left\", \"bottom-center\", \"bottom-right\" 
///
///  @param baseImage Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @param layeredImage Image to layer on top of the base image. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editCompositeBasicWithLocation: (NSString*) location
    baseImage: (NSURL*) baseImage
    layeredImage: (NSURL*) layeredImage
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'location' is set
    if (location == nil) {
        NSParameterAssert(location);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"location"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'baseImage' is set
    if (baseImage == nil) {
        NSParameterAssert(baseImage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"baseImage"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'layeredImage' is set
    if (layeredImage == nil) {
        NSParameterAssert(layeredImage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"layeredImage"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/composite/{location}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (location != nil) {
        pathParams[@"location"] = location;
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
    localVarFiles[@"baseImage"] = baseImage;
    localVarFiles[@"layeredImage"] = layeredImage;

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
/// Composite two images together precisely
/// Composites two input images together; a layered image onto a base image. Position is based on distance in pixels from each side.  The first image you input is the base image.  The second image (the layered image) will be composited on top of this base image.  Supports PNG transparency.  To control padding you can include transparent pixels at the border(s) of your layered images as appropriate.  Providing multiple parameters in a single axis (for example top and bottom) is not recommended, since only one of the parameters will be used per axis.
///  @param baseImage Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @param layeredImage Image to layer on top of the base image. 
///
///  @param top Optional; Desired distance in pixels from the top of the base image to the top of the layered image. (optional)
///
///  @param bottom Optional; Desired distance in pixels from the bottom of the base image to the bottom of the layered image. (optional)
///
///  @param left Optional; Desired distance in pixels from the left side of the base image to the left side of the layered image. (optional)
///
///  @param right Optional; Desired distance in pixels from the right side of the base image to the right side of the layered image. (optional)
///
///  @param width Optional; Desired width of the layered image in pixels. Leave height empty or 0 to automatically scale the image proportionally. (optional)
///
///  @param height Optional; Desired height of the layered image in pixels. Leave width empty or 0 to automatically scale the image proportionally. (optional)
///
///  @returns NSData*
///
-(NSURLSessionTask*) editCompositePreciseWithBaseImage: (NSURL*) baseImage
    layeredImage: (NSURL*) layeredImage
    top: (NSNumber*) top
    bottom: (NSNumber*) bottom
    left: (NSNumber*) left
    right: (NSNumber*) right
    width: (NSNumber*) width
    height: (NSNumber*) height
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'baseImage' is set
    if (baseImage == nil) {
        NSParameterAssert(baseImage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"baseImage"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'layeredImage' is set
    if (layeredImage == nil) {
        NSParameterAssert(layeredImage);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"layeredImage"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/composite/precise"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (top != nil) {
        headerParams[@"top"] = top;
    }
    if (bottom != nil) {
        headerParams[@"bottom"] = bottom;
    }
    if (left != nil) {
        headerParams[@"left"] = left;
    }
    if (right != nil) {
        headerParams[@"right"] = right;
    }
    if (width != nil) {
        headerParams[@"width"] = width;
    }
    if (height != nil) {
        headerParams[@"height"] = height;
    }
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
    localVarFiles[@"baseImage"] = baseImage;
    localVarFiles[@"layeredImage"] = layeredImage;

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
/// Adaptively adjust the contrast of the image to be more appealing and easy to see
/// Uses Gamma to adjust the contrast adaptively the way the human eye sees the world.  Results significantly improve the viewability and visual appeal of the image.
///  @param gamma Gamma value to adjust the contrast in the image.  Recommended value is 2.0.  Values between 0.0 and 1.0 will reduce contrast, while values above 1.0 will increase contrast. 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editContrastAdaptiveWithGamma: (NSNumber*) gamma
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'gamma' is set
    if (gamma == nil) {
        NSParameterAssert(gamma);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"gamma"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/contrast/{gamma}/adaptive"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (gamma != nil) {
        pathParams[@"gamma"] = gamma;
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
/// Crop an image to an circular area
/// Crop an image to a target circular area
///  @param left The left edge of the circular crop area in pixels (X). 
///
///  @param top The top edge of the circular crop area in pixels (Y). 
///
///  @param radius The radius of the circular crop area in pixels. 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editCropCircleWithLeft: (NSNumber*) left
    top: (NSNumber*) top
    radius: (NSNumber*) radius
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'left' is set
    if (left == nil) {
        NSParameterAssert(left);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"left"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'top' is set
    if (top == nil) {
        NSParameterAssert(top);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"top"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'radius' is set
    if (radius == nil) {
        NSParameterAssert(radius);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"radius"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/crop/circle/{left}/{top}/{radius}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (left != nil) {
        pathParams[@"left"] = left;
    }
    if (top != nil) {
        pathParams[@"top"] = top;
    }
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
/// Crop an image to a rectangular area
/// Crop an image to a target rectangular area
///  @param left The left edge of the rectangular crop area in pixels (X). 
///
///  @param top The top edge of the rectangular crop area in pixels (Y). 
///
///  @param width The width of the rectangular crop area in pixels. 
///
///  @param height The height of the rectangular crop area in pixels. 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editCropRectangleWithLeft: (NSNumber*) left
    top: (NSNumber*) top
    width: (NSNumber*) width
    height: (NSNumber*) height
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'left' is set
    if (left == nil) {
        NSParameterAssert(left);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"left"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'top' is set
    if (top == nil) {
        NSParameterAssert(top);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"top"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'width' is set
    if (width == nil) {
        NSParameterAssert(width);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"width"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'height' is set
    if (height == nil) {
        NSParameterAssert(height);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"height"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/crop/rectangle/{left}/{top}/{width}/{height}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (left != nil) {
        pathParams[@"left"] = left;
    }
    if (top != nil) {
        pathParams[@"top"] = top;
    }
    if (width != nil) {
        pathParams[@"width"] = width;
    }
    if (height != nil) {
        pathParams[@"height"] = height;
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
/// Draw a polygon onto an image
/// Draw one or more polygons, with customized visuals, onto an image
///  @param request Polygon drawing request parameters 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editDrawPolygonWithRequest: (CMDrawPolygonRequest*) request
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'request' is set
    if (request == nil) {
        NSParameterAssert(request);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"request"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/draw/polygon"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = request;

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
/// Draw a rectangle onto an image
/// Draw one or more rectangles, with customized visuals, onto an image
///  @param request Draw rectangle parameters 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editDrawRectangleWithRequest: (CMDrawRectangleRequest*) request
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'request' is set
    if (request == nil) {
        NSParameterAssert(request);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"request"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/draw/rectangle"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = request;

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
/// Draw text onto an image
/// Draw one or more pieces of text, with customized visuals, onto an image
///  @param request Draw text parameters 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editDrawTextWithRequest: (CMDrawTextRequest*) request
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'request' is set
    if (request == nil) {
        NSParameterAssert(request);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"request"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/draw/text"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/xml", @"text/xml", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = request;

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
/// Add a customizeable drop shadow to an image
/// Add a customizeable drop shadow to the image
///  @param X Horizontal (X) offset of the drop shadow 
///
///  @param Y Vertical (Y) offset of the drop shadow 
///
///  @param sigma Sigma (blur distance) of the drop shadow 
///
///  @param opacity Opacity of the drop shadow; 0 is 0% and 100 is 100% 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editDropShadowWithX: (NSNumber*) X
    Y: (NSNumber*) Y
    sigma: (NSNumber*) sigma
    opacity: (NSNumber*) opacity
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'X' is set
    if (X == nil) {
        NSParameterAssert(X);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"X"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'Y' is set
    if (Y == nil) {
        NSParameterAssert(Y);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"Y"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sigma' is set
    if (sigma == nil) {
        NSParameterAssert(sigma);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sigma"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'opacity' is set
    if (opacity == nil) {
        NSParameterAssert(opacity);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"opacity"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/drop-shadow/{X}/{Y}/{sigma}/{opacity}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (X != nil) {
        pathParams[@"X"] = X;
    }
    if (Y != nil) {
        pathParams[@"Y"] = Y;
    }
    if (sigma != nil) {
        pathParams[@"sigma"] = sigma;
    }
    if (opacity != nil) {
        pathParams[@"opacity"] = opacity;
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
/// Invert, negate the colors in the image
/// Inverts (negates) all of the colors in the image.  If the image contains transparency, the transparency will first be removed prior to inverting the image.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editInvertWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/invert"];

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
/// Remove EXIF data from the image
/// Removes any EXIF data and profiles .
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editRemoveExifDataWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/remove-exif"];

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
/// Remove transparency from the image
/// Removes any active transparency in the image.  Effectively renders the image at the same resolution, in the same file format, over a white background, thus removing transparency.
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editRemoveTransparencyWithImageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/remove-transparency"];

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
/// Rotate an image any number of degrees
/// Rotates an image by an arbitrary number of degrees
///  @param degrees Degrees to rotate the image; values range from 0.0 to 360.0. 
///
///  @param imageFile Image file to perform the operation on.  Common file formats such as PNG, JPEG are supported. 
///
///  @returns NSData*
///
-(NSURLSessionTask*) editRotateWithDegrees: (NSNumber*) degrees
    imageFile: (NSURL*) imageFile
    completionHandler: (void (^)(NSData* output, NSError* error)) handler {
    // verify the required parameter 'degrees' is set
    if (degrees == nil) {
        NSParameterAssert(degrees);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"degrees"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'imageFile' is set
    if (imageFile == nil) {
        NSParameterAssert(imageFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"imageFile"] };
            NSError* error = [NSError errorWithDomain:kCMEditApiErrorDomain code:kCMEditApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/image/edit/rotate/{degrees}/angle"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (degrees != nil) {
        pathParams[@"degrees"] = degrees;
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



@end
