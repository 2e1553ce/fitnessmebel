//
//  AVRestKitObjectManager.h
//  fitnessmebel
//
//  Created by aiuar on 13.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import <RestKit/RestKit.h>

@interface AVRestKitObjectManager : NSObject

- (NSManagedObjectContext *)managedObjectContext;

- (void)getObjectsAtPath:(NSString *)path
                    parameters:(NSDictionary *)params
                       success:(void (^) (RKObjectRequestOperation * operation, RKMappingResult * mappingResult)) success
                       failure:(void (^) (RKObjectRequestOperation * operation, NSError * error))failure;

- (void)addMappingForEntityForName:(NSString *)entityName
andAttributeMappingsFromDictionary:(NSDictionary *)attributeMappings
       andIdentificationAttributes:(NSArray *)ids
                    andPathPattern:(NSString *)pathPattern;

- (void)configureWithManagedObjectModel:(NSManagedObjectModel *)managedObjectModel;

+ (AVRestKitObjectManager *)manager;

@end
