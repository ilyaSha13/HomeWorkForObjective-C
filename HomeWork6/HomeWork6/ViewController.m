//
//  ViewController.m
//  HomeWork6
//
//  Created by Ilya Sharygin on 23.05.2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _firstTextField;
- (UITextField *)textField {
    if (!_firstTextField) {
        _firstTextField = [UITextField new];
        _firstTextField.backgroundColor = [UIColor systemGray6Color];
        _firstTextField.placeholder = @"Enter string";
    }
    return _firstTextField;
}

@synthesize textView = _textView;
- (UITextView *)textView {
    if (!_textView) {
        _textView = [UITextView new];
        _textView.backgroundColor = [UIColor systemMintColor];
        _textView.editable = false;
    }
    return _textView;
}

//@synthesize button = _button;
//- (UIButton *)button {
//    if (!_button) {
//        _button = [UIButton new];
//        _button.configuration = [UIButtonConfiguration borderedProminentButtonConfiguration];
//        [_button addTarget:self
//                    action:@selector(buttonAction: )
//          forControlEvents:UIControlEventTouchUpInside];
//    }
//    return _button;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
    
    [self.button addTarget:self action:@selector(loaderTextView) forControlEvents:UIControlEventTouchUpInside];
    
    [self.clearTextView addTarget:self action:@selector(clearTextV) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear: animated];
    
    NSString *str = [self.userDefaults stringForKey:@"strKey"];
    
    self.textView.text = str;
    
    //[self resetDefaults];
    
}

- (void) clearTextV {
//    NSDictionary *dict = [self.userDefaults dictionaryRepresentation];
//    for (id key in dict) {
//        [self.userDefaults removeObjectForKey:key];
//        
//    }
//    [self.userDefaults synchronize];
    
    self.textView.text = @"";
}

-(void) loaderTextView {
    
    NSString *str = _firstTextField.text;
    
    [self.userDefaults setObject:str forKey:@"strKey"];
    
    //self.textView.text = str;
    
    //[self resetDefaults];
}

@end
    
