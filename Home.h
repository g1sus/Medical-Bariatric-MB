//
//  Home.h
//  MB
//
//  Created by Jesus Antonio Hernandez Mendez on 01/04/15.
//  Copyright (c) 2015 BTICs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Home : UIViewController

@property (strong, nonatomic) IBOutlet UIBarButtonItem *btnMenu;

//Action
- (IBAction)btnEdit:(id)sender;

//Labels
@property (strong, nonatomic) IBOutlet UITextField *lblNombre;
@property (strong, nonatomic) IBOutlet UIImageView *lblImgPicture;
@property (strong, nonatomic) IBOutlet UILabel *lblEstatura;
@property (strong, nonatomic) IBOutlet UILabel *lblPeso;
@property (strong, nonatomic) IBOutlet UILabel *lblPesoIdeal;
@property (strong, nonatomic) IBOutlet UILabel *lblIMC;


@end
