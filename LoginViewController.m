//
//  LoginViewController.m
//  UIDemo
//
//  Created by Student-004 on 07/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor orangeColor];
    
    
    _container=[[UIImageView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    _actualimage=[UIImage imageNamed:@"31"];
    _container.image=_actualimage;
    [self.view addSubview:_container];
    

    _lbl1=[[UILabel alloc]init];
    _lbl1.frame=CGRectMake(10, 50, 100, 50);
    _lbl1.text=@"Username";
    _lbl1.textColor=[UIColor redColor];
    _lbl1.backgroundColor=[UIColor yellowColor];
    _lbl1.font=[UIFont fontWithName:@"TimesNewRoman" size:20];
    _lbl1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lbl1];
    
    _lbl2=[[UILabel alloc] initWithFrame:CGRectMake(10, 110, 100, 50)];
    _lbl2.text=@"Password";
    _lbl2.textColor=[UIColor redColor];
    _lbl2.backgroundColor=[UIColor yellowColor];
    _lbl2.font=[UIFont fontWithName:@"TimesNewRoman" size:20];
    _lbl2.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lbl2];

    _tf1=[[UITextField alloc]init];
    _tf1.frame=CGRectMake(180, 60, 150, 30);
    _tf1.borderStyle=UITextBorderStyleRoundedRect;
    _tf1.keyboardType=UIKeyboardTypeAlphabet;
    _tf1.returnKeyType=UIReturnKeyNext;
    _tf1.delegate=self;
    [self.view addSubview:_tf1];
    
    
    _tf2=[[UITextField alloc]initWithFrame:CGRectMake(180, 110, 150, 30)];
    _tf2.borderStyle=UITextBorderStyleRoundedRect;
    _tf2.returnKeyType=UIReturnKeyDone;
    _tf2.secureTextEntry=YES;
    _tf2.delegate=self;
    [self.view addSubview:_tf2];
    
    _btn1=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn1.frame=CGRectMake(100, 150, 100, 50);
    [_btn1 setTitle:@"LOGIN" forState:UIControlStateNormal];
    [_btn1 setTitle:@"SELECTED" forState:UIControlStateHighlighted];
    [_btn1 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];
    
    _btn2=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btn2.frame=CGRectMake(200, 150, 100, 50);
    [_btn2 setTitle:@"Cancel" forState:UIControlStateNormal];
    [_btn2 addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn2];
   
    
    
    _swt1=[[UISwitch alloc]initWithFrame:CGRectMake(100,210,50, 30)];
    [_swt1 addTarget:self action:@selector(switchchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_swt1];
    
    
    
    _slider1=[[UISlider alloc]initWithFrame:CGRectMake(50, 250, 250, 30)];
    _slider1.minimumTrackTintColor=[UIColor magentaColor];
    _slider1.maximumTrackTintColor=[UIColor cyanColor];
    _slider1.minimumValue=1;
    _slider1.maximumValue=100;
    [_slider1 addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider1];
    
    
    
    
    
    _v1=[[UIView alloc]initWithFrame:CGRectMake(10,300, 250, 100)];
    _v1.backgroundColor=[UIColor colorWithRed:0.4f green:0.5f blue:1.0f alpha:1.0f];
    [self.view addSubview:_v1];
    
    
    
    _slider2=[[UISlider alloc]initWithFrame:CGRectMake(50, 400, 250, 30)];
    _slider2.minimumTrackTintColor=[UIColor redColor];
   // _slider2.maximumTrackTintColor=[UIColor cyanColor];
    _slider2.minimumValue=0.0f;
    _slider2.maximumValue=255.0f;
    [_slider2 addTarget:self action:@selector(slidervaluechange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider2];
    
    
    _slider3=[[UISlider alloc]initWithFrame:CGRectMake(50, 430, 250, 30)];
    _slider3.minimumTrackTintColor=[UIColor greenColor];
    //_slider3.maximumTrackTintColor=[UIColor cyanColor];
    _slider3.minimumValue=0.0f;
    _slider3.maximumValue=255.0f;
    [_slider3 addTarget:self action:@selector(slidervaluechange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider3];
    

    
    _slider4=[[UISlider alloc]initWithFrame:CGRectMake(50, 460, 250, 30)];
    _slider4.minimumTrackTintColor=[UIColor blueColor];
   // _slider4.maximumTrackTintColor=[UIColor cyanColor];
    _slider4.minimumValue=0.0f;
    _slider4.maximumValue=255.0f;
    [_slider4 addTarget:self action:@selector(slidervaluechange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider4];
    

    _segment=[[UISegmentedControl alloc] initWithItems:[NSArray arrayWithObjects:@"RED",@"GREEN",@"BLUE", nil]];
    _segment.frame=CGRectMake(50, 520, 250, 50);
    [_segment addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segment];
    
    
    self.navigationItem.title=@"login";
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(barbtnclick)];
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
    
    
}



-(void)barbtnclick
{
    PickerViewController *p=[[PickerViewController alloc]init];
    [self.navigationController pushViewController:p animated:YES];
  
    
}


-(void)sliderchange
{
    NSLog(@"Slider 1:%.f",_slider1.value);
//    NSLog(@"Slider 2:%.f",_slider2.value);
//    NSLog(@"Slider 3:%.f",_slider3.value);
//    NSLog(@"Slider 4:%.f",_slider4.value);

}

-(void)slidervaluechange:(UISlider *)sender1
{
    CGFloat redVal = 0.0f;
    CGFloat greenVal = 0.0f;
    CGFloat blueVal = 0.0f;
    
     sender1=_slider2;
        redVal = _slider2.value;
    
    sender1 = _slider3;
        greenVal = _slider3.value;
    
    sender1 = _slider4;
        blueVal = _slider4.value;
    
    _v1.backgroundColor = [UIColor colorWithRed:redVal/255.0 green:greenVal/255.0 blue:blueVal/255.0 alpha:1.0f];

}


-(void)btnclick:(UIButton *)sender
{
    if(sender==_btn1)
    {
        if([_tf1.text isEqualToString:_tf2.text])
            self.view.backgroundColor=[UIColor greenColor];
        else
            self.view.backgroundColor=[UIColor redColor];
        
    }
    else
        NSLog(@"Button 2 clicked");
}



-(void)switchchange
{
    if(_swt1.on)
        NSLog(@"ON");
    else
        NSLog(@"OFF");
    
}



-(void)segmentchange
{
    switch (_segment.selectedSegmentIndex)
    {
        case 0:self.view.backgroundColor=[UIColor redColor];
            break;
            
        case 1:self.view.backgroundColor=[UIColor greenColor];
            break;
         
        case 2:self.view.backgroundColor=[UIColor blueColor];
            break;
            
            
        default:
            break;
    }
}


//-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
//{
//    NSLog(@"should editing");
//    return YES;
//}
//
//-(void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    NSLog(@"did begin");
//    
//}
//
//-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
//{
//    NSLog(@"should end editing");
//    return YES ;
//}
//
//-(void)textFieldDidEndEditing:(UITextField *)textField
//{
//    NSLog(@"did end editing");
//}
//


-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField==_tf1)
    {
        [_tf2 becomeFirstResponder];
    }
    else
    {
        [_tf2 resignFirstResponder];
    }
    
    return YES;
    
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

@end
