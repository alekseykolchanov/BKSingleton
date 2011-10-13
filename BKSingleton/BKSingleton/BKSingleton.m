//
//  BKSingleton.m
//  BKSingleton
//
//  Created by Hikida Hajime on 11/10/11.
//  Copyright 2011 boreal-kiss.com. All rights reserved.
//

#import "BKSingleton.h"

static NSMutableDictionary *_registry = nil;

@implementation BKSingleton

+(id)sharedInstance{
	//NSLog(@"%s", __func__);
	
	NSString *className = NSStringFromClass(self);
	return [_registry objectForKey:className];
}

-(void)setupMethods{
	
}

//Override
+(void)initialize{
	//NSLog(@"%s", __func__);
	
	if (!_registry){
		_registry = [[NSMutableDictionary dictionary] retain];
	}
	
	NSString *className = NSStringFromClass(self);
	
	if (![_registry objectForKey:className]){
		[_registry setObject:[[[self alloc] init] autorelease] forKey:className];
	}
}

//Override
-(id)init{
	//NSLog(@"%s", __func__);
	
	id instance = [[self class] sharedInstance];
	
	if (instance){
		return instance;
	}
	
	if (self = [super init]){
		[self setupMethods];
	}
	
	return self;
}

//Override
-(id)copyWithZone:(NSZone*)zone{
    return self;
}

//Override
- (id)retain{
    return self;
}

//Override
- (unsigned)retainCount{
    return NSUIntegerMax;
}

//Override
- (void)release{
	
}

//Override
- (id)autorelease{
    return self;
}
@end
