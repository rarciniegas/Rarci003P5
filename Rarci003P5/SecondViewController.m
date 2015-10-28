//  PROGRAMMER: Roberto Arciniegas
//  PANTHERID: 1385020
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #5
//  DUE:            Tuesday 10/27/15
//
//  SecondViewController.m
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import "SecondViewController.h"
#import "MyPinDictionary.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize myWeb;

- (void)viewDidLoad {
    [super viewDidLoad];
    pinData = [MyPinDictionary thePinDictionary];
    NSString * urlString = pinData.activeWebsite;
    NSURL * myUrl = [NSURL URLWithString:urlString];
    NSURLRequest * myRequest = [NSURLRequest requestWithURL:myUrl];
    [myWeb loadRequest:myRequest];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
