//
//  DocViewController.m
//  Vault
//
//  Created by Jace Allison on 2/28/12.
//  Copyright (c) 2012 Issaquah High School. All rights reserved.
//

#import "DocViewController.h"

static NSString *pdfNameToView = nil;

@implementation DocViewController

@synthesize pdfView;
@synthesize doneToolbar;
@synthesize doneButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *pdfPath = [Document loadPDF:pdfNameToView];
    NSURL *pdfUrl = [NSURL fileURLWithPath:pdfPath];
    NSURLRequest *fileRequest = [NSURLRequest requestWithURL:pdfUrl];
    [pdfView loadRequest:fileRequest];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
	return YES;
}

-(void)userDidTapWebView:(NSArray *)tapPoint {
    
}

+ (void)setFileNameToView:(NSString *)filePath {
    pdfNameToView = filePath;
    
}

- (IBAction)finishViewing:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)screenTouched:(id)sender {
    
}

@end