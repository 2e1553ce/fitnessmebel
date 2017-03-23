//
//  Furniture+CoreDataProperties.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Furniture+CoreDataProperties.h"

@implementation Furniture (CoreDataProperties)

+ (NSFetchRequest<Furniture *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Furniture"];
}

@dynamic innerID;
@dynamic maxPrice;
@dynamic minPrice;
@dynamic remoteID;
@dynamic sequence;
@dynamic text;
@dynamic thumbnailFolderPath;
@dynamic thumbnailURLPath;
@dynamic title;
@dynamic type;

// Получает число всех
+ (NSInteger)allItemsCountWithContext:(NSManagedObjectContext *)managedObjectContext {
    
    NSUInteger retVal;
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Furniture" inManagedObjectContext:managedObjectContext];
    [request setEntity:entity];
    NSError *err;
    retVal = [managedObjectContext countForFetchRequest:request error:&err];
    
    if (err)
        XLog(@"Error: %@", [err localizedDescription]);
    
    return retVal;

}
// Возвращает итем по его innerID.
+ (Furniture *)itemWithManagedObjectContext:(NSManagedObjectContext *)context andInnerID:(NSInteger)itemInnerID {
    
    Furniture *retVal = nil;
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Furniture" inManagedObjectContext:context];
    [request setEntity:entity];
    NSPredicate *searchFilter = [NSPredicate predicateWithFormat:@"innerID = %d", charInnerID];
    [request setPredicate:searchFilter];
    
    NSError *err;
    NSArray *results = [context executeFetchRequest:request error:&err];
    if (results.count > 0)
        retVal = [results objectAtIndex:0];
    
    if (err)
        XLog(@"Error: %@", [err localizedDescription]);
    
    return retVal;

}


@end
