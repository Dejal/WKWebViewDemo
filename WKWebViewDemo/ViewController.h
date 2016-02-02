//
//  ViewController.h
//  WKWebViewDemo
//
//  Created by David Sinclair on 2016-02-02.
//  Copyright © 2016 Dejal Systems, LLC. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController

@property (nonatomic, strong) WKWebView *webView;
@property (weak) IBOutlet NSButton *remote;
@property (weak) IBOutlet NSButton *local;
@property (weak) IBOutlet NSButton *safari;
@property (weak) IBOutlet NSTextField *urlLabel;
@property (weak) IBOutlet NSView *container;

- (IBAction)remote:(id)sender;
- (IBAction)local:(id)sender;
- (IBAction)safari:(id)sender;

@end

