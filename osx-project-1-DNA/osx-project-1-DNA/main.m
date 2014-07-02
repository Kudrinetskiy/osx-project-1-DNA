//
//  main.m
//  osx-project-1
//
//  Created by admin on 02.07.14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cell.h"
#import "Cell+mutator.h"


int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        Cell * cell1 = [[Cell alloc] initWithArrayOfATGC];
        Cell * cell2 = [[Cell alloc] initWithArrayOfATGC];
        
        //        for (int i = 0; i < [cell1.DNA count]; i++)
        //            printf("%s", [[cell1.DNA objectAtIndex:i] UTF8String]);
        //
        //        printf("\n");
        //
        //        for (int i = 0; i < [cell2.DNA count]; i++)
        //            printf("%s", [[cell2.DNA objectAtIndex:i] UTF8String]);
        //
        //        printf("\n");
        
        NSLog(@"%i", [cell2 hammingDistance:cell1]);
        
        [cell1 mutate:20];
        [cell2 mutate:70];
        
        NSLog(@"%i", [cell2 hammingDistance:cell1]);
    }
    return 0;
}

