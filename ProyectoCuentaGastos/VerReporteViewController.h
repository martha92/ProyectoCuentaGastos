//
//  VerReporteViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface VerReporteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *busquedaPeriodo;
@property (weak, nonatomic) IBOutlet UIImageView *imagenReporte;

- (IBAction)busquedaPeriodoChanged:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *lblFechaIni;
@property (weak, nonatomic) IBOutlet UILabel *lblFechaFin;
@property (weak, nonatomic) IBOutlet UITextField *txtFechaIni;
@property (weak, nonatomic) IBOutlet UITextField *txtFechaFin;
@property (weak, nonatomic) IBOutlet UIButton *btnCalFechaIni;
@property (weak, nonatomic) IBOutlet UIButton *btnCalFechaFin;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
- (IBAction)dateChanged:(UIDatePicker *)sender;
- (IBAction)btnChanged:(UIButton *)sender;
- (IBAction)btnBuscarChanged:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *lblPeriodo;
@property (weak, nonatomic) IBOutlet UILabel *lblPeriodoSeleccionado;
- (IBAction)btnPeriodoChanged:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UIButton *btnPeriodo;
@property (weak, nonatomic) IBOutlet UIButton *btnBuscar;

@property(nonatomic, strong) NSArray *infoPickerView;

- (void)quitaTeclado;


@end
