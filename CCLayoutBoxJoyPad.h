//
//  CCLayoutBoxJoyPad.h
//  Lumps of Clay
//
//  Created by Chadwyk on 1/22/14.
//  Copyright Wykmedia 2014. All rights reserved.
//
// -----------------------------------------------------------------------

//#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "CCButtonHoldable.h"

@interface CCLayoutBoxJoyPad : CCLayoutBox {
	
    CCButtonHoldable *selectedItem;
}

-(CCButtonHoldable *) itemForTouch: (UITouch *) touch;

@end