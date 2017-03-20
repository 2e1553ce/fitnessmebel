//
//  AVMenuTableViewController.m
//  fitnessmebel
//
//  Created by aiuar on 09.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVMenuTableViewController.h"

#import "AVMenuItem.h"
#import "AVMenuCell.h"

#import "AVFurnitureTableViewController.h"
#import "AVGalleryCollectionViewController.h"
#import "AVColorsCollectionViewController.h"
#import "AVContactsViewController.h"

@interface AVMenuTableViewController ()

@end

@implementation AVMenuTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createMenu];
    self.title = @"www.fitnessmebel.ru";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Filling menu

- (void)createMenu {

    AVMenuItem *cabin = [[AVMenuItem alloc] initWithTitle:@"Шкафы для раздевалок" imageName:@"shkafi.png" type: 0];
    AVMenuItem *bench = [[AVMenuItem alloc] initWithTitle:@"Скамейки для раздевалок" imageName:@"skameiki.png" type: 1];
    AVMenuItem *reception = [[AVMenuItem alloc] initWithTitle:@"Стойки и ресепшн" imageName:@"reception.png" type: 2];
    AVMenuItem *accessory = [[AVMenuItem alloc] initWithTitle:@"Замки и аксессуары" imageName:@"lock.png" type: 3];
    AVMenuItem *otherEquip = [[AVMenuItem alloc] initWithTitle:@"Дополнительное оборудование" imageName:@"dressing_room.png" type: 4];
    AVMenuItem *colors = [[AVMenuItem alloc] initWithTitle:@"Цвета и фактуры" imageName:@"colors.png" type: 5];
    AVMenuItem *gallery = [[AVMenuItem alloc] initWithTitle:@"Галерея" imageName:@"gallery.png" type: 6];
    AVMenuItem *contacts = [[AVMenuItem alloc] initWithTitle:@"Контакты" imageName:@"contacts.png" type: 7];
    
    self.menuItemsArray = [[NSArray alloc] initWithObjects:
                           cabin, bench, reception, accessory,
                           otherEquip ,colors, gallery, contacts,
                           nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.menuItemsArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    AVMenuCell *cell = [tableView dequeueReusableCellWithIdentifier:@"menuCell"];
    
    if(!cell)
        cell = [[AVMenuCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"menuCell"];
    
    cell.iconImageView.image = [UIImage imageNamed: ((AVMenuItem *)([self.menuItemsArray objectAtIndex: indexPath.row])).imageName];
    cell.menuItemLabel.text = ((AVMenuItem *)([self.menuItemsArray objectAtIndex: indexPath.row])).title;
    
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80.f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (((AVMenuItem *)[self.menuItemsArray objectAtIndex:indexPath.row]).itemType) {
        // Furniture
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
            
            
            break;
        // Colors
        case 5:
            
            break;
        // Gallery
        case 6:
            
            break;
        // Contacts
        case 7:
            
            break;
            
        default:
            break;
    }
}

@end
