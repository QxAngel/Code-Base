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
        let alertController = UIAlertController(title: "Hi", message: "Tu Texto Aqui", preferredStyle: .alert)
        
        // Cambiar el color del texto de la alerta a rojo
        alertController.view.tintColor = UIColor.red
        
        // Botón "Link" que abre el perfil de Instagram
        let supportMeAction = UIAlertAction(title: "Link", style: .default) { _ in
            // Agregar aquí la lógica para abrir el perfil de Instagram
            // Puedes usar UIApplication.shared.open() para abrir una URL externa
            // por ejemplo, UIApplication.shared.open(URL(string: "https://www.instagram.com/tu_perfil_de_instagram")!)
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
}
