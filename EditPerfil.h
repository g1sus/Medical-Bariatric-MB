//
//  EditPerfil.h
//  MB
//
//  Created by Jesus Antonio Hernandez Mendez on 02/04/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditPerfil : UIViewController

//Action
- (IBAction)btnBack:(id)sender;
- (IBAction)btnFoto:(id)sender;
- (IBAction)btnGuardar:(id)sender;

//TextFields
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtFechaNac;
@property (strong, nonatomic) IBOutlet UITextField *txtPeso;
@property (strong, nonatomic) IBOutlet UITextField *txtEstatura;
@property (strong, nonatomic) IBOutlet UITextField *txtMovil;
@property (strong, nonatomic) IBOutlet UITextField *txtMail;
@end
