//
//  Robot.m
//  HomeWork4
//
//  Created by Ilya Sharygin on 13.05.2024.
//

#import "Robot.h"

@implementation Robot

//- (id) init {
//    if (self = [super init])  {
//            self.x = 0;
//            self.y = 0;
//         }
//         return self;
//}
    
//- (void)getCoordinates: (int)x (int) y {
//    NSLog(@"Robot(%i, %i)", x, y);
//}


- (void)run:(NSString * (^)(void))mesageBlock {
    //ввод напраления робота
    x = 0;
    y = 0;
    while (mesageBlock() != @"end") {
        NSString* (^ messageBlock)(void) = ^NSString* {
            char input [5];
            NSLog(@"Введите направление (up/right/down/left)");
            NSLog(@"Для завершения программы введите end");
            scanf("%s", input);
            NSString *message = [NSString stringWithCString:input encoding: NSUTF8StringEncoding];
            return message;
        };
        
        if ((messageBlock() == @"up") || (messageBlock() == @"down")) {
            if (messageBlock() == @"up") {
                y += 1;
            } else if (messageBlock() == @"down") {
                y -= 1;
            }
            
        }
        if ((messageBlock() == @"right") || (messageBlock() == @"left")) {
            if (messageBlock() == @"right") {
                x += 1;
            } else if (messageBlock() == @"left") {
                x -= 1;
            }
        } else if (mesageBlock() == @"end") {
            break;
        }
        NSLog(@"Robot(%i, %i)", x, y);
    }
}

@end
