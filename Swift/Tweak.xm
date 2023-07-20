#import <UIKit/UIKit.h>

%hook UIViewController

- (void)viewDidAppear:(BOOL)animated {
    %orig;

    // Mostrar la alerta solo la primera vez que se carga la vista
    if (![self respondsToSelector:@selector(presentedViewController)]) {
        [self showAlert];
    }
}

%new
- (void)showAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Hi" // Titulo
                                                                             message:@"Tu Texto Aqui" // Texto Principal
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *supportAction = [UIAlertAction actionWithTitle:@"Support Me"
                                                            style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * _Nonnull action) {
                                                              [self openInstagramProfile];
                                                          }];
    
    UIAlertAction *doneAction = [UIAlertAction actionWithTitle:@"Done"
                                                         style:UIAlertActionStyleDefault
                                                       handler:^(UIAlertAction * _Nonnull action) {
                                                           [alertController dismissViewControllerAnimated:YES completion:nil];
                                                       }];
    
    [alertController addAction:supportAction];
    [alertController addAction:doneAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

%new
- (void)openInstagramProfile {
    NSURL *instagramURL = [NSURL URLWithString:@"https://www.instagram.com/tunombre/"]; // Remplaza El Link Con El De Tu Perfil
    if ([[UIApplication sharedApplication] canOpenURL:instagramURL]) {
        [[UIApplication sharedApplication] openURL:instagramURL options:@{} completionHandler:nil];
    }
}

%end
