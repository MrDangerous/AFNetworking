//
//  DataCenter.m
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import "DataCenter.h"
#import "NetworkClient.h"

@implementation DataCenter

+(id)sharedCenter
{
    static DataCenter *center = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        center=[[self alloc] init];
    });
    
    return center;
}

-(id)init
{
    self = [super init];
    if (self)
    {
        
    }
    return self;
}

-(void)networkMethodwithAPI:(NSString *)strAPIURL
              withPostParam:(id)postParam
                FinishBlock:(void(^)(NSData*data, NSError *error))block
               FailureBlock:(void(^)(NSError *error))failureBlock
{
    
    [[NetworkClient sharedClient] POST:strAPIURL
                            parameters:postParam
                               success:^(NSURLSessionDataTask *task, id responseObject)
     {
         if (block)
         {
             block(responseObject, nil);
         }
     } failure:^(NSURLSessionDataTask *task, NSError *error)
     {
         if (failureBlock)
         {
             failureBlock(error);
         }
     }];
}


-(void)networkMethodwithAPI:(NSString *)strAPIURL
               withGetParam:(id)postParam
                FinishBlock:(void(^)(NSData*data,NSError *error))block
               FailureBlock:(void(^)(NSError *error))failureBlock
{
    [[NetworkClient sharedClient]GET:strAPIURL parameters:postParam success:^(NSURLSessionDataTask *task, id responseObject) {
        
        if (block)
        {
            block(responseObject, nil);
        }

    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        if (failureBlock)
        {
            failureBlock(error);
        }
    }];
    
}

@end
