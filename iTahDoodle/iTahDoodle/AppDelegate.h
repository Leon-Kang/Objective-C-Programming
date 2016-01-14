//
//  AppDelegate.h
//  iTahDoodle
//
//  Created by 康梁 on 15/10/19.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <UIKit/UIKit.h>

// 声明辅助函数，该函数会返回特定文件的路径，用于保存用户的任务列表信息
NSString *docPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;


@end

