//
//  ViewController.m
//  CallCustomURLDemo
//
//  Created by Ashish Pisey on 9/23/14.
//  Copyright (c) 2014 com.AshishPisey. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openGoogleSigninSample:(UIButton *)sender
{
    NSString *customURL = @"GooglePlusSignIn://?token=123abct&registered=1";
    //  NSString *customURL = @"iOSDevTips2://";
    
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:customURL]])
    {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"
                                                        message:[NSString stringWithFormat:@"No custom URL defined for %@", customURL]
                                                       delegate:self cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
        [alert show];
    }
}
@end
