//
//  LoginViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "LoginViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>


@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.loginButton.readPermissions= @[@"public_profile", @"email", @"user_friends"];
    //self.loginButton.delegate = self;
    /*FBSDKLoginButton *loginButton= [[FBSDKLoginButton alloc] init];
    [self.view addSubview:loginButton]; */
    // Do any additional setup after loading the view.
    /*FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
    loginButton.center = self.view.center;
    [self.view addSubview:loginButton];*/
    //[FBSDKProfile enableUpdatesOnAccessTokenChange:YES];
   // [[NSNotificationCenterr defaultCenter] addObserver:self selector:@selector(profileUpdated:) name:FBSDKProfileDidChangeNotification object:nil];
}

/*-(void)profileUpdated:(NSNotification *) notification{
    NSLog(@"User name: %@",[FBSDKProfile currentProfile].name);
    NSLog(@"User ID: %@",[FBSDKProfile currentProfile].userID);
}

- (void)  loginButton:(FBSDKLoginButton *)loginButton
didCompleteWithResult:(FBSDKLoginManagerLoginResult *)result
                error:(NSError *)error{
    
}
- (void)loginButtonDidLogOut:(FBSDKLoginButton *)loginButton{
    
}*/

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
