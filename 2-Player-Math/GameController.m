//
//  GameController.m
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "GameController.h"

@interface GameController()

@property NSArray *players;
@property int currentPlayer;

@end


@implementation GameController

-(instancetype)init{
    self = [super init];
    if(self){
        _numberPosition = 1;
        _players = @[[[Player alloc] initWithName:@"Player 1"] ,
                     [[Player alloc] initWithName:@"Player 2"]];
        _answer = @"";
    }
    return self;
}

-(NSString *)currentAnswer:(int)number{
    
    NSString *nextNumber = [NSString stringWithFormat:@"%d",number];
    return [self.answer stringByAppendingString:nextNumber];
}

-(Player *)player{
    if(self.currentPlayer == 1)
        return [self.players objectAtIndex:0];
    return [self.players objectAtIndex:1];
}

-(NSString *)question{
    self.leftValue = arc4random_uniform(20)+1;
    self.rightValue = arc4random_uniform(20)+1;
    return [NSString stringWithFormat:@"Player%d: %d + %d",self.currentPlayer+1,self.leftValue,self.rightValue];
}

-(NSString *)score:(int)playerNumber{
    Player *player = [self.players objectAtIndex:playerNumber];
    return [NSString stringWithFormat:@"Player%d: %d",playerNumber+1,player.score];
}

-(BOOL)checkAnswer:(NSString *)answer{
    NSString *correctAnswer = [NSString stringWithFormat:@"%d",self.leftValue+self.rightValue];
    if ([self.answer isEqualToString:correctAnswer])
        return YES;
    return NO;
}



@end
