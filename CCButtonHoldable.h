//
//  CCButtonHoldable.h
//
//
//  Created by Chadwyk Krueger on 1/28/14.
//
//
// -----------------------------------------------------------------------


#import "cocos2d.h"
#import "cocos2d-ui.h"

@interface CCButtonHoldable : CCSprite {
	bool buttonHeld, selected, highlighted, isEnabled;
    CCSpriteFrame *highlightedSpriteFrame;
    CCSpriteFrame *defaultSpriteFrame;

}

@property ( nonatomic) bool buttonHeld;

-(id)initWithSpriteFrame:(CCSpriteFrame*)spriteFrame HighlightedSpriteFileName:(CCSpriteFrame*)highlightedSpriteFileName isEnabled:(BOOL)enabled;
-(CGRect) rect;
-(void) selected;
-(void) unselected;
-(void) enable;
-(void) disable;
@end