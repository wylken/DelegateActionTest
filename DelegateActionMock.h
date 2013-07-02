//
//  DelegateActionMock.h
//  eduexpo
//
//  Created by Wylken dos Santos Machado on 26/06/13.
//  Copyright (c) 2013 Inform Sistemas. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "ActionDelegate.h"
#import "TesteDelegate.h"


@interface DelegateActionMock : SenTestCase<ActionDelegate>

@property(strong, atomic) id objectToCompare;
@property(strong, atomic) id<TesteDelegate> delegate;
@property(strong, atomic) NSString *stringSelector;


-(DelegateActionMock *) initWithObjectToCompare:(id)objectToCompare type:(NSString *)type : delegate;

@end
