//
//  ViewController.m
//  Gestures
//
//  Created by Student-004 on 05/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _lbl1.userInteractionEnabled=YES;
    
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(lpress)];
    longpress.minimumPressDuration=3;
    [_lbl1 addGestureRecognizer:longpress];
    
    
    _lbl2.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(doubletap)];
    tap.numberOfTapsRequired=2;
    [_lbl2 addGestureRecognizer:tap];
    
    
    _imagev.userInteractionEnabled=YES;
    _s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s1.direction=UISwipeGestureRecognizerDirectionLeft;
    
    _s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s2.direction=UISwipeGestureRecognizerDirectionRight;
    
    _s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s3.direction=UISwipeGestureRecognizerDirectionUp;
    
    _s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s4.direction=UISwipeGestureRecognizerDirectionDown;
    
    
    [_imagev addGestureRecognizer:_s1];
    [_imagev addGestureRecognizer:_s2];
    [_imagev addGestureRecognizer:_s3];
    [_imagev addGestureRecognizer:_s4];
}

-(void)lpress
{
    self.view.backgroundColor=[UIColor greenColor];
}

-(void)doubletap
{
    self.view.backgroundColor=[UIColor yellowColor];
}

-(void)swipe:(UISwipeGestureRecognizer *)sender
{
    if(sender==_s1)
        _imagev.image=[UIImage imageNamed:@"2.jpg"];
    else if(sender==_s2)
        _imagev.image=[UIImage imageNamed:@"3.jpg"];
    else if (sender==_s3)
        _imagev.image=[UIImage imageNamed:@"4.jpg"];
    else
        _imagev.image=[UIImage imageNamed:@"5.jpg"];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *mytouchpoint=[touches anyObject];
//    CGPoint points=[mytouchpoint locationInView:self.view];
//    NSLog(@"start at %.f   %.f",points.x,points.y);
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *mytouchpoint=[touches anyObject];
//    CGPoint points=[mytouchpoint locationInView:self.view];
//    NSLog(@"move at %.f   %.f",points.x,points.y);
//
//}
//
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *mytouchpoint=[touches anyObject];
//    CGPoint points=[mytouchpoint locationInView:self.view];
//    NSLog(@"end at %.f   %.f",points.x,points.y);
//
//}
//


@end
