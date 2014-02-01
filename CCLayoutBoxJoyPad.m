//
//  CCLayoutBoxJoyPad.h
//  Lumps of Clay
//
//  Created by Chadwyk on 1/22/14.
//  Copyright Wykmedia 2014. All rights reserved.
//
// -----------------------------------------------------------------------

#import "CCLayoutBoxJoyPad.h"


@implementation CCLayoutBoxJoyPad

#ifdef __CC_PLATFORM_IOS

-(CCButtonHoldable *) itemForTouch: (UITouch *) touch
{
    //not [touch view], but OpenGL view, so cocos can work with overlaying UIKit elements
	   
    CGPoint touchLocation = [touch locationInView:[touch view]];
    touchLocation = [[CCDirector sharedDirector] convertToGL:touchLocation];
    
    
    
   
    
    NSEnumerator *itemEnumerator = [self.children objectEnumerator];
    CCButtonHoldable* item = nil;
    while( item = [itemEnumerator nextObject] ) {
        
        CGPoint local = [item convertToNodeSpace:touchLocation];
        CGRect r = [item rect];
        r.origin = CGPointZero;
        
        if( CGRectContainsPoint( r, local ) )
            return item;
        
    }
    
    
    	return nil;
}


- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event{
    
	selectedItem = [self itemForTouch:touch];
	[selectedItem selected];
	
}



- (void)touchEnded:(UITouch *)touch withEvent:(UIEvent *)event{

    
	[selectedItem unselected];
    
}

-(void) touchCancelled:(UITouch *)touch withEvent:(UIEvent *)event
{
    
	[selectedItem unselected];
    
}

-(void) touchMoved:(UITouch *)touch withEvent:(UIEvent *)event
{
    
	CCButtonHoldable *currentItem = [self itemForTouch:touch];
    
	if (currentItem != selectedItem) {
		[selectedItem unselected];
		selectedItem = currentItem;
		[selectedItem selected];
	}
}
#elif __CC_PLATFORM_MAC

//************** MAC SUPPORT UNTESTED ***************

-(CCButtonHoldable *) itemForMouseEvent: (NSEvent *) event{
    CGPoint location = [(CCDirectorMac*)[CCDirector sharedDirector] convertEventToGL:event];


    
    NSEnumerator *itemEnumerator = [self.children objectEnumerator];
    CCButtonHoldable* item = nil;
    while( item = [itemEnumerator nextObject] ) {
        
        CGPoint local = [item convertToNodeSpace:location];
        CGRect r = [item rect];
        r.origin = CGPointZero;
        
        if( CGRectContainsPoint( r, local ) )
            return item;
        
    }
    
    
    return nil;
}

-(void) mouseUp:(NSEvent *)event
{
    [selectedItem unselected];

}
-(void) mouseDown:(NSEvent *)event
{
    selectedItem = [self itemForMouseEvent:touch];

    [selectedItem selected];

}
-(void) mouseDragged:(NSEvent *)event
{
	CCButtonHoldable *currentItem = [self itemForTouch:touch];
    
	if (currentItem != selectedItem) {
		[selectedItem unselected];
		selectedItem = currentItem;
		[selectedItem selected];
	}
}


#endif



@end
