//
//  CCLayoutBoxJoyPad.h
//  
//
//  Created by Chadwyk Krueger on 1/28/14.
//
//
// -----------------------------------------------------------------------

#import "cocos2d.h"
#import "cocos2d-ui.h"
#import "CCButtonHoldable.h"

@interface CCLayoutBoxJoyPad : CCLayoutBox {
	
    CCButtonHoldable *selectedItem;
}

-(CCButtonHoldable *) itemForTouch: (UITouch *) touch;

@end