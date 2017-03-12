//
//  AVMenuItem.h
//  fitnessmebel
//
//  Created by aiuar on 12.03.17.
//  Copyright © 2017 I.T. Pulse. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVMenuItem : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *imageName;

- (id)initWithTitle:(NSString *) title imageName:(NSString *) imageName;

@end
