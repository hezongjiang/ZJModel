//
//  ZJModel.m
//  MyDamaiProject
//
//  Created by Hearsay on 15/5/28.
//  Copyright (c) 2015年 Hearsay. All rights reserved.
//

#import "ZJModel.h"

#define NSLog(Format,...)\
printf("%s", [[NSString stringWithFormat:Format,##__VA_ARGS__] UTF8String]);

@implementation ZJModel

+ (void)modelWithDictionary:(NSDictionary *)dict modelName:(NSString *)modelName
{
    if (![dict isKindOfClass:[NSDictionary class]]) {
        NSLog(@"不是字典");
        return;
    }
    
    printf("\n@interface %s :NSObject\n",modelName.UTF8String);
    for (NSObject *key in dict)
    {
        if ([dict[key] isKindOfClass:[NSString class]]) {
            NSLog(@"@property (nonatomic,   copy) NSString *%@;\n", key);
        } else {
            NSLog(@"@property (nonatomic, strong) %@ *%@;\n", [dict[key] classForCoder], key);
        }
        
    }
    printf("@end\n");
}

@end
