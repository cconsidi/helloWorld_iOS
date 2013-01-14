//
//  helloWorldViewController.h
//  helloWorld
//
//  Created by Christopher Considine on 1/8/13.
//  Copyright (c) 2013 Christopher Considine. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface helloWorldViewController : UIViewController <UITextFieldDelegate>
@property (copy, nonatomic) NSString *userName;
@end
