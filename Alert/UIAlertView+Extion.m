//
//  UIAlertView+Extion.m
//  Alert
//
//  Created by 喻沛 on 2017/8/16.
//  Copyright © 2017年 yupeidong. All rights reserved.
//

#import "UIAlertView+Extion.h"
#import <objc/runtime.h>

static char key;

@implementation UIAlertView (Extion)

- (void)showAlertView:(Block)block
{
    
    if (block) {
        objc_removeAssociatedObjects(self);
        objc_setAssociatedObject(self, &key, block, OBJC_ASSOCIATION_COPY);
        self.delegate = self;
    }
    
    [self show];
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    Block block = objc_getAssociatedObject(self, &key);
    if (block) {
        block(buttonIndex);
    }
    
}


@end
