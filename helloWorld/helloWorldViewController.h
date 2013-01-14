//
//  helloWorldViewController.h
//  helloWorld
//
//  Created by Christopher Considine on 1/8/13.
//  Copyright (c) 2013 Christopher Considine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface helloWorldViewController : UIViewController <UITextFieldDelegate>
@property (copy, nonatomic) NSString *userName;
@end
//@interface messageComposeViewController: MFMessageComposeViewController < MFMessageComposeViewControllerDelegate, UINavigationControllerDelegate>
//@end
