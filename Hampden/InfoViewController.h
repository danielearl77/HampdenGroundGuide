//
//  InfoViewController.h
//  Hampden
//
//  Created by MacBookPro on 09/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoViewController : UIViewController <UIWebViewDelegate> {
    IBOutlet UIWebView *webpage;
    IBOutlet UIActivityIndicatorView *pageLoading;
    IBOutlet UIView *errorMsg;
}

@property (retain, nonatomic) UIWebView *webpage;
@property (retain, nonatomic) UIActivityIndicatorView *pageLoading;
@property (retain, nonatomic) UIView *errorMsg;
@end
