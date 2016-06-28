//
//  ViewController.m
//  ZJModelExemple
//
//  Created by Hearsay on 16/6/28.
//  Copyright © 2016年 Hearsay. All rights reserved.
//

#import "ViewController.h"
#import "ZJModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self getLocalData];
    
    [self getRemoteData];
}

#pragma mark - 将本地字典转成模型打印输出
- (void)getLocalData
{
    NSDictionary *dict = @{
                           @"name" : @"Jack",
                           @"icon" : @"lufy.png",
                           @"age"  : @20,
                           @"money": @100.9,
                           @"sex"  : @(1),
                           @"gay"  : @"true",
                           @"books": @[@"book1", @"book2"],
                           };
    
    // 调用ZJModel方法
    [ZJModel modelWithDictionary:dict modelName:@"Model"];
}

#pragma mark - 将服务器字典转成模型打印输出
- (void)getRemoteData
{
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURL *url = [NSURL URLWithString:@"http://news-at.zhihu.com/api/4/theme/13"];
    
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSDictionary *jsonDict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        
        // 调用ZJModel方法
        [ZJModel modelWithDictionary:jsonDict modelName:@"Model"];
        
    }];
    
    [task resume];
}

@end
