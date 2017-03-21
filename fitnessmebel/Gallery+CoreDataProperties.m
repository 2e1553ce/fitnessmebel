//
//  Gallery+CoreDataProperties.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Gallery+CoreDataProperties.h"

@implementation Gallery (CoreDataProperties)

+ (NSFetchRequest<Gallery *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Gallery"];
}

@dynamic furnitureID;
@dynamic innerID;
@dynamic remoteID;
@dynamic sequence;
@dynamic thumbnailFolderPath;
@dynamic thumbnailURLPath;
@dynamic title;

@end
