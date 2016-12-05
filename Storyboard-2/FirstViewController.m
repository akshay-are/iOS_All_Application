//
//  FirstViewController.m
//  Storyboard-2
//
//  Created by Student-004 on 04/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/




-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if([identifier isEqualToString:@"fvctosvc"])
    {
        if([_tf1.text isEqualToString:_tf2.text])
            return true;
        else
            return false;
    }
    else
        return false;
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

   
     if([[segue identifier]isEqualToString:@"fvctosvc"])
     {
        SecondViewController *svc=[segue destinationViewController];
        svc.temp=_tf1.text;
        svc.temp1=_tf2.text;
     }
    
        

}







@end
