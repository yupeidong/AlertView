//
//  UIAlertView+Extion.h
//  Alert
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^Block)(NSInteger buttonInterger);

@interface UIAlertView (Extion)

- (void)showAlertView:(Block)block;



@end
