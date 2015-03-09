//
//  NetworkClient.h
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import "AFHTTPSessionManager.h"

@interface NetworkClient : AFHTTPSessionManager
+(instancetype)sharedClient;
@end
