//  PROGRAMMER: Roberto Arciniegas
//  PANTHERID: 1385020
//  CLASS:          COP 465501 TR 5:00
//  INSTRUCTOR:     Steve Luis  ECS 282
//  ASSIGNMENT:     #5
//  DUE:            Tuesday 10/27/15
//
//  SecondViewController.h
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyPinDictionary;

@interface SecondViewController : UIViewController{
    MyPinDictionary *pinData;
}


@property (strong, nonatomic) IBOutlet UIWebView * myWeb;


@end

