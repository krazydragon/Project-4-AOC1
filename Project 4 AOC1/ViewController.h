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
    UILabel *usernameLabel;
    UILabel *userLoginLabel;
    UITextField *usernameField;
    UIButton *LoginButton;
    UIButton *dateButton;
    NSString *user;
    NSString *newLogininfo;
    NSDate *date;
    NSDateFormatter *formattedDate;
    
}
@end
