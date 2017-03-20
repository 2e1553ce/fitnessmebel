//
//  AVMenuItem.m
//  fitnessmebel
//
//  Created by aiuar on 12.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import "AVMenuItem.h"

@implementation AVMenuItem

- (id)initWithTitle:(NSString *)title imageName:(NSString *)imageName type:(NSInteger)itemType {
    
    if(self = [super init]) {
        
        self.title = title;
        self.imageName = imageName;
        self.itemType = itemType;
    }
    
    return self;
}

@end
