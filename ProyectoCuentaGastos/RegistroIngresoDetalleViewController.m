//
//  RegistroIngresoDetalleViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "RegistroIngresoDetalleViewController.h"

@implementation RegistroIngresoDetalleViewController


- (void) viewDidLoad{
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer:tap];
    self.datePicker.hidden=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnTerminarClicked:(UIButton *)sender {
}

- (IBAction)btnRegistrarOtroClicked:(UIButton *)sender {
    self.txtAno.text= @"";
    self.txtMes.text=@"";
    self.txtDia.text=@"";
    self.txtFechaIngreso.text=@"";
    
}

- (IBAction)swIngresoClicked:(UISwitch *)sender {
    if(![self.swIngreso isOn])
        self.viewDetalle.hidden=YES;
    else
        self.viewDetalle.hidden=NO;
}

- (IBAction)datePickerChanged:(UIDatePicker *)sender {
    
    NSDateFormatter *formato = [[NSDateFormatter alloc]init];
    [formato setDateStyle:NSDateFormatterMediumStyle];
    NSDate *fecha= [self.datePicker date];
    NSString *form = [formato stringFromDate:fecha];
    self.txtFechaIngreso.text = [NSString stringWithFormat:@"%@",form];
}

- (IBAction)btnCalendarioClicked:(UIButton *)sender {
    self.datePicker.hidden=NO;
}



- (void)quitaTeclado{
    [self.view endEditing:YES];
    self.datePicker.hidden = YES;
}
@end
