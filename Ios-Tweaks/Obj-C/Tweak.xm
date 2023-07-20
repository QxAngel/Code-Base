#import <UIKit/UIKit.h>

%hook UIViewController

- (void)viewDidAppear:(BOOL)animated {
    %orig; // Llama a la implementación original del método
    
    // Verificar si la alerta ya ha sido mostrada previamente
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL alertShown = [defaults boolForKey:@"AlertShown"];
    
    if (!alertShown) {
        // Crear la alerta
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"tu texto principal aqui"
                                                                                 message:nil
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        
        // Cambiar el color del texto principal a rojo
        NSMutableAttributedString *attributedTitle = [[NSMutableAttributedString alloc] initWithString:alertController.title];
        [attributedTitle addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, alertController.title.length)];
        [alertController setValue:attributedTitle forKey:@"attributedTitle"];
        
        // Agregar acción "link"
        UIAlertAction *followAction = [UIAlertAction actionWithTitle:@"link"
                                                               style:UIAlertActionStyleDefault
                                                             handler:^(UIAlertAction * action) {
                                                                 // Agregar el código para abrir el perfil de Instagram
                                                                 // Por ejemplo, utilizando UIApplication para abrir el enlace
                                                                 NSURL *instagramURL = [NSURL URLWithString:@"https://www.instagram.com/tu_perfil"];
                                                                 [[UIApplication sharedApplication] openURL:instagramURL options:@{} completionHandler:nil];
                                                             }];
        
        // Cambiar el color del texto del link a azul
        [followAction setValue:[UIColor blueColor] forKey:@"titleTextColor"];
        
        // Agregar acción "Done"
        UIAlertAction *doneAction = [UIAlertAction actionWithTitle:@"Done"
                                                             style:UIAlertActionStyleDefault
                                                           handler:nil];
        
        // Cambiar el color del texto de "Done" a verde
        [doneAction setValue:[UIColor greenColor] forKey:@"titleTextColor"];
        
        // Agregar las acciones a la alerta
        [alertController addAction:followAction];
        [alertController addAction:doneAction];
        
        // Mostrar la alerta
        [self presentViewController:alertController animated:YES completion:nil];
        
        // Guardar el indicador para que la alerta no se muestre nuevamente
        [defaults setBool:YES forKey:@"AlertShown"];
        [defaults synchronize];
    }
}

%end
