//
//  main.m
//  Word Effects
//
//  Created by JOSE PILAPIL on 2016-06-27.
//  Copyright © 2016 JOSE PILAPIL. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  
    
    char inputChars[255];
    printf("Input a string");
    fgets(inputChars, 255, stdin);
    printf("Your string is %s\n", inputChars);
    //convert array into nsstring object
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    NSLog(@"Input was %@", inputString);
    
    
    int userOperation;
    NSLog(@"Select your operation: 1. Uppercase \n 2.Lowercase \n 3.Numerize \n 4.Canadianize \n 5.Respond \n 6.Despace it\n");
    scanf("%i", &userOperation);

    NSString *uppercaseString = [inputString uppercaseString];
    NSString *lowercaseString = [inputString lowercaseString];
    NSString *canadianString = [inputString stringByAppendingString: @" Eh?"];
    double  numberstring = [inputString doubleValue];
    
    if (userOperation == 1){
        printf("You have Chosen Uppercase\n");
        NSLog(@"%@", uppercaseString);
    }else if (userOperation==2){
        printf("You have Chosen Lowercase\n");
        NSLog(@"%@", lowercaseString);
    }else if (userOperation==3){
        printf("You have Chosen Numerize\n");
        NSLog(@"%f",numberstring);
    }else if (userOperation==4){
        printf("You have Chosen Canadianize\n");
        NSLog(@"%@", canadianString);
    }else if (userOperation==5){
        NSString *lastchar = [inputString substringFromIndex:[inputString length] -2];
        if ([lastchar isEqual: @"?\n"])
            printf("I Dont Know");
        else if ([lastchar isEqual: @"!\n"])
            printf("Whoa! Calm Down!");
        printf("You have Chosen Respond\n");
    }else if (userOperation==6){
        printf("You have Chosen Despace-it\n");
        NSString *nospace = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"%@",nospace);
    }
    
    
    
    
    
    return 0;
    
}
