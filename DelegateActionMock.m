//
//  DelegateActionMock.m
//  eduexpo
//
//  Created by Wylken dos Santos Machado on 26/06/13.
//  Copyright (c) 2013 Inform Sistemas. All rights reserved.
//

#import "DelegateActionMock.h"

@implementation DelegateActionMock

-(DelegateActionMock *) initWithObjectToCompare:(id)objectToCompare type:(NSString *)type : delegate{
    if(self = [super init]){
        self.objectToCompare = objectToCompare;
        self.delegate = delegate;
        self.stringSelector = type;
    }
    return self;
}


-(void) actionFinished: (id) genericData{

    SEL sel = NSSelectorFromString(self.stringSelector);
    [self performSelector:sel withObject:genericData];
    
}

-(void) errorHandler:(id) code message:(id) message{
    
    [self.delegate assertDelegate:NO];
    
}

-(void) isEqualDelegate:(id) genericData{
    BOOL t = [self.objectToCompare isEqual:genericData];
    [self.delegate assertDelegate:t];
}

-(void) isNotNilDelegate:(id) genericData{
    if(genericData != nil)
        [self.delegate assertDelegate:YES];
    else
        [self.delegate assertDelegate:NO];
}

@end
