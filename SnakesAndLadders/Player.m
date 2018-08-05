//
//  Player.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Player.h"

@interface Player()

@property (nonatomic, strong) NSDictionary *gameLogic;
@end

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
        _gameOver = NO;
        _gameLogic = @{
                     @4 : @14,
                     @9 : @31,
                     @20 : @38,
                     @28 : @84,
                     @40 : @89,
                     @51 : @67,
                     
                     @17 : @7,
                     @89 : @26,
                     @64 : @60,
                     @95 : @75,
                     @99 : @78
                     
                   };
        _output = [[NSMutableString alloc]init];
        _name = @"";
        
    }
    return self;
}

-(void)roll{
    int randomNumber = arc4random_uniform(6) + 1;
    self.output = [NSMutableString stringWithFormat:@"%@ rolled a %i \n", self.name, randomNumber];
    
    self.currentSquare += randomNumber;
    
    NSNumber *landingSquare = self.gameLogic[[NSNumber numberWithInteger:self.currentSquare]];
    
    if (landingSquare) // landed on one of the special ladder squares
    {
        NSInteger landingSquareInteger =[landingSquare integerValue];
       
        if (landingSquareInteger > self.currentSquare)
            [self.output appendString:@"Stairway to heaven!\n"];
        else
            [self.output appendString:@"You stepped on a snake!\n"];
        
        self.currentSquare = landingSquareInteger; // set the current squrae using the special landing
        
    }
    
    if (self.currentSquare >= 100)
    {
        self.gameOver = YES;
        [self.output appendString: @"You won!! Congradulations!"];
    }
    else{
        [self.output appendFormat:@"You landed on %lu\n", self.currentSquare];
    }
    
}
@end
