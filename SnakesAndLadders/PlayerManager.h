//
//  PlayerManager.h
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface PlayerManager : NSObject

@property (nonatomic, strong) NSMutableArray *players;
@property (nonatomic, assign) NSInteger currentIndex;
@property (nonatomic, assign) BOOL gameOver;

-(void)createPlayers:(int)numberOfPlayers;
-(void)resetPlayers;
-(Player*)currentPlayer;
-(void)roll;
-(NSString *)output;
@end
