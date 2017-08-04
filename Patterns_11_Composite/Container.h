//
//  Container.h
//  Patterns_11_Composite
//
//  Created by Ильяс on 04.08.17.
//  Copyright © 2017 Алмакаев Ильяс. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CompositeObjectProtocol.h"

@interface Container : NSObject <CompositeObjectProtocol>

@property (nonatomic, strong) NSMutableArray *components;

@end
