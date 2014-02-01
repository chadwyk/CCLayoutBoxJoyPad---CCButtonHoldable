//
//  CCButtonHoldable.h
//  Lumps of Clay
//
//  Created by Chadwyk on 1/22/14.
//  Copyright Wykmedia 2014. All rights reserved.
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