//
//  RobotViewController.h
//  HomeWork6
//
//  Created by Ilya Sharygin on 24.05.2024.
//

#import <UIKit/UIKit.h>
#import "Robot.h"

NS_ASSUME_NONNULL_BEGIN

@interface RobotViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UITextView *textView2;

@property(nonatomic, strong) NSUserDefaults *userDefaults2;

@property (nonatomic) Robot* robot;

@end

NS_ASSUME_NONNULL_END
