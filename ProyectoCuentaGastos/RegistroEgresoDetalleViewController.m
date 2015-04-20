//
//  RegistroEgresoDetalleViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "RegistroEgresoDetalleViewController.h"

@implementation RegistroEgresoDetalleViewController


- (void) viewDidLoad{
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer:tap];
    self.datePicker.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)swEgresoClicked:(UISwitch *)sender {
    if(![self.swEgreso isOn])
        self.viewDetalle.hidden=YES;
    else
        self.viewDetalle.hidden=NO;
}

- (IBAction)datePickerChanged:(UIDatePicker *)sender {
    NSDateFormatter *formato = [[NSDateFormatter alloc]init];
    [formato setDateStyle:NSDateFormatterMediumStyle];
    NSDate *fecha= [self.datePicker date];
    NSString *form = [formato stringFromDate:fecha];
    self.txtFechaEgreso.text = [NSString stringWithFormat:@"%@",form];
    
    
}

- (IBAction)btnRegistrarOtroClicked:(UIButton *)sender {
    self.txtAno.text= @"";
    self.txtMes.text=@"";
    self.txtDia.text=@"";
    self.txtFechaEgreso.text=@"";
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)btnTerminarClicked:(UIButton *)sender {
}

- (void)quitaTeclado{
    [self.view endEditing:YES];
    self.datePicker.hidden = YES;
}
@end
