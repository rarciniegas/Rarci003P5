//
//  FirstViewController.m
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize digit0, digit1, digit2, digit3;

int currentDigit = 0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction) clickDigit: (UIButton *) sender
{
    int myDigit = sender.tag;
    NSString * myNumber = [NSString stringWithFormat:@"%d", myDigit];
    switch (currentDigit) {
        case 0:
            digit0.text = myNumber;
            currentDigit++;
            break;
            
        case 1:
            digit1.text = myNumber;
            currentDigit++;
            break;
            
        case 2:
            digit2.text = myNumber;
            currentDigit++;
            break;
            
        case 3:
            digit3.text = myNumber;
            currentDigit++;
            break;
            
        default:
            break;
    }
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
