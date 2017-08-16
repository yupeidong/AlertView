//
//  ViewController.m
//  Alert
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+Extion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"haha" message:@"你在干嘛" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    [alertView showAlertView:^(NSInteger buttonInterger) {
        
        if (buttonInterger == 0) 
            NSLog(@"取消");
        else
            NSLog(@"确定");
        
        
    }];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
