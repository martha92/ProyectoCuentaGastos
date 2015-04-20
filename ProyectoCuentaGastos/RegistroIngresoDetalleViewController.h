//
//  RegistroIngresoDetalleViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistroIngresoDetalleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *viewDetalle;
@property (weak, nonatomic) IBOutlet UISwitch *swIngreso;
@property (weak, nonatomic) IBOutlet UITextField *txtAno;
@property (weak, nonatomic) IBOutlet UITextField *txtMes;
@property (weak, nonatomic) IBOutlet UITextField *txtDia;
@property (weak, nonatomic) IBOutlet UITextField *txtFechaIngreso;
- (IBAction)btnTerminarClicked:(UIButton *)sender;
- (IBAction)swIngresoClicked:(UISwitch *)sender;
- (IBAction)btnRegistrarOtroClicked:(UIButton *)sender;
-(void)quitaTeclado;
@end
