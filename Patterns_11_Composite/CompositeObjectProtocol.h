//
//  CompositeObjectProtocol.h
//  Patterns_11_Composite
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CompositeObjectProtocol <NSObject>

- (NSString *)getData;
- (void)addComponent:(id<CompositeObjectProtocol>)aComponent;

@end
