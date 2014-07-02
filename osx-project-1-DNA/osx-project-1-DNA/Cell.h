//
//  Cell.h
//  osx-project-1
//
//  Created by admin on 02.07.14.
//  Copyright (c) 2014 admin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Cell : NSObject {
@private
    int chainLength;
}

@property NSMutableArray * DNA;

- (instancetype)initWithArrayOfATGC;
- (int)hammingDistance:(Cell *)cell;


@end
