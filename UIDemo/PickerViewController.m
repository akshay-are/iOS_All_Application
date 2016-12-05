//
//  PickerViewController.m
//  UIDemo
//
//  Created by Student-004 on 14/09/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "PickerViewController.h"
#import "TableViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    _picker1=[[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 250)];
    _picker1.delegate=self;
    _picker1.dataSource=self;
    [self.view addSubview:_picker1];
    
    _cityarray=[[NSMutableArray alloc]initWithObjects:@"Ahmednagar",@"Pune",@"Nasik",@"Mumbai", nil];
    _colourarray=[[NSMutableArray alloc]initWithObjects:@"Red",@"Orange",@"Blue",@"White", nil];
    
    _imgarray=[[NSMutableArray alloc]initWithObjects:@"31",@"1",@"01",@"2",@"3",@"4",@"11", nil];
    
    _lbl1=[[UILabel alloc]initWithFrame:CGRectMake(20, 300, 200, 50)];
    [self.view addSubview:_lbl1];
    
    
    
    
//    _tf1=[[UITextField alloc]initWithFrame:CGRectMake(20, 300, 200,50)];
//    _tf1.borderStyle=UITextBorderStyleBezel;
//    _tf1.delegate=self;
//   // _tf1.text=[_cityarray objectAtIndex:[_picker1 selectedRowInComponent:0]];
  //  self.picker1=[_cityarray objectAtIndex:0];
    
//    [self.view addSubview:_tf1];
//    
//    _tf2=[[UITextField alloc]initWithFrame:CGRectMake(20, 350, 200,50)];
//    _tf2.borderStyle=UITextBorderStyleBezel;
//    _tf2.delegate=self;
//    [self.view addSubview:_tf2];
//    
    
    _dtpicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(20, 450, 300, 200)];
    [_dtpicker addTarget:self action:@selector(selectdate:) forControlEvents:UIControlEventValueChanged];
     _dtpicker.datePickerMode=UIDatePickerModeDate;
    [self.view addSubview:_dtpicker];
    
    
    
    
    
    
 self.navigationController.title=@"pickerview";
UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(barbtnclick)];
self.navigationItem.rightBarButtonItem=rbtn;




}



-(void)barbtnclick
{
    TableViewController *t=[[TableViewController alloc]init];
    [self.navigationController pushViewController:t animated:YES];
    
    
}




-(void)selectdate:(UIDatePicker *)sender
{
   // _tf1.text=_dtpicker.date;
   // return ;
    
    NSDate *date=self.dtpicker.date;
   
    NSLog(@"DATE=%@",date);
    
    
    //return _dtpicker;
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
//    if(component==0)
//        return _cityarray.count;
//    else
//        return _colourarray.count;
    return _imgarray.count;
}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImageView *img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:[_imgarray objectAtIndex:row]]];
    return img;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    _lbl1.text=[_imgarray objectAtIndex:row];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 200;
    
}



//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
//    
//     NSString *title=nil;
//    if(component==0)
//        
//   
//
//    switch (row) {
//        case 0:
//           title= @"Ahmednagar";
//            break;
//           
//        case 1:
//            title= @"Pune";
//            break;
//
//        case 2:
//            title= @"Mumbai";
//            break;
//
//        case 3:
//            title= @"Nashik";
//            break;
//
//        default:
//            break;
//    }
//    else
//        
//        switch (row) {
//            case 0:
//                title=@"Red";
//                break;
//                
//            case 1:
//                title= @"Orange";
//                break;
//
//            case 2:
//                title= @"Pink";
//                break;
//
//            case 3:
//                title= @"Blue";
//                break;
//
//            default:
//                break;
//        }
//        
//    
//    return title;
//}
//




//-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
//{
////    if(component==0)
//    {
//        //_tf1.text=[_cityarray objectAtIndex:row];
//      return [_cityarray objectAtIndex:row];
//    }
//    
//    else
//    {
//        _tf2.text=[_colourarray objectAtIndex:row];
//        return [_colourarray objectAtIndex:row];
//    }
//   //_tf1.text=[_cityarray objectAtIndex:row];
//    

   // return _imgarray.count;
    
//}


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
