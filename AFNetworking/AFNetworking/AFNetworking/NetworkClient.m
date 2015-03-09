//
//  NetworkClient.m
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import "NetworkClient.h"
#import "AFHTTPSessionManager.h"
@implementation NetworkClient
+(instancetype)sharedClient
{
    static  NetworkClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[NetworkClient alloc] initWithBaseURL:[NSURL URLWithString:@""]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
    });
    return _sharedClient;
}
@end
