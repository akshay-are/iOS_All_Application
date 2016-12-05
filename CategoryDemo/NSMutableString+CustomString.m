//
//  NSMutableString+CustomString.m
//  CategoryDemo
//
//  Created by Student-004 on 15/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import "NSMutableString+CustomString.h"

@implementation NSMutableString (CustomString)

-(void)removenumber:(NSMutableString *)string
{
    
    NSString *result=  [[string componentsSeparatedByCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]]componentsJoinedByString:@""];
    
    NSLog(@"%@",result);
    
    
}

-(void)removecharacter:(NSMutableString *)string
{
    
    NSString *result=[[string componentsSeparatedByCharactersInSet:[[NSCharacterSet decimalDigitCharacterSet]invertedSet]]componentsJoinedByString:@""];
    
    NSLog(@"%@",result);
}



@end
