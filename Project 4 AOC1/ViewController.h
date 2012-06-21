//
//  ViewController.h
//  Project 4 AOC1
//
//  Created by Ronaldo Barnes on 6/19/12.
//  Copyright (c) 2012 Full Sail University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //Labels
    UILabel *usernameLabel;
    UILabel *infoLabel;
    UILabel *userLoginLabel;
    //Text Fields
    UITextField *usernameField;
    //Buttons
    UIButton *LoginButton;
    UIButton *dateButton;
    UIButton *infoButton;
    //Strings
    NSString *user;
    NSString *tempString;
    //Create Date
    NSDate *date;
    NSDateFormatter *formattedDate;
    //Alert
    UIAlertView *displayDate;
    
}
@end
