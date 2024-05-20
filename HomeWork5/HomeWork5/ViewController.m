//
//  ViewController.m
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import "ViewController.h"
#import "Loader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    [self performLoadingGetRequest];
    // Do any additional setup after loading the view.
}

- (void) performLoadingGetRequest {
    [self.loader performeGetRequests:@"https://postman-echo.com/get" arguments:@{@"ark1": @"wal1", @"ark2": @"wal2"} myblock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
            _textView.text = [dict descriptionInStringsFileFormat];
        });
    }];
}


@end
