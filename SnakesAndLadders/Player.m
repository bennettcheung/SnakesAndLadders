//
//  Player.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentSquare = 0;
    }
    return self;
}

-(void)roll{
    int randomNumber = arc4random_uniform(6) + 1;
    self.currentSquare += randomNumber;
    NSLog(@"Dice rolled %i", randomNumber);
}
@end
