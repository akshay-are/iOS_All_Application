//
//  CollectionViewController.m
//  NearAroundMe-1
//
//  Created by Student-004 on 21/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "SecondViewController.h"
#import "TableViewController.h"
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface CollectionViewController ()

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    _arr=[[NSMutableArray alloc]initWithObjects:@"atm.png",@"bank.png",@"busstop.png",@"coffeeshop.png",@"college.png", nil];
    
    _lblarr=[[NSMutableArray alloc]initWithObjects:@"ATM",@"BANK",@"BUS STOP",@"RESTAURANT",@"COLLEGE", nil];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
    
    
    
    
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

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of items
    return _arr.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell
    
    
    cell.imgv.image=[UIImage imageNamed:[_arr objectAtIndex:indexPath.row]];
    cell.lbl.text=[_lblarr objectAtIndex:indexPath.row];
    cell.layer.borderColor=[UIColor whiteColor].CGColor;
    cell.layer.borderWidth=3;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/


// Uncomment this method to specify if the specified item should be selected



-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewController *t=[[TableViewController alloc]init];
    
    
    
    if(indexPath.item==0)
    {
        NSLog(@"ATM");
        t.tempstring=@"atm";
        [self.navigationController pushViewController:t animated:YES];
    }
    
    else if(indexPath.item==1)
    {
        NSLog(@"BANK");
        t.tempstring=@"bank";
        [self.navigationController pushViewController:t animated:YES];
    }
    
    else if(indexPath.item==2)
    {
        NSLog(@"BUS STOP");
        t.tempstring=@"bus stop";
        [self.navigationController pushViewController:t animated:YES];
    }
    else if(indexPath.item==3)
    {
        NSLog(@"RESTAURANT");
        t.tempstring=@"restaurant";
        [self.navigationController pushViewController:t animated:YES];
    }
    
    else if(indexPath.item==4)
    {
        NSLog(@"COLLEGE");
        t.tempstring=@"college";
        [self.navigationController pushViewController:t animated:YES];
    }
   
    
}


/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
