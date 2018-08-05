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
@end
