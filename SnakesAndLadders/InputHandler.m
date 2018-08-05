//
//  InputHandler.m
//  SnakesAndLadders
//
//  Created by Bennett on 2018-08-05.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString *)getInput:(NSString *)outputString{
    char input[255];
    
    NSLog(@"%@", outputString);
    fgets(input, 255, stdin);
    
    NSString *inputString = [[NSString alloc]initWithUTF8String:input];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    inputString = [inputString lowercaseString];//make all input lower case
    
    return inputString;
}
@end
