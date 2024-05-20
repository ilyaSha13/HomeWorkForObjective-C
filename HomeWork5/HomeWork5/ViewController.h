//
//  ViewController.h
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic) Loader* loader;

@end

