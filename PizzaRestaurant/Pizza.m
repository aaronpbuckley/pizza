//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Aaron Buckley on 7/27/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza
- (instancetype) initWithPizzaSize:(NSString *) size andPizzaToppings:(NSArray *) pizzaToppings{
    self = [super init];
    if(self) {
        if ([size compare:@"small"]  || [size compare:@"Small"]){
            _size = small;
        }
        else if ([size compare:@"medium"]  || [size compare:@"Medium"]){
            _size = medium;
        }
        else if ([size compare:@"large"] || [size compare:@"Large"]){
            _size = large;
        }
        _pizzaToppings = pizzaToppings;
    }
    return self;
}

-(NSString *) sizeString {
    switch(self.size) {
        case small:
            return @"small";
        case medium:
            return @"medium";
        case large:
            return @"large";
        default:
            return @"unknown";
    }
}

-(NSString *)description{
    NSString *pizzaDescription = [NSString stringWithFormat:@"Size: %@ Toppings %@", [self sizeString], [self pizzaToppings] ];
    return pizzaDescription;
}

//- (NSArray *)pizzaSize{
//    NSArray *pizzaSize = [@"small", @"medium", @"large"];
//}
@end
