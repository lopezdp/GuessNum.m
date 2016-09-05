//
//  main.m
//  GuessNum
//
//  Created by David P. Lopez on 9/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "numGame.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        numGame *myGame = [[numGame alloc] init];
        
        int const TRIES = 10;
        int numGuess;
        
        [myGame setTRIES: TRIES];
        [myGame setAttempts: 0];
        [myGame setRandNum: arc4random_uniform(101)];
        [myGame getMenu];
        
        while(scanf("%d", &numGuess) == 1)
        {
            for(int i = 0; i < TRIES; i++)
            {
                [myGame setAttempts: 1];
                if(numGuess == [myGame getRandNum])
                {
                    printf("Congratulations! It took you %d attempts to guess the number correctly.", [myGame getAttempts]);
                    printf("Do you want to play again? [y/n]");
                }
                else if(numGuess > [myGame getRandNum])
                {
                    printf("Sorry, that guess is too high!");
                    printf("Guess again now: ");
                    
                }
                else if(numGuess < [myGame getRandNum])
                {
                    printf("Sorry, that guess is too low!");
                    printf("Guess again now: ");
                }
            }
            
            
        }
        
        
        
        
        
    }
    return 0;
}
