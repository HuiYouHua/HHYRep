//
//  UITableView+Regist.h
//  YiChatClient
//
//  Created by 张泽楠 on 15/12/8.
//  Copyright © 2015年 ds. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  前提:单元格的重用标识符和类名一致
 */
@interface UITableView (Regist)

- (void)zy_registNibCell:(Class)aClass;
- (void)zy_registClassCell:(Class)aClass;


@end











