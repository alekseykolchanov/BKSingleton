//
//  BKSingleton.h
//  BKSingleton
//
//  Created by Hikida Hajime on 11/10/11.
//  Copyright 2011 boreal-kiss.com. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * A bare-bone singleton class capable of subclassing in a thread-safe manner.
 */
@interface BKSingleton : NSObject{
	
}

/**
 * Returns a singleton instance.
 */
+(id)sharedInstance;

/**
 * This method is called when the singleton instance is initially created.
 * Adds additional initialization steps if necessary.
 * This method does nothing by default.
 */
-(void)setupMethods;
@end
