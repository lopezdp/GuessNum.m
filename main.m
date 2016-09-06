//
//  main.m
//  GuessNum
//
//  Created by David P. Lopez on 9/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "numGame.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        numGame *myGame = [[numGame alloc] init];
        
        int const TRIES = 10;
        int const HIGH = 100;
        int const LOW = 0;
        
        do
        {
            int numGuess;
            char replay;
            
            [myGame setTRIES: TRIES];
            [myGame setAttempts: 0];
            [myGame setRandNum: arc4random_uniform(101)]; //sets instance variable to a random & secret number
            [myGame getMenu];
            
            if(scanf("\n%d", &numGuess) == 1 && numGuess >= LOW && numGuess <= HIGH) //should only allow in certain numbers as input
            {
                //printf("this is bool: %d", numGuess);//debug
                
                for(int i = 0; i < TRIES; i++) //loop will allow for 10 TRIES or Guesses before restarting another game
                {
                    [myGame setAttempts: 1]; //increments the "attempts" instance variable by 1 on each iteration
                    if(numGuess == [myGame getRandNum]) // 1st test checks to see if guess is == to randNum
                    {
                        printf("\nCongratulations! It took you %d attempts to guess the number correctly. \n", [myGame getAttempts]);
                        fpurge(stdin); //clear the scanf() buffer for &numGuess

                        //call the replay method now
                        replay = [myGame getReplay: myGame];
                        break;
                    }
                    else if(numGuess > [myGame getRandNum])
                    {
                        printf("\nSorry, that guess is too high! \n");
                        printf("You have %d attempts remaining... \n", (TRIES - [myGame getAttempts]));
                        
                        if((TRIES - [myGame getAttempts]) == 0)
                        {
                            printf("You have exhausted the attempts available. \n");
                            printf("You Lose!!! \n \n");
                            
                            //call the replay method now
                            replay = [myGame getReplay: myGame];
                            break;
                        }
                        else
                        {
                            printf("Guess again now: ");
                        }
                        
                        if(scanf("\n%d", &numGuess) == 1)
                        {
                            continue; //exit and stay in for loop and test another attempt
                        }
                        else if(scanf("\n%d", &numGuess) != 1)
                        {
                            fpurge(stdin);
                        }
                    }
                    else if(numGuess < [myGame getRandNum])
                    {
                        printf("\nSorry, that guess is too low! \n");
                        printf("You have %d attempts remaining... \n", (TRIES - [myGame getAttempts]));
                        
                        if((TRIES - [myGame getAttempts]) == 0)
                        {
                            printf("You have exhausted the attempts available. \n");
                            printf("You Lose!!! \n \n");
                            
                            //call the replay method now
                            replay = [myGame getReplay: myGame];
                            break;
                        }
                        else
                        {
                            printf("Guess again now: ");
                        }
                        
                        if(scanf("\n%d", &numGuess) == 1)
                        {
                            continue; //exit and stay in for loop and test another attempt
                        }
                        else if(scanf("\n%d", &numGuess) != 1)
                        {
                            fpurge(stdin); //clear buffer and continue iteration
                        }
                    }
                }//end of for loop
            }//end scanf() input validation
            if(replay == 'n' || replay == 'N')
            {
                break; //exit program on user's command
            }
            // purge input buffer and continue loop if input is invalid
            else
            {
                fpurge(stdin);
                continue;
            }
        }while(true);
    }//end auto release pool
    return 0;
}











