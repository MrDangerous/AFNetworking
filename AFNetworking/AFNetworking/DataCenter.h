//
//  DataCenter.h
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import <Foundation/Foundation.h>


//成功失败Blocks
typedef void (^CSFinishedBlock) (id data);
typedef void (^CSFailedBlock)   (NSString *error);
typedef void (^CSProgressBlock) (double progress);

typedef void (^CSServiceFinishedBlock) (id data);
typedef void (^CSServiceFailedBlock)   (NSString *error);


@interface DataCenter : NSObject

+(id)sharedCenter;


-(void)networkMethodwithAPI:(NSString *)strAPIURL
              withPostParam:(id)postParam
                FinishBlock:(void(^)(NSData*data,NSError *error))block
               FailureBlock:(void(^)(NSError *error))failureBlock;


-(void)networkMethodwithAPI:(NSString *)strAPIURL
              withGetParam:(id)postParam
                FinishBlock:(void(^)(NSData*data,NSError *error))block
               FailureBlock:(void(^)(NSError *error))failureBlock;

@end
