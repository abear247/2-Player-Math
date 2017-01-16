//
//  Player.m
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Player.h"

@interface Player()




@end


@implementation Player

-(instancetype)initWithName:(NSString*)name{
    self = [super init];
    if (self){
        _score = 0;
        _lives = 3;
    }
    return self;
}

-(void)loseLife{
    --self.lives;
}

@end
