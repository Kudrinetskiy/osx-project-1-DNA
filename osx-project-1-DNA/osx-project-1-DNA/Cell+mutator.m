//
//  Cell+mutator.m
//  osx-project-1
//
//  Created by admin on 02.07.14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import "Cell+mutator.h"


@implementation Cell (mutator)

- (void)mutate:(int)percentOfElementsToChange
{
    NSString * oldElement;
    NSString * newElement;
    int elementsChanged = 0;
    int elementsToChange = (int)[self.DNA count] * percentOfElementsToChange / 100;
    
    NSMutableArray * indices = [NSMutableArray arrayWithCapacity:[self.DNA count]];
    
    for (int i = 0; i < [self.DNA count]; i++) {
        [indices addObject:[NSNumber numberWithInt:i]];
    }
    
    while (elementsChanged < elementsToChange) {
        
        int randomToGetIndex = arc4random_uniform((int)[indices count]);
        int randomIndex = [[indices objectAtIndex:randomToGetIndex] intValue];
        [indices removeObjectAtIndex:randomToGetIndex];
        oldElement = [self.DNA objectAtIndex:randomIndex];
        
        newElement = [self selectNewElement:oldElement];
        
        [self.DNA replaceObjectAtIndex:randomIndex withObject:newElement];
        elementsChanged++;
    }
}

- (NSString *)selectNewElement:(NSString *)oldElement
{
    int elementNumber = arc4random_uniform(3);
    
    if (([oldElement isEqual:@"T"] && elementNumber > 0) ||
        ([oldElement isEqual:@"G"] && elementNumber == 2) ||
        [oldElement isEqual:@"A"])
        elementNumber++;
    
    switch (elementNumber) {
        case 0:
            return @"A";
        case 1:
            return @"T";
        case 2:
            return @"G";
        case 3:
            return @"C";
            
        default:
            return @"";
    }
}

@end
