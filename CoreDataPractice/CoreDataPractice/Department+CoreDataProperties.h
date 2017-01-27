//
//  Department+CoreDataProperties.h
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface Department (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *deptid;
@property (nullable, nonatomic, retain) NSString *deptname;
@property (nullable, nonatomic, retain) NSSet<Employee *> *deptcontainemp;
@property (nullable, nonatomic, retain) Company *deptworkforcomp;

@end

@interface Department (CoreDataGeneratedAccessors)

- (void)addDeptcontainempObject:(Employee *)value;
- (void)removeDeptcontainempObject:(Employee *)value;
- (void)addDeptcontainemp:(NSSet<Employee *> *)values;
- (void)removeDeptcontainemp:(NSSet<Employee *> *)values;

@end

NS_ASSUME_NONNULL_END
