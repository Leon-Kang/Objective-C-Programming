//
//  AppDelegate.m
//  iTahDoodle
//
//  Created by 康梁 on 15/10/19.
//  Copyright © 2015年 kl. All rights reserved.
//

#import "AppDelegate.h"

NSString *docPath() {
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserCancelledError, YES);
    
    return [[pathList objectAtIndex:0] stringByAppendingString:@"data.td"];
}

@interface AppDelegate ()

@end

@implementation AppDelegate

#pragma mark -----应用委托对象的回调方法

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 尝试从文件读取已有的任务数据，并还原成数组对象
    NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];
    
    if (plist) {
        // 如果数据存在，就将其拷贝成相应的实例变量
        tasks = [plist mutableCopy];
    } else {
        // 否则就创建一个空的NSMutableArray对象
        tasks = [[NSMutableArray alloc] init];
    }
    
    // tasks数组是否为空？
    if ([tasks count] == 0) {
        // 加入若干NSString对象
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Feed the hogs"];
        [tasks addObject:@"Chop the logs"];
        
    }
    
    // 创建并设置UIWindow实例
    // CGRect是c结构，其下两个成员也是c结构：origin(x,y)和size(width,height)
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    // 设置三个UI对象的frame属性
    // CGRectMake()函数可以创建CGRect结构，参数是(x,y,width,height)
    CGRect tableFrame = CGRectMake(0, 80, 320, 300);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // 创建并设置UITableView对象
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // 将当前对象设置为UITableView对象的dataSource
    [taskTable setDataSource:self];
    
    // 创建并设置UITextField对象，以便用户能够输入新任务
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task,tap Insert"];
    
    // 创建并设置UIButton对象(类型是圆角按钮)，按下时将新任务插入UITableView对象
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    // 按钮的回调通过目标-动作机制实现
    // 将Insert按钮的目标-动作设置为：当前对象的addTask：实例方法
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    // 为按钮设置标题
    [insertButton setTitle:@"Insert"
                  forState:UIControlStateNormal];
    
    // 将以下三个UI对象加入UIWindow实例
    [[self window] addSubview:taskField];
    [[self window] addSubview:taskTable];
    [[self window] addSubview:insertButton];
    
    // 设置UIWindow实例的背景颜色，并放上屏幕
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

- (void)addTask:(id)sender {
    // 创建新任务的文字描述
    NSString *t = [taskField text];
    
    // 如果taskField没有内容，就直接返回
    if ([t isEqualToString:@""]) {
        return;
    }
    
    // 将新任务(字符串)加入tasks数组
    [tasks addObject:t];
    
    // 刷新表格视图，显示新加入的任务
    [taskTable reloadData];
    
    // 清空taskField
    [taskField setText:@""];
    
    // 关闭键盘
    [taskField resignFirstResponder];
}

#pragma mark -----管理表格视图

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // 因为iTahDoodle中的表格视图只有一个表格段
    // 所以可以忽略传入的表格段牵引
    // 直接返回任务数组所含对象的个数
    return [tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 为了提升性能，这里会重用已经移出屏幕的UITableViewCell对象
    // 并在设置新的内容后返回该对象，而不是每次都需要创建新的对象
    // 首先，检查是否有可以重用的UITableViewCell对象
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!c) {
        // 只有当没有可以重用的UITableViewCell时才创建新的对象
        // 本例中的模型对象是todoItem数组
        NSString *item = [tasks objectAtIndex:[indexPath row]];
        [[c textLabel] setText:item];
    }
    
    // 返回设置后的UITableViewCell对象
    return c;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    // 将任务数组保存至文件
    [tasks writeToFile:docPath() atomically:YES];
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    
    // 将任务数组保存至文件
    [tasks writeToFile:docPath() atomically:YES];
}

@end
