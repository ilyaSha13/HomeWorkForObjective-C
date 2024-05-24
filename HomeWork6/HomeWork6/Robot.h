//
//  Robot.h
//  HomeWork6
//
//  Created by Ilya Sharygin on 24.05.2024.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding>

@property (nonatomic) CGPoint robotCoords;


-(instancetype) initWithRobot: (CGPoint) point;



- (void)run:(NSString *(^)(void))block;

@end

NS_ASSUME_NONNULL_END
