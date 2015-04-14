//
//  ReporteDetalleViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReporteDetalleViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *lblBalanceGlobal;
@property (weak, nonatomic) IBOutlet UITableView *tblIngEng;

@end
