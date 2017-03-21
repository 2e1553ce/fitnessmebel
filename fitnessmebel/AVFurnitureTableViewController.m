//
//  AVFurnitureTableViewController.m
//  fitnessmebel
//
//  Created by aiuar on 20.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//
#import "AVFurnitureTableViewController.h"

#import "AVRestKitObjectManager.h"
#import "AllAroundPullView.h"
#import "AVFurnitureDetailedCell.h"

@interface AVFurnitureTableViewController ()

@property (assign, nonatomic) NSInteger numberOfItems;
@property (strong, nonatomic) AllAroundPullView *bottomPullView;
@property (assign, nonatomic) BOOL noRequestsMade;

@end

@implementation AVFurnitureTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self getData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 

- (void)getData {
    
    switch (self.type) {
        case 0:
        case 1:
        case 2: {
            
            NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"fitnessmebel" withExtension:@"momd"];
            [[AVRestKitObjectManager manager] configureWithManagedObjectModel:[[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL]];
            
            [[AVRestKitObjectManager manager] addMappingForEntityForName:@"Furniture"
                                      andAttributeMappingsFromDictionary:@{
                                                                           @"shkaf_id" : @"remoteID",
                                                                           @"art" : @"title",
                                                                           @"text" : @"text",
                                                                           @"el_plast" : @"minPrice",
                                                                           @"assa_plast" : @"maxPrice",
                                                                           @"seq" : @"sequence",
                                                                           @"type" : @"type"
                                                                           }
                                             andIdentificationAttributes:@[@"remoteID"]
                                                          andPathPattern:FITNESSMEBEL_API_PATH_PATTERN];
            
            NSString *typeOfCabin;
            if (self.type == 0) {
                typeOfCabin = @"cabins";
            } else if(self.type == 1) {
                typeOfCabin = @"otherEquip";
            } else {
                typeOfCabin = @"receptions";
            }
            
            [[AVRestKitObjectManager manager] getObjectsAtPath:typeOfCabin parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                
            } failure:^(RKObjectRequestOperation *operation, NSError *error) {
                NSLog(@"%@", [error localizedDescription]);
            }];
        }
            break;
        
        case 3: {
            
            NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"fitnessmebel" withExtension:@"momd"];
            [[AVRestKitObjectManager manager] configureWithManagedObjectModel:[[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL]];
            
            [[AVRestKitObjectManager manager] addMappingForEntityForName:@"Furniture"
                                      andAttributeMappingsFromDictionary:@{
                                                                           @"skam_id" : @"remoteID",
                                                                           @"name" : @"title",
                                                                           @"description" : @"text",
                                                                           @"seq" : @"sequence"
                                                                           }
                                             andIdentificationAttributes:@[@"remoteID"]
                                                          andPathPattern:FITNESSMEBEL_API_PATH_PATTERN];
            
            [[AVRestKitObjectManager manager] getObjectsAtPath:@"benchs" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                
            } failure:^(RKObjectRequestOperation *operation, NSError *error) {
                NSLog(@"%@", [error localizedDescription]);
            }];
        }
            break;
        
        case 4: {
            
            NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"fitnessmebel" withExtension:@"momd"];
            [[AVRestKitObjectManager manager] configureWithManagedObjectModel:[[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL]];
            
            [[AVRestKitObjectManager manager] addMappingForEntityForName:@"Furniture"
                                      andAttributeMappingsFromDictionary:@{
                                                                           @"acces_id" : @"remoteID",
                                                                           @"name" : @"title",
                                                                           @"description" : @"text",
                                                                           @"seq" : @"sequence"
                                                                           }
                                             andIdentificationAttributes:@[@"remoteID"]
                                                          andPathPattern:FITNESSMEBEL_API_PATH_PATTERN];
            
            [[AVRestKitObjectManager manager] getObjectsAtPath:@"accessories" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult) {
                
            } failure:^(RKObjectRequestOperation *operation, NSError *error) {
                NSLog(@"%@", [error localizedDescription]);
            }];
        }
            break;
            
        default:
            break;
    }
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    AVFurnitureDetailedCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
 
    return cell;
}

@end
