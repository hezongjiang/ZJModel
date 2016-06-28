//
//  ZJModel.h
//  MyDamaiProject
//
//  Created by Hearsay on 15/5/28.
//  Copyright (c) 2015年 Hearsay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJModel : NSObject

/**
 *  将字典中对应的Key，转成属性打印输出
 *
 *  @param dict 需要转换的字典
 *  @param modelName 模型文件名
 */
+ (void)modelWithDictionary:(NSDictionary *)dict modelName:(NSString *)modelName;

@end
