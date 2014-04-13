//
//  FGTaskCell.h
//  MVCExample
//
//  Created by chenlihui on 14-4-13.
//  Copyright (c) 2014年 Future Game. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FGTaskCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *labelTask;
@property (nonatomic) BOOL isCompleted;
@end
