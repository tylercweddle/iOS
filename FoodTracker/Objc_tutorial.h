//
//  Objc_tutorial.h
//  FoodTracker
//
//  Created by Tyler Christopher Weddle on 1/26/18.
//  Copyright © 2018 libraries. All rights reserved.
//

#ifndef Objc_tutorial_h
#define Objc_tutorial_h
#import <Foundation/Foundation.h>

#import "CFile.h"
@interface Objct : NSObject

-(int)hello_world;
-(int)arith:(int) a :(int) b;
-(double)squared :(double)a;
-(double*) fold_squared :(double*)a;
-(NSString*) str_append :(NSString*) s1 :(NSString*) s2;
@end

#endif /* Objc_tutorial_h */
