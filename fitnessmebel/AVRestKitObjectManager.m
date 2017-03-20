//
//  AVRestKitObjectManager.m
//  fitnessmebel
//
//  Created by aiuar on 13.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVRestKitObjectManager.h"

@interface AVRestKitObjectManager ()

@property (strong, nonatomic) RKObjectManager *objectManager;
@property (strong, nonatomic) RKManagedObjectStore *managedObjectStore;

@end

@implementation AVRestKitObjectManager

- (NSManagedObjectContext *)managedObjectContext
{
    return self.managedObjectStore.mainQueueManagedObjectContext;
}

- (id)init {
    
    self = [super init];
    if (self)
    {
        // Initialize AFNetworking HTTPClient.
        NSURL *baseURL = [NSURL URLWithString:FITNESSMEBEL_BASEPOINT];
        AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
        
        // Initialize RestKit's object manager.
        self.objectManager = [[RKObjectManager alloc] initWithHTTPClient:client];
    }
    
    return self;
}

- (void)configureWithManagedObjectModel:(NSManagedObjectModel *)managedObjectModel {
    
    if (!managedObjectModel)
        return;
    
    self.managedObjectStore = [[RKManagedObjectStore alloc] initWithManagedObjectModel:managedObjectModel];
    NSError *error;
    if (!RKEnsureDirectoryExistsAtPath(RKApplicationDataDirectory(), &error))
        RKLogError(@"Failed to create Application Data Directory at path '%@': %@", RKApplicationDataDirectory(), error);
    
    NSString *path = [RKApplicationDataDirectory() stringByAppendingPathComponent:@"fitnessmebel.sqlite"];
    if (![self.managedObjectStore addSQLitePersistentStoreAtPath:path
                                          fromSeedDatabaseAtPath:nil
                                               withConfiguration:nil options:nil error:&error])
        RKLogError(@"Failed adding persistent store at path '%@': %@", path, error);
    
    [self.managedObjectStore createManagedObjectContexts];
    self.objectManager.managedObjectStore = self.managedObjectStore;
}


- (void)getObjectsAtPath:(NSString *)path
              parameters:(NSDictionary *)params
                 success:(void (^) (RKObjectRequestOperation * operation, RKMappingResult * mappingResult)) success
                 failure:(void (^) (RKObjectRequestOperation * operation, NSError * error))failure {
    
    // Подготовка нужных параметров
    NSMutableDictionary *queryParams = [NSMutableDictionary dictionaryWithDictionary:@{@"token" : FITNESSMEBEL_TOKEN,
                                                                                       @"object" : path
                                                                                       }];
    //if (params)
      //  [queryParams addEntriesFromDictionary:params];
    
    // Непосредственный вызов метода у объекта objectManager с вновь собранными параметрами
    [self.objectManager getObjectsAtPath: FITNESSMEBEL_API_PATH_PATTERN
                              parameters:queryParams
                                 success:success
                                 failure:failure];
}



- (void)addMappingForEntityForName:(NSString *)entityName
andAttributeMappingsFromDictionary:(NSDictionary *)attributeMappings
       andIdentificationAttributes:(NSArray *)ids
                    andPathPattern:(NSString *)pathPattern {
    
    if (!self.managedObjectStore)
        return;
    
    RKEntityMapping *objectMapping = [RKEntityMapping mappingForEntityForName:entityName
                                                         inManagedObjectStore:self.managedObjectStore];
    // Указываем, какие атрибуты должны мапиться.
    [objectMapping addAttributeMappingsFromDictionary:attributeMappings];
    // Указываем, какие атрибуты являются идентификаторами. Важно для того, чтобы не было дубликатов в локальной базе.
    objectMapping.identificationAttributes = ids;
    
    // Создаем дескриптор ответа, ориентируясь на формат ответов нашего сервера и добавляем его в менеджер.
    RKResponseDescriptor *characterResponseDescriptor =
    [RKResponseDescriptor responseDescriptorWithMapping:objectMapping
                                                 method:RKRequestMethodGET
                                            pathPattern:FITNESSMEBEL_API_PATH_PATTERN
                                                keyPath:@""
                                            statusCodes:[NSIndexSet indexSetWithIndex:200]];
    [self.objectManager addResponseDescriptor:characterResponseDescriptor];

}

+ (AVRestKitObjectManager *)manager {
    
    static AVRestKitObjectManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[AVRestKitObjectManager alloc] init];
    });
    
    return manager;
}

@end
