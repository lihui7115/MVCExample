//
//  FGViewController.m
//  MVCExample
//
//  Created by chenlihui on 14-4-13.
//  Copyright (c) 2014年 Future Game. All rights reserved.
//

#import "FGViewController.h"
#import "FGTask.h"
#import "FGTaskCell.h"

@interface FGViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *taskArray;


@end

@implementation FGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    FGTask *task1 = [[FGTask alloc]init];
    task1.title = @"Have Breakfast";
    task1.isCompleted = YES;
    
    FGTask *task2 = [[FGTask alloc]init];
    task2.title = @"Running";
    task2.isCompleted = NO;
    
    FGTask *task3 = [[FGTask alloc]init];
    task3.title = @"Have a rest";
    task3.isCompleted = NO;
    
    self.taskArray = [@[task1, task2, task3] mutableCopy];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.taskArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"TaskCell";
    
    FGTaskCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == NULL) {
        cell = [[FGTaskCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    FGTask *task = self.taskArray[indexPath.row];
    cell.labelTask.text = task.title;
    cell.isCompleted = task.isCompleted;

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    FGTask *task = self.taskArray[indexPath.row];
    task.isCompleted = !task.isCompleted;
    [tableView reloadData];
}

@end
