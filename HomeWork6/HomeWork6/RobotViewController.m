//
//  RobotViewController.m
//  HomeWork6
//
//  Created by Ilya Sharygin on 24.05.2024.
//

#import "RobotViewController.h"
#import "Robot.h"

@interface RobotViewController ()

@end

@implementation RobotViewController

@synthesize xTextField = _xTField;
- (UITextField *)xTextField {
    if (!_xTField) {
        _xTField = [UITextField new];
        _xTField.backgroundColor = [UIColor systemGray6Color];
        _xTField.placeholder = @"Enter x";
    }
    return _xTField;
}

@synthesize yTextField = _yTField;
- (UITextField *)yTextField {
    if (!_yTField) {
        _yTField = [UITextField new];
        _yTField.backgroundColor = [UIColor systemGray6Color];
        _yTField.placeholder = @"Enter y";
    }
    return _yTField;
}

@synthesize textView2 = _textView2;
- (UITextView *)textView2 {
    if (!_textView2) {
        _textView2 = [UITextView new];
        _textView2.backgroundColor = [UIColor systemMintColor];
        _textView2.editable = false;
    }
    return _textView2;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.userDefaults2 = [NSUserDefaults standardUserDefaults];
    [self.button2 addTarget:self action:@selector(loaderXYTextView) forControlEvents:UIControlEventTouchUpInside];
    
//    CGPoint robotCoordints = CGPointMake(_xTField.text, _yTField.text);
//    
//    Robot *myRobot = [[Robot alloc] initWithRobot: robotCoordints];
//    NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:myRobot];
//    
//    [self.userDefaults2 setObject:myData forKey:@"myKey"];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    
//    [self resetDefaults];
    
    NSData *data = [self.userDefaults2 objectForKey:@"myKey"];
    Robot *resultRobot = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    
    self.textView2.text = [NSString stringWithFormat: @"Robot (%f, %f)", resultRobot.robotCoords.x, resultRobot.robotCoords.y];
    
}

-(void) loaderXYTextView {
    
    float x = [_xTField.text floatValue];
    float y = [_yTField.text floatValue];
    
    CGPoint robotCoordints = CGPointMake(x, y);
    
    //self.textView2.text = x;
    
    Robot *myRobot = [[Robot alloc] initWithRobot: robotCoordints];
    NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:myRobot];
    
    [self.userDefaults2 setObject:myData forKey:@"myKey"];
    //[self resetDefaults];
    
    self.textView2.text = [NSString stringWithFormat: @"Robot (%f, %f)", x, y];
}

@end
