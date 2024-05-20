//
//  Loader.h
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loader : NSObject

@property (nonatomic) NSURLSession* session;

-(void) performeGetRequests:(NSString*) stringUrl arguments: (NSDictionary*) arguments myblock: (void (^) (NSDictionary*, NSError*)) block;
-(void) performePostRequests:(NSString*) stringUrl arguments: (NSDictionary*) arguments myblock: (void (^) (NSDictionary*, NSError*)) block;
-(NSDictionary*) parseJsonData: (NSData*) data error:(NSError**) error;
-(NSData*) dataWithJson: (NSDictionary*) jsonDict error:(NSError**) error;
@end

NS_ASSUME_NONNULL_END
