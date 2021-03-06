//
//  MyPinDictionary.h
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPinDictionary : NSObject

@property (nonatomic, strong) NSMutableDictionary *globalPinDictionary;
@property (nonatomic, strong) NSString *activePin;
@property (nonatomic, strong) NSString *activeWebsite;

// Class Method
+(MyPinDictionary *) thePinDictionary;

// Instance Methods
-(id)init;

-(BOOL)validatePin:(NSString *) obtainedPin;

-(void)updateThePinDictionary:(NSMutableArray *)obtainedPins :(NSMutableArray *)obtainedSites;

@end
