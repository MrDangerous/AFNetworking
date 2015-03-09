//
//  GetInfo.h
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


@interface GetInfo : NSObject

+(GetInfo *)sharedInfo;

//get方式
-(void)handlerGetInfoWithGetDic:(NSDictionary *)post
                            FinishBlock:(CSFinishedBlock)fiblock
                           FailureBlock:(CSFailedBlock)fablock;


@end
