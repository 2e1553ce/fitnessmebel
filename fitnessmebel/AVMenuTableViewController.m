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

    AVMenuItem *cabin = [[AVMenuItem alloc] initWithTitle:@"Шкафы для раздевалок" imageName:@"shkafi.png"];
    AVMenuItem *bench = [[AVMenuItem alloc] initWithTitle:@"Скамейки для раздевалок" imageName:@"skameiki.png"];
    AVMenuItem *reception = [[AVMenuItem alloc] initWithTitle:@"Стойки и ресепшн" imageName:@"reception.png"];
    AVMenuItem *accessory = [[AVMenuItem alloc] initWithTitle:@"Замки и аксессуары" imageName:@"lock.png"];
    AVMenuItem *otherEquip = [[AVMenuItem alloc] initWithTitle:@"Дополнительное оборудование" imageName:@"dressing_room.png"];
    AVMenuItem *colors = [[AVMenuItem alloc] initWithTitle:@"Цвета и фактуры" imageName:@"colors.png"];
    AVMenuItem *gallery = [[AVMenuItem alloc] initWithTitle:@"Галерея" imageName:@"gallery.png"];
    AVMenuItem *contacts = [[AVMenuItem alloc] initWithTitle:@"Контакты" imageName:@"contacts.png"];
    
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

@end
