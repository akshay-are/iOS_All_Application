//
//  ParsingTableViewController.h
//  XmlParsing
//
//  Created by Student-004 on 07/11/16.
//  Copyright © 2016 Student-004. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Plant.h"

@interface ParsingTableViewController : UITableViewController<NSXMLParserDelegate>


@property(nonatomic,retain)NSMutableArray *plantarray;
@property(nonatomic,retain)NSMutableString *str1,*str2,*str3,*str4,*str5;
@property(nonatomic,retain)NSURL *url;
@property(nonatomic,retain)Plant *pl;

@property(nonatomic,retain)NSXMLParser *saxparser;

@end
