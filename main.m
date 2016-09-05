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
        char replay = 'y';
        
        [myGame setTRIES: TRIES];
        [myGame setAttempts: 0];
        [myGame setRandNum: arc4random_uniform(101)];
        [myGame getMenu];
        
        while(scanf("\n%d", &numGuess) == 1)
        {
            for(int i = 0; i < TRIES; i++)
            {
                [myGame setAttempts: 1];
                if(numGuess == [myGame getRandNum])
                {
                    printf("\nCongratulations! It took you %d attempts to guess the number correctly. \n", [myGame getAttempts]);
                    fpurge(stdin); //clear the scanf() buffer for &numGuess
                    
                    printf("Do you want to play again? [y/n]: ");
                    if(scanf("%c", &replay) == 1)
                    {
                        if(replay == 'y' || replay == 'Y')
                        {
                            continue;//exit for loop and play again
                        }
                        else if(replay == 'n' || replay == 'N')
                        {
                            break;//exit for loop
                        }
                    }
                }
                else if(numGuess > [myGame getRandNum])
                {
                    printf("\nSorry, that guess is too high! \n");
                    printf("Guess again now: ");
                    if(scanf("\n%d", &numGuess) == 1)
                    {
                        continue; //exit and stay in for loop and test another attempt
                    }
                    
                }
                else if(numGuess < [myGame getRandNum])
                {
                    printf("\nSorry, that guess is too low! \n");
                    printf("Guess again now: ");
                    if(scanf("\n%d", &numGuess) == 1)
                    {
                        continue; //exit and stay in for loop and test another attempt
                    }
                }
                
                //end of for loop
            }
            
            
        }
        
        
        
        
        
    }
    return 0;
}
