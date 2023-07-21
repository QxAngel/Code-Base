import UIKit

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Verificar si ya se mostró la alerta
        if !UserDefaults.standard.bool(forKey: "alertShown") {
            // Mostrar la alerta solo si no se ha mostrado antes
            showCustomAlert()
            UserDefaults.standard.set(true, forKey: "alertShown")
        }
    }
    
    func showCustomAlert() {
        let alertController = UIAlertController(title: "Hi", message: "tu texto principal aqui", preferredStyle: .alert)
        
        // Cambiar el color del texto de la alerta a rojo
        alertController.view.tintColor = UIColor.red
        
        // Botón "Link" que abre el perfil de Instagram
        let supportMeAction = UIAlertAction(title: "Link", style: .default) { _ in
            self.openInstagramProfile()
        }
        // Cambiar el color del botón "Link" a azul
        supportMeAction.setValue(UIColor.blue, forKey: "titleTextColor")
        alertController.addAction(supportMeAction)
        
        // Botón "Done" para cerrar la alerta
        let doneAction = UIAlertAction(title: "Done", style: .cancel, handler: nil)
        // Cambiar el color del botón "Done" a verde
        doneAction.setValue(UIColor.green, forKey: "titleTextColor")
        alertController.addAction(doneAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func openInstagramProfile() {
        if let instagramURL = URL(string: "https://www.instagram.com/tu_perfil") {
            if UIApplication.shared.canOpenURL(instagramURL) {
                UIApplication.shared.open(instagramURL, options: [:], completionHandler: nil)
            }
        }
    }
}
