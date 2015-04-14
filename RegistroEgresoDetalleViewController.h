//
//  RegistroEgresoDetalleViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistroEgresoDetalleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *viewDetalle;
@property (weak, nonatomic) IBOutlet UISwitch *swEgreso;
@property (weak, nonatomic) IBOutlet UITextField *txtAno;
@property (weak, nonatomic) IBOutlet UITextField *txtMes;
@property (weak, nonatomic) IBOutlet UITextField *txtDia;

@property (weak, nonatomic) IBOutlet UITextField *txtFechaEgreso;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)swEgresoClicked:(UISwitch *)sender;
- (IBAction)datePickerChanged:(UIDatePicker *)sender;
- (IBAction)btnCalendarioClicked:(UIButton *)sender;
- (IBAction)btnRegistrarOtroClicked:(UIButton *)sender;
- (IBAction)btnTerminarClicked:(UIButton *)sender;
@end
