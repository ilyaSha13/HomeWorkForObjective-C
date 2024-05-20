//
//  ViewControllerPOST.m
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import "ViewControllerPOST.h"
#import "Loader.h"

@interface ViewControllerPOST()

@end

@implementation ViewControllerPOST

@synthesize firstTextField = _firstTextField;
- (UITextField *)firstTextField {
    if (!_firstTextField) {
        _firstTextField = [UITextField new];
        _firstTextField.backgroundColor = [UIColor systemGray6Color];
        _firstTextField.placeholder = @"Enter login";
    }
    return _firstTextField;
}

@synthesize secondTextField = _secondTextField;
- (UITextField *)secondTextField {
    if (!_secondTextField) {
        _secondTextField = [UITextField new];
        _secondTextField.backgroundColor = [UIColor systemGray6Color];
        _secondTextField.placeholder = @"Enter password";
    }
    return _secondTextField;
}

@synthesize buttonPOST = _button;
- (UIButton *)buttonPOST {
    if (!_button) {
        _button = [UIButton new];
        _button.configuration = [UIButtonConfiguration borderedProminentButtonConfiguration];
        [_button addTarget:self
                        action:@selector(performLoadingForPostRequest)
              forControlEvents:UIControlEventTouchUpInside];
    }
    return _button;
}

@synthesize textView2 = _textView;
- (UITextView *)textView2 {
    if (!_textView) {
        _textView = [UITextView new];
        _textView.backgroundColor = [UIColor systemMintColor];
        _textView.editable = false;
    }
    return _textView;
}

- (instancetype)initWithLoader:(Loader *)loader {
    self = [super init];
    if (self) {
        _loader = loader;
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    self.loader = [Loader new];
    [self performLoadingForPostRequest];
}

- (void)performLoadingForPostRequest {
    [self.loader performeGetRequests:@"https://postman-echo.com/get" arguments:@{@"login": self.firstTextField.text,
                                            @"password": self.secondTextField.text}
                                    myblock:^(NSDictionary *dict, NSError *error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error) {
                self.textView2.text = error.localizedDescription;
                return;
            }
            self.textView2.text = [dict descriptionInStringsFileFormat];
        });
    }];
}

@end
