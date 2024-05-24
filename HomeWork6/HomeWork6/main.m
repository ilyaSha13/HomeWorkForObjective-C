//
//  main.m
//  HomeWork6
//
//  Created by Ilya Sharygin on 23.05.2024.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Robot.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
//        Robot *robot = [[Robot alloc] init];
//
//                [robot run:^NSString *{ return @"up"; }];
//
//                [robot run:^NSString *{ return @"right"; }];
//
//                [robot run:^NSString *{ return @"down"; }];
//
//                [robot run:^NSString *{ return @"left"; }];
        
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
