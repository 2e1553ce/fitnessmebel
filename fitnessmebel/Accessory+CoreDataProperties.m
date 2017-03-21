//
//  Accessory+CoreDataProperties.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Accessory+CoreDataProperties.h"

@implementation Accessory (CoreDataProperties)

+ (NSFetchRequest<Accessory *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Accessory"];
}

@dynamic innerID;
@dynamic remoteID;
@dynamic sequence;
@dynamic text;
@dynamic thumbnailFolderPath;
@dynamic thumbnailURLPath;
@dynamic title;

@end
