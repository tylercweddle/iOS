//
//  Objc_tutorial.m
//  FoodTracker
//
//  Created by Tyler Christopher Weddle on 1/26/18.
//  Copyright © 2018 libraries. All rights reserved.
//

#import "Objc_tutorial.h"

@implementation Objct

-(int)hello_world
{
    NSLog(@"Hello World!\n");
    return 0;
}

-(NSString*) str_append :(NSString*) s1 :(NSString*) s2
{
    return [s1 stringByAppendingString:s2];
}


/*
 *For playing around with arithmetic and function calls
 */
-(int) arith :(int) a :(int) b
{
    if (a >= b)
    {
        return a;
    }
    
    return b;
}

-(double) squared :(double) a
{
    return squared_block(a);
}

-(double*) fold_squared :(double*)a
{
    int length = (sizeof(a)) / (sizeof(a[0]));
    double* to_return = malloc(sizeof(a));
    for (int i = 0; i < length; i ++)
    {
        to_return[i] = squared_block(a[i]);
    }
    return to_return;
}

//Example of a block
double (^squared_block)(double) =
    ^(double value)
    {
        return value * value;
    };
@end
