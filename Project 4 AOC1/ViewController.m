//
//  ViewController.m
//  Project 4 AOC1
//
//  Created by Ronaldo Barnes on 6/19/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import "ViewController.h"

#define loginTag 0
#define dateTag 1
#define infoTag 2
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background color
    self.view.backgroundColor = [UIColor blackColor];
    
    //Username Login
    usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 25.0f)];
    if (usernameLabel != nil)
    {
        usernameLabel.backgroundColor = [UIColor blackColor];
        usernameLabel.text = @"Username:";
        usernameLabel.textAlignment = UITextAlignmentLeft;
        usernameLabel.textColor = [UIColor whiteColor];
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
        LoginButton.frame = CGRectMake(235.0f, 85.0f, 65.0f, 30.0f);
        LoginButton.tag = loginTag;
        [LoginButton setTitle:@"Login" forState:UIControlStateNormal];
        [LoginButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self.view addSubview:LoginButton];
    }
    
    userLoginLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 135.0f, 320.0f, 160.0f)];
    if (userLoginLabel != nil)
    {
        userLoginLabel.backgroundColor = [UIColor whiteColor];
        userLoginLabel.text = @"Please Enter Username";
        userLoginLabel.textAlignment = UITextAlignmentCenter;
        userLoginLabel.textColor = [UIColor blackColor];
        [self.view addSubview:userLoginLabel];
    }
    //Show date
    
    dateButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (LoginButton != nil)
    {
        dateButton.frame = CGRectMake(0.0f, 325.0f, 100.0f, 30.0f);
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        dateButton.tag = dateTag;
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self.view addSubview:dateButton];
    }
    
    infoButton =[UIButton buttonWithType:UIButtonTypeInfoLight];
    if (infoButton != nil)
    {
        infoButton.frame = CGRectMake(0.0f, 375.0f, 25.0f, 25.0f);
        infoButton.tag = infoTag;
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];
        
        [self.view addSubview:infoButton];
    }
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 320.0f, 60.0f)];
    if (infoLabel != nil)
    {
        infoLabel.backgroundColor = [UIColor blackColor];
        infoLabel.textAlignment = UITextAlignmentCenter;
        infoLabel.textColor = [UIColor whiteColor];
        infoLabel.numberOfLines = 2;
        [self.view addSubview:infoLabel];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)onClick:(UIButton*)button
{
    //Login button press
    if (button.tag == loginTag) {
        user = [usernameField text];
        if ([user length]==0)
        {
            tempString = @"Username cannot be empty!";
        } else {
            tempString = [[NSString alloc] initWithFormat:@"User: %@ has been logged in.", user];
        }
        
        userLoginLabel.text = tempString;

    }else if (button.tag == dateTag) {
        date = [NSDate date];
        formattedDate = [[NSDateFormatter alloc] init];
        if (formattedDate != nil) {
            [formattedDate setDateFormat:@"MMMM d, yyyy"];
            tempString = [formattedDate stringFromDate:date];
            displayDate = [[UIAlertView alloc] initWithTitle:@"Today's Date" message:tempString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            if (displayDate != nil)
            {
                [displayDate show];
            }
        }
    }else if(button.tag == infoTag){
        
        tempString = @"This application was created by: Ronaldo Barnes";
        infoLabel.text = tempString;
    }
        
    
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
