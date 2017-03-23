//
//  Bench+CoreDataProperties.h
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Bench+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Bench (CoreDataProperties)

+ (NSFetchRequest<Bench *> *)fetchRequest;

@property (nonatomic) int64_t innerID;
@property (nonatomic) double maxPrice;
@property (nonatomic) double minPrice;
@property (nonatomic) int64_t remoteID;
@property (nonatomic) int64_t sequence;
@property (nullable, nonatomic, copy) NSString *text;
@property (nullable, nonatomic, copy) NSString *thumbnailFolderPath;
@property (nullable, nonatomic, copy) NSString *thumbnailURLPath;
@property (nullable, nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
