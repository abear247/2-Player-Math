//
//  Player.h
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property NSString *name;
@property int score;
@property int lives;
-(void)loseLife;
-(instancetype)initWithName:(NSString*)name;
@end
