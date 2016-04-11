//
//  MyView.m
//  7.31.0响应者链
//
//  Created by kz on 15/7/31.
//  Copyright (c) 2015年 KZ. All rights reserved.
//

#import "MyView.h"

@implementation MyView

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if ([self.name isEqualToString:@"view1"]) {
        [self.nextResponder touchesBegan:touches withEvent:event];
    }
    NSLog(@"%@",self.name);
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.count2++;
    NSLog(@"%d",self.count2);
}
@end
