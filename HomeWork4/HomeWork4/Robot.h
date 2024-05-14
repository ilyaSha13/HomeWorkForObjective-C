//
//  Robot.h
//  HomeWork4
//
//  Created by Ilya Sharygin on 13.05.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject {
    int x;
    int y;
}

//-(id) init;
-(void) run: (NSString* (^) (void)) mesageBlock;
//-(void) getCoordinates: (int) x (int) y;

@end

NS_ASSUME_NONNULL_END
