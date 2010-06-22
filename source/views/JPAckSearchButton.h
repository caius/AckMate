// Copyright (c) 2010 Trevor Squires. All Rights Reserved.
// See License.txt for full license.

#import <Cocoa/Cocoa.h>

@class JPAckResultTableView;

@interface JPAckSearchButton : NSButton {
  JPAckResultTableView *_resultsView;
}

@property (nonatomic, retain) IBOutlet JPAckResultTableView *resultsView;

@end
