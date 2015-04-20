//
//  RegistroEgresoViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "RegistroEgresoViewController.h"

@implementation RegistroEgresoViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer:tap];
    self.datePicker.hidden = YES;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
     self.txtCantidad.text = @"";
     self.txtConcepto.text = @"";
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }

- (IBAction)btnFecha:(UIButton *)sender {
    self.datePicker.hidden=NO;
}
- (IBAction)datePickerChanged:(UIDatePicker *)sender {
    NSDateFormatter *formato = [[NSDateFormatter alloc]init];
    [formato setDateStyle:NSDateFormatterMediumStyle];
    NSDate *fecha= [self.datePicker date];
    NSString *form = [formato stringFromDate:fecha];
    self.txtFechaEgreso.text = [NSString stringWithFormat:@"%@",form];
}

- (void)quitaTeclado{
    [self.view endEditing:YES];
    self.datePicker.hidden = YES;
}
@end
