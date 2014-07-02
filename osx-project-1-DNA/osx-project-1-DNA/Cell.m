//
//  Cell.m
//  osx-project-1
//
//  Created by admin on 02.07.14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "Cell.h"


@implementation Cell

- (instancetype)initWithArrayOfATGC
{
    self = [super init];
    if (self) {
        NSString * string = @"";
        chainLength = 100;
        _DNA = [NSMutableArray arrayWithCapacity:chainLength];
        
        for (int i = 0; i < chainLength; i++) {
            switch (arc4random_uniform(4)) {
                case 0:
                    string = @"A";
                    break;
                case 1:
                    string = @"T";
                    break;
                case 2:
                    string = @"G";
                    break;
                case 3:
                    string = @"C";
                    break;
            }
            
            [_DNA addObject:string];
        }
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        chainLength = 100;
        _DNA = [NSMutableArray arrayWithCapacity:chainLength];
    }
    return self;
}

- (int)hammingDistance:(Cell *)cell
{
    int hammingDistance = 0;
    
    for (int i = 0; i < chainLength; i++) {
        BOOL isElementEqual = [[_DNA objectAtIndex:i] isEqualToString:[cell.DNA objectAtIndex:i]];
        
        if (!isElementEqual)
            hammingDistance++;
    }
    
    return hammingDistance;
}

@end
