//
//  Player.h
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic, assign) NSInteger currentSquare;
@property (nonatomic, strong) NSMutableString *output;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) BOOL gameOver;

-(void)roll;
-(NSString*)score;
@end
