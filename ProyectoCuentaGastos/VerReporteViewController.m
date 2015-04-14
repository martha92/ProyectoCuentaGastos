//
//  VerReporteViewController.m
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import "VerReporteViewController.h"
BOOL boton1 = false;
@implementation VerReporteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer *tap =[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(quitaTeclado)];
    [self.view addGestureRecognizer:tap];
    self.infoPickerView = [NSArray arrayWithObjects:@"Año",@"Mes", @"Día", nil];
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sidebarButton setTarget: self.revealViewController];
        [self.sidebarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
    // Do any additional setup after loading the view.
}

-(void) viewDidAppear:(BOOL)animated{
    self.lblPeriodo.hidden = NO;
    self.lblPeriodoSeleccionado.hidden=NO;
    self.btnPeriodo.hidden = NO;
    self.lblFechaIni.hidden = YES;
    self.lblFechaFin.hidden= YES;
    self.txtFechaFin.hidden= YES;
    self.txtFechaIni.hidden = YES;
    self.btnCalFechaFin.hidden= YES;
    self.btnCalFechaIni.hidden = YES;
    self.btnBuscar.hidden=YES;
    self.datePicker.hidden=YES;
    self.picker.hidden=YES;
    self.imagenReporte.hidden=YES;
    
}

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


- (IBAction)dateChanged:(UIDatePicker *)sender {
    NSDateFormatter *formato = [[NSDateFormatter alloc]init];
    [formato setDateStyle:NSDateFormatterMediumStyle];
    NSDate *fecha= [self.datePicker date];
    NSString *form = [formato stringFromDate:fecha];
    if(boton1)
        self.txtFechaIni.text = [NSString stringWithFormat:@"%@",form];
    else
        self.txtFechaFin.text = [NSString stringWithFormat:@"%@",form];
        
    
}

- (IBAction)btnChanged:(UIButton *)sender {
    if(sender == self.btnCalFechaIni)
        boton1 = true;
    else
        boton1=false;
    self.datePicker.hidden=NO;
}

- (IBAction)btnBuscarChanged:(UIButton *)sender {
    self.imagenReporte.hidden=NO;
}
- (IBAction)btnPeriodoChanged:(UIButton *)sender {
    self.picker.hidden = NO;
}
- (IBAction)busquedaPeriodoChanged:(id)sender {
    
    if (self.busquedaPeriodo.selectedSegmentIndex == 0) {
        self.lblPeriodo.hidden = NO;
        self.lblPeriodoSeleccionado.hidden=NO;
        self.btnPeriodo.hidden = NO;
        self.lblFechaIni.hidden = YES;
        self.lblFechaFin.hidden= YES;
        self.txtFechaFin.hidden= YES;
        self.txtFechaIni.hidden = YES;
        self.btnCalFechaFin.hidden= YES;
        self.btnCalFechaIni.hidden = YES;
        self.btnBuscar.hidden=YES;
        self.datePicker.hidden=YES;
        self.imagenReporte.hidden=YES;
        
    }
    else{
        self.lblFechaIni.hidden = NO;
        self.lblFechaFin.hidden= NO;
        self.txtFechaFin.hidden= NO;
        self.txtFechaIni.hidden = NO;
        self.btnCalFechaFin.hidden= NO;
        self.btnCalFechaIni.hidden = NO;
        self.btnBuscar.hidden=NO;
        self.lblPeriodo.hidden = YES;
        self.lblPeriodoSeleccionado.hidden=YES;
        self.btnPeriodo.hidden = YES;
        self.datePicker.hidden=YES;
        self.imagenReporte.hidden=YES;
    }

}

- (void)quitaTeclado{
    [self.view endEditing:YES];
    self.datePicker.hidden = YES;
    self.picker.hidden=YES;
}

- (void) muestrInfoDePeriodoSeleccionado{
    self.imagenReporte.hidden=NO;
    self.picker.hidden = YES;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.infoPickerView objectAtIndex:row];

    
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
    
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.infoPickerView.count;
   
}

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSInteger comp1 = [self.picker selectedRowInComponent:0];
    NSString *periodo = [self.infoPickerView objectAtIndex:comp1];
    self.lblPeriodoSeleccionado.text = [NSString stringWithFormat:@"%@",periodo];
    [self muestrInfoDePeriodoSeleccionado];
    
}
@end
