//
//  Employee+CoreDataProperties.h
//  CoreData_Practice2
//
//  Created by Ashlesha on 19/01/17.
//  Copyright © 2017 Akshay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *empid;
@property (nullable, nonatomic, retain) NSString *empname;
@property (nullable, nonatomic, retain) NSString *empdepartment;

@end

NS_ASSUME_NONNULL_END
