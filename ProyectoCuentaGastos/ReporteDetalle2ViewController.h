//
//  ReporteDetalle2ViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 13/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReporteDetalle2ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *lblTotal;
@property (weak, nonatomic) IBOutlet UITableView *tbDesglose;

@end
