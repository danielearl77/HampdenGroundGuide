//
//  InfoViewController.m
//  Hampden
//
//  Created by MacBookPro on 09/01/2017.
//  Copyright © 2017 Daniel Earl. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController
@synthesize webpage, pageLoading, errorMsg;

#pragma mark - View lifecycle

- (void)webViewDidStartLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webpage
{
    errorMsg.hidden=YES;
    [pageLoading stopAnimating];
}

- (void)webView:(UIWebView *)webpage didFailLoadWithError:(NSError *)error
{
    errorMsg.hidden=NO;
    [pageLoading stopAnimating];
}

-(IBAction)backButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSString *webAddress = @"https://en.wikipedia.org/wiki/Hampden_Park";
    NSURL *addr = [NSURL URLWithString:webAddress];
    NSURLRequest *requestpage = [NSURLRequest requestWithURL:addr];
    [webpage loadRequest:requestpage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
