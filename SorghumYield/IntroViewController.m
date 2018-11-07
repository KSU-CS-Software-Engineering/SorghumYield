//
//  IntroViewController.m
//  SorghumYield
//
//  Created by cis on 23/11/2016.
//  Copyright © 2016 Robert Sebek. All rights reserved.
//

#import "IntroViewController.h"
#import "FirebaseUI.h"
#import "FUIAuthProvider.h"
//#import "FUIEmailAuth.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

FIRAuth *auth;
FUIAuth *authUI;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self disableBackButton];
    
    auth = [FIRAuth auth];
    authUI = [FUIAuth defaultAuthUI];
    authUI.delegate = self;
    // Objective-C
    UINavigationController *authViewController = [authUI authViewController];
    [self presentViewController:authViewController animated:true completion:Nil];
    // Use authViewController as your root view controller,
    // or present it on top of an existing view controller.
    
    
}

- (void)authUI:(FUIAuth *)authUI
didSignInWithAuthDataResult:(nullable FIRAuthDataResult *)authDataResult
         error:(nullable NSError *)error {
    // Implement this method to handle signed in user (`authDataResult.user`) or error if any.
    
}

@end
