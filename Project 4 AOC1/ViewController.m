//
//  ViewController.m
//  Project 4 AOC1
//
//  Created by Ronaldo Barnes on 6/19/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    //Username info
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    if (usernameLabel != nil)
    {
        usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = UITextAlignmentLeft;
        [self.view addSubview:usernameLabel];
    }
    
    usernameField = [[UITextField alloc] initWithFrame:CGRectMake(100.0f, 50.0f, 200.0f, 25.0f)];
    if (usernameField != nil)
    {
        usernameField.borderStyle = UITextBorderStyleRoundedRect;
        
        [self.view addSubview:usernameField];
    }
    
    LoginButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (LoginButton != nil)
    {
        LoginButton.frame = CGRectMake(225.0f, 85.0f, 65.0f, 30.0f);
        [LoginButton setTitle:@"Login" forState:UIControlStateNormal];
        
        [self.view addSubview:LoginButton];
    }
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
