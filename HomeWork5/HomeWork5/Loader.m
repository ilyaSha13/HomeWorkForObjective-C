//
//  Loader.m
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import "Loader.h"

@implementation Loader

- (NSURLSession*) session {
    if (!_session) {
        NSURLSessionConfiguration *confyguration = [NSURLSessionConfiguration defaultSessionConfiguration];
        confyguration.HTTPAdditionalHeaders = @{
            @"Content-Type": @"application/json", @"Accept": @"application/json", @"User-1": @"Iphone15Pro"
        };
        _session = [NSURLSession sessionWithConfiguration:confyguration];
    }
    return _session;
}

- (NSData*)dataWithJson:(NSDictionary*)jsonDict error:(NSError**)error {
    return [NSJSONSerialization dataWithJSONObject:jsonDict options:kNilOptions error:error];
}

- (NSDictionary*)parseJsonData:(NSData*)data error:(NSError**)error {
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:error];
}

- (void)performeGetRequests:(NSString*)stringUrl arguments:(NSDictionary *)arguments myblock:(void (^)(NSDictionary*, NSError*))block {
    NSURLComponents* urlComponents = [NSURLComponents componentsWithString:stringUrl];
    if (arguments) {
        NSMutableArray <NSURLQueryItem*>* queryItems = [NSMutableArray new];
        for (NSString* key in arguments.allKeys){
            [queryItems addObject:[NSURLQueryItem queryItemWithName:key value:arguments[key]]];
        }
        urlComponents.queryItems = [queryItems copy];
    }
    NSURL *url = urlComponents.URL;
    NSURLSessionDataTask* dataTask = [self.session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            block (nil, error);
            return;
        }
        NSError* parsingError;
        NSDictionary* dict = [self parseJsonData:data error:&parsingError];
        if (parsingError) {
                block (nil, parsingError);
                return;
        }
        block(dict, nil);
    }];
    [dataTask resume];
}

- (void)performePostRequests:(NSString *)stringUrl arguments:(NSDictionary *)arguments myblock:(void (^)(NSDictionary*, NSError*))block {
    NSURL *url = [NSURL URLWithString:stringUrl];
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:url];
        request.HTTPMethod = @"POST";
        if (arguments) {
            NSData *data = [self dataWithJson:arguments error:nil];
            request.HTTPBody = data;
        }
        NSURLSessionDataTask *task = [self.session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error) {
                block(nil, error);
                return;
            }
            NSError *parsingError;
            NSDictionary *dict = [self parseJsonData:data error:&parsingError];
            if (parsingError) {
                block(nil, parsingError);
                return;
            }
            block(dict, nil);
        }];
        [task resume];
}

@end
