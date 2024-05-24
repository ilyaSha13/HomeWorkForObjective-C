//
//  Robot.m
//  HomeWork6
//
//  Created by Ilya Sharygin on 24.05.2024.
//

#import "Robot.h"

@implementation Robot

-(instancetype) initWithRobot: (CGPoint) point {
    self = [super init];
    if (self) {
        self.robotCoords = point;
    }
    return  self;
}

- (void)encodeWithCoder:(NSCoder *)coder {

    [coder encodeFloat: self.robotCoords.x forKey:@"pointX"];
    [coder encodeFloat: self.robotCoords.y forKey:@"pointY"];
    
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.robotCoords = CGPointMake(x, y);
    }
    return self;
}

//- (void)run:(NSString * (^)(void))block {
//    
//    NSString *direction = block();
//
//    if ([direction isEqualToString:@"up"]) {
//        self.y += 1;
//    } else if ([direction isEqualToString:@"down"]) {
//        self.y -= 1;
//    } else if ([direction isEqualToString:@"left"]) {
//        self.x -= 1;
//    } else if ([direction isEqualToString:@"right"]) {
//        self.x += 1;
//    }
//    
//    //MARK: вывод координат
//    NSLog(@"Robot location: (%d, %d)", (int)_x, (int)_y);
//    
//}


@end
