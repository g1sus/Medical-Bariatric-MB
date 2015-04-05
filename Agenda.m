//
//  Agenda.m
//  MB
//
//  Created by Jesus Antonio Hernandez Mendez on 01/04/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "Agenda.h"
#import "SWRevealViewController.h"
#import <Parse/Parse.h>

UIAlertView *alert;

@interface Agenda ()

@end

@implementation Agenda

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.btnMenu setTarget: self.revealViewController];
        [self.btnMenu setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
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


//boton enviar
- (IBAction)btnSave:(id)sender {
    //Agregar datos en parse desde Editar Perfil
    
    if ([self.txtDia.text isEqualToString:@""] || [self.txtHora.text isEqualToString:@""] || [self.txtMsj.text isEqualToString:@""])
    {
        
        NSLog(@"Campos Obligatorios");
        
    }else{
        //Formateador para crear numeros desde un NSString
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        
        
        PFObject *objTemp = [PFObject objectWithClassName:@"MedicalBariatric"];
        objTemp[@"Dia"] = self.txtDia.text;
        objTemp[@"Hora"] = self.txtHora.text;
        objTemp[@"Mensaje"] = self.txtMsj.text;
        
        if ([objTemp saveInBackground]){
            self.txtDia.text = nil;
            self.txtHora.text = nil;
            self.txtMsj.text = nil;
        }
        else
        {
            NSLog(@"Error Guardar");
        }
        alert = [[UIAlertView alloc] initWithTitle:@"!!!Gracias!!!"
                                           message:@"En el Transcurso del dia, Recibiras tu confirmacion!!!"
                                          delegate:self
                                 cancelButtonTitle:@"OK"
                                 otherButtonTitles: nil];
        [alert show];

        
    }

}
@end
