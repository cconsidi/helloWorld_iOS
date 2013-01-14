//
//  helloWorldViewController.m
//  helloWorld
//
//  Created by Christopher Considine on 1/8/13.
//  Copyright (c) 2013 Christopher Considine. All rights reserved.
//

#import "helloWorldViewController.h"

@interface helloWorldViewController ()
- (IBAction)sendInAppSMS:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)changeGreeting:(id)sender;

@end

@implementation helloWorldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changeGreeting:(id)sender {
   
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
}
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;
}
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
-(IBAction) sendInAppSMS:(id) sender
{
	MFMessageComposeViewController *controller = [[MFMessageComposeViewController alloc] init];
	if([MFMessageComposeViewController canSendText])
	{
		controller.body = self.label.text;
		controller.recipients = [NSArray arrayWithObjects:@"9126592599", @"3476742416", nil];
		controller.messageComposeDelegate = self;
		[self presentModalViewController:controller animated:YES];
	}
}
- (void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{
	switch (result) {
		case MessageComposeResultCancelled:
        {
            NSLog(@"Cancelled");
			break;
        }
		case MessageComposeResultFailed:
        {
       //     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"MyApp" message:@"Unknown Error" delegate:self /*cancelButtonTitle: @”OK”*/ otherButtonTitles: nil];
		//	[alert show];
			break;
        }
		case MessageComposeResultSent:
            
			break;
		default:
			break;
	}
    
	[self dismissModalViewControllerAnimated:YES];
}


@end
