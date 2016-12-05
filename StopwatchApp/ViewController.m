//
//  ViewController.m
//  StopwatchApp
//
//  Created by Student-004 on 15/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    tick=0;
    tick1=0;
    tick2=0;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startbtn:(id)sender
{
    
    
    _timer=[NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(calculatetime) userInfo:nil repeats:YES];
    
}

-(void)calculatetime
{
    tick++;
    
    NSString *str=[[NSString alloc]initWithFormat:@"%d",tick];
    
    _lbl1.text=str;
    
   if(tick==60)
   {
       tick1++;
       NSString *str=[[NSString alloc]initWithFormat:@"%d",tick1];
       _lbl2.text=str;
       tick=0;
   }
    
    if(tick1==60)
    {
        tick2++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",tick2];
        _lbl3.text=str;
        tick1=0;
        
    }

}




- (IBAction)stopbtn:(id)sender
{
    
    
    [_timer invalidate];
    
}
@end
