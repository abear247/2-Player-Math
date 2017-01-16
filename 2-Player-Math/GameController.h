//
//  GameController.h
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameController : NSObject

@property int leftValue;
@property int rightValue;
@property int numberPosition;
@property NSString *answer;

-(NSString *)currentAnswer:(int)number;
-(Player *)player;
-(NSString *)question;
-(NSString *)score:(int)playerNumber;
-(BOOL)checkAnswer:(NSString *)answer;

@end
