//
//  numGame.h
//  GuessNum
//
//  Created by David P. Lopez on 9/4/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface numGame : NSObject

//setters
-(void) setTRIES: (int) t;

-(void) setRandNum: (int) r;

-(void) setNumChoice: (int) n;

-(void) setAttempts: (int) a;

//getters
-(void) getMenu;

-(int) getTRIES;

-(int) getRandNum;

-(int) getNumChoice;

-(int) getAttempts;

@end
