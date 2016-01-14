//
//  Logger.h
//  Callbacks
//
//  Created by 康梁 on 15/10/18.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

- (void)sayOuch:(NSTimer *)t;

@end
