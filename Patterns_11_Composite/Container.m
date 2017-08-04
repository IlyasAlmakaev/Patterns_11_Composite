//
//  Container.m
//  Patterns_11_Composite
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "Container.h"

@implementation Container

- (NSMutableArray *)components {
    if (_components == nil) {
        _components = [[NSMutableArray alloc] init];
    }
    
    return _components;
}

- (void)addComponent:(id<CompositeObjectProtocol>)aComponent {
    [self.components addObject:aComponent];
}

- (NSString *)getData {
    NSMutableString *valueToReturn = [[NSMutableString alloc] init];
    [valueToReturn appendString:@"<ContainerValues"];
    
    for (id<CompositeObjectProtocol>object in _components) {
        [valueToReturn appendString:[object getData]];
    }
    [valueToReturn appendString:@"</ConatainerValues"];
    
    return valueToReturn;
}

@end
