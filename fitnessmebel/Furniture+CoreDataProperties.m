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

@end
