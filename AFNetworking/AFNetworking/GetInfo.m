//
//  GetInfo.m
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import "GetInfo.h"
#import "DataCenter.h"

@implementation GetInfo

+(GetInfo *)sharedInfo
{
    static GetInfo *shareModel = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareModel = [[self alloc] init];
    });
    return shareModel;
}
-(void)handlerGetInfoWithGetDic:(NSDictionary *)post
                            FinishBlock:(CSFinishedBlock)fiblock
                           FailureBlock:(CSFailedBlock)fablock
{
    [[DataCenter sharedCenter] networkMethodwithAPI:@"http://apis.36kr.com/api/v1/topics/index.json?token=734dca654f1689f727cc:32710&page=1&per_page=10"
                                      withGetParam:post
                                        FinishBlock:^(NSData *data, NSError *error) {
                                                if (fiblock)
                                                {
                                                    fiblock(data);
                                                }
                                        } FailureBlock:^(NSError *error) {
                                            if (fablock)
                                            {
                                                fablock(@"错误");
                                            }
                                        }];
}


@end
