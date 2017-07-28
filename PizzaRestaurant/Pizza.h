//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Aaron Buckley on 7/27/17.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {small, medium, large}  PizzaSize;


@interface Pizza : NSObject
@property (nonatomic, assign) PizzaSize size;
@property (nonatomic, strong) NSArray* pizzaToppings;

- (instancetype) initWithPizzaSize:(NSString *) size andPizzaToppings:(NSArray *) pizzaToppings;


@end
