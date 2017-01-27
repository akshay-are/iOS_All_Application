//
//  Employee+CoreDataProperties.h
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Employee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *empid;
@property (nullable, nonatomic, retain) NSString *empfname;
@property (nullable, nonatomic, retain) NSString *emplname;
@property (nullable, nonatomic, retain) NSString *empdept;
@property (nullable, nonatomic, retain) NSSet<Department *> *empworkin;

@end

@interface Employee (CoreDataGeneratedAccessors)

- (void)addEmpworkinObject:(Department *)value;
- (void)removeEmpworkinObject:(Department *)value;
- (void)addEmpworkin:(NSSet<Department *> *)values;
- (void)removeEmpworkin:(NSSet<Department *> *)values;

@end

NS_ASSUME_NONNULL_END
