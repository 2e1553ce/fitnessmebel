//
//  Colors+CoreDataProperties.m
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Colors+CoreDataProperties.h"

@implementation Colors (CoreDataProperties)

+ (NSFetchRequest<Colors *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Colors"];
}

@dynamic catalog;
@dynamic colorRGB;
@dynamic innerID;
@dynamic remoteID;
@dynamic sequence;
@dynamic title;

@end
