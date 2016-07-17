//
//  DropitBehaviour.m
//  Dropit
//
//  Created by Ольга Выростко on 17.07.16.
//  Copyright © 2016 Ольга Выростко. All rights reserved.
//

#import "DropitBehaviour.h"

@interface DropitBehaviour()

@property (strong, nonatomic) UIGravityBehavior * gravity;
@property (strong, nonatomic) UICollisionBehavior * collider;

@end

@implementation DropitBehaviour

-(instancetype) init
{
    self = [super init];
    [self addChildBehavior: self.gravity];
    [self addChildBehavior: self.collider];
    
    return self;
}

-(UIGravityBehavior *) gravity
{
    if (!_gravity)
    {
        _gravity = [[UIGravityBehavior alloc] init];
    }
    return _gravity;
}

-(UICollisionBehavior *) collider
{
    if (!_collider)
    {
        _collider = [[UICollisionBehavior alloc] init];
        _collider.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _collider;
}

-(void) addItem:(id<UIDynamicItem>)item
{
    [self.gravity addItem: item];
    [self.collider addItem: item];
}

-(void) removeItem:(id<UIDynamicItem>)item
{
    [self.gravity removeItem: item];
    [self.collider removeItem: item];
}

@end
