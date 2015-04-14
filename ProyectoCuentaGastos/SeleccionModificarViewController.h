//
//  SeleccionModificarViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 14/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SWRevealViewController.h"

@interface SeleccionModificarViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UITableView *tbSeleccion;

@end
