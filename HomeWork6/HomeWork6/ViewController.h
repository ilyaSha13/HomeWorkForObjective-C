//
//  ViewController.h
//  HomeWork6
//
//  Created by Ilya Sharygin on 23.05.2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *button;

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property(nonatomic, strong) NSUserDefaults *userDefaults;

@property (weak, nonatomic) IBOutlet UIButton *clearTextView;

@property (weak, nonatomic) IBOutlet UIButton *clearCach;

-(void) resetDefaults;

@end

