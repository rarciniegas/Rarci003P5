//
//  FirstViewController.m
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import "FirstViewController.h"
#import "MyPinDictionary.h"

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
    int myDigit = (int)sender.tag;
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
            [self checkPin];
            currentDigit = 0;
            [self clearScreen];
            break;
            
        default:
            break;
    }
    

}

-(void)checkPin
{
    NSString *pin = [NSString stringWithFormat:@"%@%@%@%@",
                     digit0.text,
                     digit1.text,
                     digit2.text,
                     digit3.text];
    
    if ( [pinData validatePin:pin] == TRUE)
    {
        [self.tabBarController setSelectedIndex:1];
        
        [self.tabBarController.view setNeedsDisplay];
    }
    
    else
    {
        NSString *message = [NSString stringWithFormat:
                             @"%@ is not a valid pin!", pin];
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"Invalid Pin!"
                              message:message
                              delegate:nil
                              cancelButtonTitle:@"Okay."
                              otherButtonTitles:nil];
        [alert show];
        
    }
    
}

-(void)clearScreen
{
    digit0.text = @"";
    digit1.text = @"";
    digit2.text = @"";
    digit3.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
