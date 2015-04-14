//
//  RegistroEgresoViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 12/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface RegistroEgresoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITextField *txtConcepto;
@property (weak, nonatomic) IBOutlet UITextField *txtCantidad;

@end
