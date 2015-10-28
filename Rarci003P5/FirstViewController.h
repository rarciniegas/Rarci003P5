//
//  FirstViewController.h
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

-(IBAction) clickDigit: (UIButton *) sender;
@property (strong, nonatomic) IBOutlet UILabel *digit0;
@property (strong, nonatomic) IBOutlet UILabel *digit1;
@property (strong, nonatomic) IBOutlet UILabel *digit2;
@property (strong, nonatomic) IBOutlet UILabel *digit3;
@end

