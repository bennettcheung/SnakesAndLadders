//
//  main.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-04.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"WELCOME TO SNAKES & LADDERS");
        NSLog(@"Please type \"roll\" or \"r\"");
        
        Player *player1 = [[Player alloc]init];
        
        while (YES)
        {
            char input[255];
            fgets(input, 255, stdin);
            
            NSString *inputString = [[NSString alloc]initWithUTF8String:input];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            
            if ([inputString isEqualToString:@"roll"] ||
                [inputString isEqualToString:@"r"])
            {
                [player1 roll];
                NSLog(@"You rolled a %d", 1);
                NSLog(@"You landed on %lu", player1.currentSquare);
            }
            
        }
    }
    return 0;
}
