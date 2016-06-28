# ZJModel
一个打印Json字典中模型属性的小工具

## 字典转属性输出
如果有以下一个字典
```objc
NSDictionary *dict = @{
@"name" : @"Jack",
@"icon" : @"lufy.png",
@"age"  : @20,
@"money": @100.9,
@"sex"  : @(1),
@"gay"  : @"true",
@"books": @[@"book1", @"book2"],
};
```
调用ZJModel方法
```objc
// 调用ZJModel方法
[ZJModel modelWithDictionary:dict modelName:@"Model"];
```

最后控制台打印如下
```objc
@interface Model :NSObject
@property (nonatomic, strong) NSNumber *money;
@property (nonatomic,   copy) NSString *gay;
@property (nonatomic, strong) NSArray *books;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic, strong) NSNumber *sex;
@property (nonatomic,   copy) NSString *name;
@property (nonatomic,   copy) NSString *icon;
@end
```
