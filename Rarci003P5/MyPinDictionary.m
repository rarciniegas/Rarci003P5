//
//  MyPinDictionary.m
//  Rarci003P5
//
//  Created by roberto arciniegas on 10/27/15.
//  Copyright (c) 2015 roberto arciniegas. All rights reserved.
//

#import "MyPinDictionary.h"

@implementation MyPinDictionary

@synthesize globalPinDictionary;

@synthesize activePin, activeWebsite;


+ (MyPinDictionary *)thePinDictionary
{
    static MyPinDictionary *pinDictionary = nil;
    
    @synchronized(self)
    {
        if(!pinDictionary)
        {
            pinDictionary = [[MyPinDictionary alloc] init];
        }
    }
    
    return pinDictionary;
    
}


-(id)init
{
    if(self = [super init])
    {
        globalPinDictionary = [[NSMutableDictionary alloc] initWithCapacity:10];
        
        [globalPinDictionary setObject:@"http://www.microsoft.com" forKey:@"1111"];
        [globalPinDictionary setObject:@"http://www.apple.com" forKey:@"2222"];
        [globalPinDictionary setObject:@"http://www.github.com" forKey:@"3333"];
        
        
        activeWebsite = @"http://www.fiu.edu";
        activePin = @"No Pin";
    }
    
    return self;
}


-(BOOL)validatePin:(NSString *)obtainedPin
{
    for(NSString *pin in globalPinDictionary)
    {
        if ([obtainedPin isEqualToString:pin])
        {
            activePin = obtainedPin;
            activeWebsite = [globalPinDictionary objectForKey:obtainedPin];
            
            return TRUE;
        }
    }
    
 
    return FALSE;
}


-(void)updateThePinDictionary:(NSMutableArray *)obtainedPins :(NSMutableArray *)obtainedSites
{
    NSMutableDictionary *newPinsAndWebsites = [[NSMutableDictionary alloc] initWithCapacity:10];
    
    
    for(int index = 0; index < 10; index++)
    {
        [newPinsAndWebsites setValue:
         [obtainedSites objectAtIndex:index]forKey:[obtainedPins objectAtIndex:index]];
    }
    
    
    globalPinDictionary = newPinsAndWebsites;
    
}

@end
