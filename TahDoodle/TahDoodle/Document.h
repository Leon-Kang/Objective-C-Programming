//
//  Document.h
//  TahDoodle
//
//  Created by 康梁 on 15/10/21.
//  Copyright © 2015年 kl. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Document : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
- (IBAction)createNewItem:(id)sender;

@end

