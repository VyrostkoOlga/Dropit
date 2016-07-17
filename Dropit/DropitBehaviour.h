//
//  DropitBehaviour.h
//  Dropit
//
//  Created by Ольга Выростко on 17.07.16.
//  Copyright © 2016 Ольга Выростко. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehaviour : UIDynamicBehavior

-(void) addItem: (id<UIDynamicItem>) item;
-(void) removeItem: (id<UIDynamicItem>) item;

@end
