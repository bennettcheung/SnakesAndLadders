//
//  main.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"WELCOME TO SNAKES & LADDERS");
        
        
        PlayerManager *manager = [[PlayerManager alloc]init];
        
        InputHandler *inputHandler = [[InputHandler alloc]init];
        
        while ([manager.players count] == 0)
        {
            
            NSString* inputString = [inputHandler getInput:@"Please enter the number of players: "];
            
            if ([inputString intValue])
            {
                [manager createPlayers:[inputString intValue]];
             
                NSLog(@"Please type \"roll\" or \"r\"");
                
                while (YES)
                {
                    
                    inputString = [inputHandler getInput:@""];
                    
                    if ([inputString isEqualToString:@"roll"] ||
                        [inputString isEqualToString:@"r"])
                    {
                        [manager roll];
        
                        NSLog(@"%@", [manager output]);
                        NSLog(@"%@", [manager score]);
                    }
                    else if ([inputString isEqualToString:@"quit"] )
                    {
                        inputString = [inputHandler getInput:@"Do you want to restart or quit?"];
                        
                        if ([inputString isEqualToString:@"restart"] )
                            manager.gameOver = YES;
                        else
                            break;
                    }
                    
                    //reset the game if the manager says the game is over
                    if (manager.gameOver)
                    {
                        [manager resetPlayers];
                        break;
                    }
                }//while
              
            }//if
            else{
                NSLog(@"Please input a numeric value for number of players!");
            }
        }//while
        NSLog(@"Thanks for playing the game");
        

    }
    return 0;
}
