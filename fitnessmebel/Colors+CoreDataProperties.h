//
//  Colors+CoreDataProperties.h
//  fitnessmebel
//
//  Created by aiuar on 21.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "Colors+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Colors (CoreDataProperties)

+ (NSFetchRequest<Colors *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *catalog;
@property (nullable, nonatomic, copy) NSString *colorRGB;
@property (nonatomic) int32_t innerID;
@property (nonatomic) int32_t remoteID;
@property (nonatomic) int32_t sequence;
@property (nullable, nonatomic, copy) NSString *title;

@end

NS_ASSUME_NONNULL_END
