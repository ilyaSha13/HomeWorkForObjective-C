//
//  ViewControllerPOST.h
//  HomeWork5
//
//  Created by Ilya Sharygin on 19.05.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerPOST : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondTextField;
@property (weak, nonatomic) IBOutlet UIButton *buttonPOST;

@property (weak, nonatomic) IBOutlet UITextView *textView2;

@property (nonatomic) Loader* loader;

@end

NS_ASSUME_NONNULL_END
