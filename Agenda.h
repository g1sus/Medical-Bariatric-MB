//
//  Agenda.h
//  MB
//
//  Created by Jesus Antonio Hernandez Mendez on 01/04/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Agenda : UIViewController

//Outlet
@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnMenu;

@property (strong, nonatomic) IBOutlet UITextField *txtHora;
@property (strong, nonatomic) IBOutlet UITextField *txtDia;
@property (strong, nonatomic) IBOutlet UITextField *txtMsj;

//Action
- (IBAction)btnSave:(id)sender;

@end
