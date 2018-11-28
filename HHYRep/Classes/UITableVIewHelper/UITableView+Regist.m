//
//  UITableView+Regist.m
//  YiChatClient
//
//  Created by 张泽楠 on 15/12/8.
//  Copyright © 2015年 ds. All rights reserved.
//

#import "UITableView+Regist.h"

@implementation UITableView (Regist)

- (void)zy_registNibCell:(Class)aClass {
    [self registerNib:[UINib nibWithNibName:NSStringFromClass(aClass) bundle:nil] forCellReuseIdentifier:NSStringFromClass(aClass)];
}
- (void)zy_registClassCell:(Class)aClass {
    [self registerClass:aClass forCellReuseIdentifier:NSStringFromClass(aClass)];
}

@end







