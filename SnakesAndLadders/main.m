//
//  main.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"WELCOME TO SNAKES & LADDERS");
        
        
        PlayerManager *manager = [[PlayerManager alloc]init];
        
        char input[255];
        
        while ([manager.players count] == 0)
        {
            NSLog(@"Please enter the number of players: ");
            
            fgets(input, 255, stdin);
            
            NSString *inputString = [[NSString alloc]initWithUTF8String:input];
            
            if ([inputString intValue])
            {
                [manager createPlayers:[inputString intValue]];
             
                NSLog(@"Please type \"roll\" or \"r\"");
                
                while (YES)
                {
                    fgets(input, 255, stdin);
                    
                    inputString = [[NSString alloc]initWithUTF8String:input];
                    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
                    
                    
                    if ([inputString isEqualToString:@"roll"] ||
                        [inputString isEqualToString:@"r"])
                    {
                        //                [player1 roll];
                        
                        //                NSLog(@"%@", player1.output);
                    }
                    
                    //if player gameOver
                    //manager reset players
                }//while
              
            }//if
            else{
                NSLog(@"Please input a numeric value for number of players!");
            }
        }//while
        
        

    }
    return 0;
}
