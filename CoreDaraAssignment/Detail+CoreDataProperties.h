//
//  Detail+CoreDataProperties.h
//  CoreDaraAssignment
//
//  Created by Student-004 on 18/10/16.
//  Copyright © 2016 Student-004. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Detail.h"

NS_ASSUME_NONNULL_BEGIN

@interface Detail (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *pid;
@property (nullable, nonatomic, retain) NSString *pname;
@property (nullable, nonatomic, retain) NSString *paddress;
@property (nullable, nonatomic, retain) NSNumber *pmobile;

@end

NS_ASSUME_NONNULL_END
