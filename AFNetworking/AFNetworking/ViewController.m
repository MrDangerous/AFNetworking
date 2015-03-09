//
//  ViewController.m
//  AFNetworking
//
//  Created by XWQ on 15/3/9.
//  Copyright (c) 2015年 _Name.im_. All rights reserved.
//

#import "ViewController.h"
#import "GetInfo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[GetInfo sharedInfo]handlerGetInfoWithGetDic:nil FinishBlock:^(id data) {
        NSLog(@"%@",data);
    } FailureBlock:^(NSString *error) {
        NSLog(@"%@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
