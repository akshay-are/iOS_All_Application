//
//  ThirdViewController.m
//  CoreDaraAssignment
//
//  Created by Student-004 on 18/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"
#import "Detail.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

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

- (IBAction)searchbtn:(id)sender {
    

    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Detail"];
    NSArray *result=[context executeFetchRequest:request error:nil ];
    
    for( Detail *o in result)
    {
        long t=[o.pid integerValue];
        int i=(int)t;
        int p=[_itext.text intValue];
        if(i==p)
        {
            _ntext.text=o.pname;
            _addtext.text=o.paddress;
            _mobtext.text=[NSString stringWithFormat:@"%@",o.pmobile];
        }
    }

    
}

- (IBAction)deletebtn:(id)sender {
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    NSFetchRequest *request=[NSFetchRequest fetchRequestWithEntityName:@"Detail"];
    NSArray * result = [context executeFetchRequest:request error:nil];
    for(Detail *d in result)
    {
        int i=[_itext.text intValue];
        NSInteger t=[d.pid integerValue];
        long a=(NSInteger )t;
        if(i==a)
        
        {
            [context deleteObject:d];
            [context save:nil];
            NSLog(@"Record Deleted");
        }
        
}
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction)updatebtn:(id)sender {
    UIApplication *myapplication=[UIApplication sharedApplication];
    AppDelegate *myappdel=(AppDelegate *)myapplication.delegate;
    NSManagedObjectContext *context=myappdel.managedObjectContext;
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"Detail"];
    NSPredicate * predicte = [NSPredicate predicateWithFormat:@"pid == %@",_itext.text];
    [request setPredicate:predicte];    
    NSArray * result = [context executeFetchRequest:request error:nil];
    if (result.count == 0)
    {
        NSLog(@"No user in table");
    }
    else
    {
        Detail *d = [result firstObject];
        d.pname=_ntext.text;
        d.paddress=_addtext.text;
       // d.pmobile = [NSNumber numberWithInt:_mobtext.text];
        [context save:nil];
    }

    [self.navigationController popViewControllerAnimated:YES];
    
    
    
}
@end
