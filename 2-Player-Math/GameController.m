//
//  GameController.m
//  2-Player-Math
//
//  Created by Alex Bearinger on 2017-01-16.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "GameController.h"

@interface GameController()

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

-(void)switchPlayer{
    if(self.currentPlayer == 1){
        self.currentPlayer = 0;
    }
    else
        self.currentPlayer = 1;
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

-(Player *)curPlayer{
    return [self.players objectAtIndex:self.currentPlayer];
}

-(BOOL)checkAnswer:(NSString *)answer{
    NSString *correctAnswer = [NSString stringWithFormat:@"%d",self.leftValue+self.rightValue];
    if ([answer isEqualToString:correctAnswer])
        return YES;
    return NO;
}

-(void)reset{
    Player *player1 = [self.players objectAtIndex:0];
    Player *player2 = [self.players objectAtIndex:1];
    player1.score = 0;
    player2.score = 0;
    player1.lives = 3;
    player2.lives = 3;
}


@end
