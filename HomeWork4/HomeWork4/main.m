//
//  main.m
//  HomeWork4
//
//  Created by Ilya Sharygin on 13.05.2024.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSString* (^ messageBlock)(void) = ^NSString* {
            char input [5];
            NSLog(@"Введите направление робота (up/right/down/left)");
            scanf("%s", input);
            NSString *message = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
            return message;
        };
        
        NSString *message1 = messageBlock();
        
        Robot *robot = [Robot new];
        [robot run: message1];
    }
    return 0;
}
