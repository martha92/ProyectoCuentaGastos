//
//  MainViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSDate *date = [NSDate date];
    NSTimeInterval timeInt= [date timeIntervalSince1970];
    NSString *intervalo = [NSString stringWithFormat:@"%f", timeInt];
    
    NSString *post = [NSString stringWithFormat:@"user=%@&initialDate=%@&finalDate=%@",@"2",@"1", intervalo];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%lu",(unsigned long)[postData length]];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:@"http://joaquint1991.net46.net/gastos/report.php"]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:request
                                          returningResponse:&response
                                                      error:&error];
    
    if (error == nil)
    {
        NSString *stringData = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        NSArray *jsonObject = [NSJSONSerialization JSONObjectWithData:[stringData dataUsingEncoding:NSUTF8StringEncoding] options:0 error:NULL];
        
        NSArray *balanceTotal = [jsonObject valueForKey:@"total"];
        NSLog(@"jsonObject=%@", balanceTotal);
        
    
    }
    else{
        NSLog(@"%@", error);
    }

    

}

@end
