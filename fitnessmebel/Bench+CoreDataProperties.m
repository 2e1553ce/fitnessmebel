//
//  Bench+CoreDataProperties.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Bench+CoreDataProperties.h"

@implementation Bench (CoreDataProperties)

+ (NSFetchRequest<Bench *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Bench"];
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

@end
