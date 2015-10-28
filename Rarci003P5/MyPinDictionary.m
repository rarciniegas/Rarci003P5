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
        [globalPinDictionary setObject:@"http://www.google.com" forKey:@"2222"];
        [globalPinDictionary setObject:@"http://www.github.com" forKey:@"3333"];
        
        // Set a default value for the activeWebsite and activePin
        // This is done in  case a user clicks on the browser view BEFORE they enter a valid pin.
        
        activeWebsite = @"http://www.fiu.edu";
        activePin = @"No Pin";
    }
    
    return self;
}


// validatePin method accepts a pin.
-(BOOL)validatePin:(NSString *)obtainedPin
{
    // It iterates through the dictionary's keys or 'pins'
    for(NSString *pin in globalPinData)
    {
        // If the current key or 'pin' matches the obtainedPin then it's a valid pin.
        if ([obtainedPin isEqualToString:pin])
        {
            activePin = obtainedPin;
            activeWebsite = [globalPinData objectForKey:obtainedPin];
            
            return TRUE;
        }
    }
    
    // If it iterates through the whole dictionary and finds no matches,
    // then they obtainedPin is not valid.
    
    return FALSE;
}


// The updateThePinDatabase method accepts two NSMutableArrays, one for pins, and one for websites.
-(void)updateThePinDatabase:(NSMutableArray *)obtainedPins :(NSMutableArray *)obtainedSites
{
    // Create a Dictionary to store these new pins and websites.
    NSMutableDictionary *newPinsAndWebsites = [[NSMutableDictionary alloc] initWithCapacity:10];
    
    
    // Sort through the 10 pins and websites in both of the arrays and add their matching pairs
    // to the dictionary. Since there can be no more than 10 pairs, I hard coded the index limit.
    for(int index = 0; index < 10; index++)
    {
        [newPinsAndWebsites setValue:
         [obtainedSites objectAtIndex:index]forKey:[obtainedPins objectAtIndex:index]];
    }
    
    // Since the data I received is temporary, I need to update the database or dictionary holding
    // my sets of pins and websites. So I assign the updated values of the new dictionary to the
    // globalPinData. Thus, updating the database.
    
    globalPinData = newPinsAndWebsites;
    
}

@end
