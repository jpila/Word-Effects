//
//  main.m
//  Word Effects
//
//  Created by JOSE PILAPIL on 2016-06-27.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    
    
    NSLog(@"Select your operation: 1. Uppercase \n 2.Lowercase \n 3.Numerize \n 4.Canadianize \n 5.Respond \n 6.Despace it\n");
    
    char inputChars[255];
    printf("Input a string");
    fgets(inputChars, 255, stdin);
    printf("Your string is %s\n", inputChars);
    //convert array into nsstring object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    NSLog(@"Input was %@", inputString);
    
    
    return 0;
}
