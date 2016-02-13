# WKWebViewDemo

> *Update: It turned out that while the local storage mechanism I was using does work in Safari and not `WKWebView`, it was easier than expected: just use the `localStorage` JavaScript variable.*

> *I'm leaving this project as a useful testbed for `WKWebView` usage.*

-----

I am trying to get local storage working with `WKWebView`.

This project is a Mac app that shows a window with some buttons and a `WKWebView`.

The three buttons show three variations of the same page: the [Sticky Notes WebKit demo](https://webkit.org/demos/sticky-notes/):

- **Remote** loads the [Sticky Notes WebKit demo](https://webkit.org/demos/sticky-notes/) page in the `WKWebView`.

- **Local** loads the same content from a copy in the app bundle.

- **Safari** loads the [Sticky Notes WebKit demo](https://webkit.org/demos/sticky-notes/) in your browser.

The first two do not work; the latter does.

What should happen is it should appear with one default sticky note, and an enabled **New Note** button will add new sticky notes.

In the **Remote** and **Local** variations, no note appears, and the **New Note** button is disabled, indicating that it couldn't access the local storage.

I'm hoping that I'm just doing something wrong in loading the `WKWebView`, but it's possible that this just isn't supported.

Here's my code for the **Remote** variation:

    WKWebViewConfiguration *config = [WKWebViewConfiguration new];
    
    config.websiteDataStore = [WKWebsiteDataStore defaultDataStore];
    
    self.webView = [[WKWebView alloc] initWithFrame:self.container.frame configuration:config];
    self.webView.autoresizingMask = NSViewWidthSizable | NSViewHeightSizable;
    
    [self.container addSubview:self.webView];

    NSURL *url = [NSURL URLWithString:@"https://webkit.org/demos/sticky-notes/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    [self.webView loadRequest:request];

Any assistance much appreciated!  *No longer needed.*
