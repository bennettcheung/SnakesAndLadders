//
//  PlayerManager.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _players = [[NSMutableArray alloc]init];
        _currentIndex = 0;
        _gameOver = NO;
    }
    return self;
}

-(void)createPlayers:(int)numberOfPlayers{
    for (int i = 1; i <= numberOfPlayers; i++){
        //create new player and add to array
        Player *player = [[Player alloc]init];
        player.name = [NSString stringWithFormat:@"Player %i", i];
        [self.players addObject:player];
    }
    
}

-(Player *)currentPlayer
{
    return [self.players objectAtIndex:self.currentIndex];
}

-(void)roll{
    if (!self.gameOver)
    {
        [[self currentPlayer]roll];
        self.currentIndex = (self.currentIndex + 1) % [self.players count];

    }
}

-(NSString *)output{
    Player *player = [self currentPlayer];
    return player.output;
}
@end
