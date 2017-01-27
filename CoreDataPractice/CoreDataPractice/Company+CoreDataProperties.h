//
//  Company+CoreDataProperties.h
//  CoreDataPractice
//
//  Created by Ashlesha on 27/12/16.
//  Copyright © 2016 Akshay. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *compid;
@property (nullable, nonatomic, retain) NSString *compname;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *companycontaindept;

@end

@interface Company (CoreDataGeneratedAccessors)

- (void)addCompanycontaindeptObject:(NSManagedObject *)value;
- (void)removeCompanycontaindeptObject:(NSManagedObject *)value;
- (void)addCompanycontaindept:(NSSet<NSManagedObject *> *)values;
- (void)removeCompanycontaindept:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
