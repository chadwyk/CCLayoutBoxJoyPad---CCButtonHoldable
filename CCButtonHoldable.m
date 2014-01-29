//
//  CCButtonHoldable.h
//
//
//  Created by Chadwyk Krueger on 1/28/14.
//
//
// -----------------------------------------------------------------------


#import "CCButtonHoldable.h"



@implementation CCButtonHoldable

@synthesize buttonHeld;

-(id)initWithSpriteFrame:(CCSpriteFrame*)spriteFrame HighlightedSpriteFileName:(CCSpriteFrame*)highlightedSpriteFileName isEnabled:(BOOL)enabled
{
    if (self = [super initWithSpriteFrame:spriteFrame]) {
        
        defaultSpriteFrame=  spriteFrame;
        highlightedSpriteFrame = highlightedSpriteFileName;
        isEnabled = enabled;
      
        
    }
    return self;
}



-(void) enable {
    
    isEnabled = YES;
}

-(void) disable {
    
    isEnabled = NO;
}

-(CGRect) rect
{
	return CGRectMake( self.position.x - self.contentSize.width*self.anchorPoint.x,
					  self.position.y - self.contentSize.height*self.anchorPoint.y,
					  self.contentSize.width,
                     self.contentSize.height);
}

-(void) selected
{
	// subclass to change the default action
	if(isEnabled) {
        selected = YES;
        [self setSpriteFrame:highlightedSpriteFrame];
        buttonHeld=YES;
        [self setOpacity:128];

	}
}


-(void) unselected
{
	// subclass to change the default action
	if(isEnabled) {
        selected = NO;
        [self setSpriteFrame:defaultSpriteFrame ];
        buttonHeld = NO;
        [self setOpacity:64];
	}
}




@end
