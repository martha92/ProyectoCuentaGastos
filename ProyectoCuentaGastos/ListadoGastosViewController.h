//
//  ListadoGastosViewController.h
//  ProyectoCuentaGastos
//
//  Created by Martha Garcia Contreras on 14/04/15.
//  Copyright (c) 2015 Martha Garcia Contreras. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListadoGastosViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tbDesglose;

@end
