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
        _currentIndex = -1;
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
    self.gameOver = NO;
}

-(void)resetPlayers{
    [self.players removeAllObjects];
    self.currentIndex = -1;
}

-(Player *)currentPlayer
{
    return [self.players objectAtIndex:self.currentIndex];
}

-(void)roll{
    if (!self.gameOver)
    {
        self.currentIndex = (self.currentIndex + 1) % [self.players count];
        Player *player = [self currentPlayer];
        [player roll];
        self.gameOver = player.gameOver;
    }
}

-(NSString *)output{
    Player *player = [self currentPlayer];
    return player.output;
}
@end
