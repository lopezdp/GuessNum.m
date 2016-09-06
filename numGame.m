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
    printf("\nPlease Guess a Number between 1 and 100. \n");
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

-(char) getReplay: (numGame *) myGame
{
    bool rTest = true;
    char replay;
    
    do
    {
        printf("Do you want to play again? [y/n]: ");
        scanf("\n%c", &replay);
        printf("This is the value of 'replay': %c \n", replay); //debug statement
        
        //if statement will check validity of input and stay in loop if input not valid
        if(replay == 'n' || replay == 'N' || replay == 'y' || replay == 'Y')
        {
            rTest = false;
        }
        else
        {
            rTest = true;
            fpurge(stdin);//clear input buffer
        }
        
    }while(rTest);
    
    if(replay == 'y' || replay == 'Y')
    {
        [myGame setAttempts: -([myGame getAttempts])]; //reset attempts to 0
        
        //printf("attempts should be 0 now: %d", [myGame getAttempts]); //debug statement
        return replay; 
    }
    else if(replay == 'n' || replay == 'N')
    {
        return replay; //exit for loop
    }
    
    return replay;
}

@end
