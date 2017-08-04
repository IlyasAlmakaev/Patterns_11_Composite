//
//  LeafObject.m
//  Patterns_11_Composite
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import "LeafObject.h"

@implementation LeafObject

- (NSString *)getData {
    return [[NSString alloc] initWithFormat:@"<%@>", self.leafValue];
}

- (void)addComponent:(id<CompositeObjectProtocol>)aComponent {
    NSLog(@"Can't add component. Sorry, man");
}

@end
