// Copyright (c) 2010 Trevor Squires. All Rights Reserved.
// See License.txt for full license.

#import "JPAckSearchButton.h"

@implementation JPAckSearchButton

@synthesize resultsView = _resultsView;

- (BOOL)performKeyEquivalent:(NSEvent*)event
{
  if ([[event charactersIgnoringModifiers] isEqualToString:[self keyEquivalent]] && ([event modifierFlags] & NSCommandKeyMask))
  {
    [self performClick:nil];
    return YES;
  }

  // If the enter key was pressed, we want the table view to respond to that, so send it along
  if ([[event charactersIgnoringModifiers] characterAtIndex: 0] == NSEnterCharacter) {
    [self.resultsView keyDown:event];
    return NO;
  }
  
  return [super performKeyEquivalent:event];
}

@end
