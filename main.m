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
        [myGame getMenu];
        
        scanf("%i", &numGuess);
        
        
        
        
        
    }
    return 0;
}
