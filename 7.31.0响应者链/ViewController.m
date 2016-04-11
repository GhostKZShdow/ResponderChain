//
//  ViewController.m
//  7.31.0响应者链
//
//  Created by kz on 15/7/31.
//  Copyright (c) 2015年 KZ. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

- (IBAction)btn2Action:(id)sender;

- (IBAction)btn1Action:(id)sender;
@property (weak, nonatomic) IBOutlet MyView *view1;
@property (weak, nonatomic) IBOutlet MyView *view2;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.view1.name=@"view1";
    self.view2.name=@"view2";
    [super viewDidLoad];
    //多点触摸
    self.view2.multipleTouchEnabled=YES;
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSUInteger num=[[touches anyObject]tapCount];
    NSUInteger count=[touches count];
    NSLog(@"%lu\t%lu",(unsigned long)num,(unsigned long)count);
}
//-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    self.count1++;
//    NSLog(@"%d",self.count1);
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btn2Action:(id)sender {
    NSLog(@"点击了小view中的button");
}

- (IBAction)btn1Action:(id)sender {
    NSLog(@"点击了大view中的button");
}
@end
