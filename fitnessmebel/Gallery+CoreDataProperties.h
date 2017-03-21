//
//  Gallery+CoreDataProperties.h
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Gallery+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Gallery (CoreDataProperties)

+ (NSFetchRequest<Gallery *> *)fetchRequest;

@property (nonatomic) int32_t furnitureID;
@property (nonatomic) int32_t innerID;
@property (nonatomic) int32_t remoteID;
@property (nonatomic) int32_t sequence;
@property (nullable, nonatomic, copy) NSString *thumbnailFolderPath;
@property (nullable, nonatomic, copy) NSString *thumbnailURLPath;
@property (nullable, nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
