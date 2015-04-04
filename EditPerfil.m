//
//  EditPerfil.m
//  MB
//
//  Created by Jesus Antonio Hernandez Mendez on 02/04/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import "EditPerfil.h"
#import <Parse/Parse.h>

@interface EditPerfil ()

@end

@implementation EditPerfil

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //Parse
    //PFObject *testObject = [PFObject objectWithClassName:@"MedicalBariatric"];
    //testObject[@"Nombre"] = @"bar";
    //[testObject saveInBackground];
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

- (IBAction)btnBack:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)btnFoto:(id)sender {
}

- (IBAction)btnGuardar:(id)sender {
    //Agregar datos en parse desde Editar Perfil
    
    if ([self.txtNombre.text isEqualToString:@""] || [self.txtFechaNac.text isEqualToString:@""] || [self.txtPeso.text isEqualToString:@""] || [self.txtEstatura.text isEqualToString:@""]|| [self.txtMovil.text isEqualToString:@""] || [self.txtMail.text isEqualToString:@""])
    {
        
        NSLog(@"Campos Obligatorios");
        
    }else{
        //Formateador para crear numeros desde un NSString
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        
        //Crear variables y asignar valor desde el formateador (f)
        NSNumber *Peso = [f numberFromString:self.txtPeso.text];
        NSNumber *Estatura = [f numberFromString:self.txtEstatura.text];
        
        float IMC = 10000 * (Peso.floatValue / (Estatura.floatValue * Estatura.floatValue));
        
        
        PFObject *objTemp = [PFObject objectWithClassName:@"MedicalBariatric"];
        objTemp[@"Nombre"] = self.txtNombre.text;
        objTemp[@"FechaNacimiento"] = self.txtFechaNac.text;
        objTemp[@"Peso"] = Peso;
        objTemp[@"Estatura"] = Estatura;
        objTemp[@"IMC"] = [NSNumber numberWithFloat:IMC];
        objTemp[@"Movil"] = self.txtMovil.text;
        objTemp[@"Mail"] = self.txtMail.text;
        
        
        
        
        if ([objTemp saveInBackground]){
            self.txtNombre.text = nil;
            self.txtFechaNac.text = nil;
            self.txtPeso.text = nil;
            self.txtEstatura.text = nil;
            self.txtMovil.text = nil;
            self.txtMail.text = nil;
        }
        else
        {
            NSLog(@"Error Guardar");
        }
        
        
        
       [self performSegueWithIdentifier:@"EditToMenu" sender:self];
        
    }

}

@end
