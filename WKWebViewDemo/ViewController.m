//
//  ViewController.m
//  WKWebViewDemo
//
//  Created by David Sinclair on 2016-02-02.
//  Copyright © 2016 Dejal Systems, LLC. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    WKWebViewConfiguration *config = [WKWebViewConfiguration new];
    
    config.websiteDataStore = [WKWebsiteDataStore defaultDataStore];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.container.frame configuration:config];
    self.webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    
    [self.container addSubview:self.webView];
    
    [self remote:nil];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)remote:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://webkit.org/demos/sticky-notes/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    self.urlLabel.stringValue = url.absoluteString;
    
    [self.webView loadRequest:request];
}

- (IBAction)local:(id)sender {
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"Documents" withExtension:@""];
    
    self.urlLabel.stringValue = url.absoluteString;
    
    [self.webView loadFileURL:url allowingReadAccessToURL:url];
}

- (IBAction)safari:(id)sender {
    NSURL *url = [NSURL URLWithString:@"https://webkit.org/demos/sticky-notes/"];
    
    [[NSWorkspace sharedWorkspace] openURL:url];
}

@end
