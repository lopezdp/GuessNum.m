//
//  numGame.m
//  GuessNum
//
//  Created by David P. Lopez on 9/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "numGame.h"

@implementation numGame
{
    int tries;
    int randNum;
    int numChoice;
    int attempts;
}

//setters
-(void) setTRIES:(int)t
{
    tries = t;
}

-(void) setRandNum:(int)r
{
    randNum = r;
}

-(void) setNumChoice:(int)n
{
    numChoice = n;
}

-(void) setAttempts:(int)a
{
    attempts += a;
}

//getters
-(void) getMenu
{
    printf("Please Guess a Number between 1 and 100. \n");
    printf("Enter your guess: ");
}

-(int) getTRIES
{
    return tries;
}

-(int) getRandNum
{
    return randNum;
}

-(int) getNumChoice
{
    return numChoice;
}

-(int) getAttempts
{
    return attempts;
}

@end
