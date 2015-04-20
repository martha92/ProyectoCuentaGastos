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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)btnTerminarClicked:(UIButton *)sender {
}


- (IBAction)swIngresoClicked:(UISwitch *)sender {
    if(![self.swIngreso isOn])
        self.viewDetalle.hidden=YES;
    else
        self.viewDetalle.hidden=NO;
}



- (void)quitaTeclado{
    [self.view endEditing:YES];
}

- (IBAction)btnRegistrarOtroClicked:(UIButton *)sender {
    self.txtAno.text= @"";
    self.txtMes.text=@"";
    self.txtDia.text=@"";
    self.txtFechaIngreso.text=@"";
    [self.navigationController popViewControllerAnimated:YES];
}
@end
