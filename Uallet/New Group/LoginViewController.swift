import UIKit

//El Text Field Delegate es un protocolo. Recordemos que nosotros decidimos si lo implementamos o no.
class LoginViewController: UIViewController, UITextFieldDelegate {

    //Desde un Tap Gesture Recognizer en toda la view creamos esta función.
    
    @IBOutlet weak var txtFldUsuario: UITextField!
    @IBOutlet weak var txtFldContraseña: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "logueado"){
            irAHome(animado: false)
        }
    }
    
    @IBAction func tocoFondo(_ sender: Any) {
        txtFldUsuario.resignFirstResponder()
        txtFldContraseña.resignFirstResponder()
    }
    
    
    //Función que generamos a partir de haber puesto el protocolo.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true //Sí implementamos el protocolo.
    }
    
    
    //Arroja un alert cuando el usuario inicia sesión
    func irAHome(animado isAnimated: Bool = true ) {
        let tabVC = MainTabViewController()
        tabVC.modalTransitionStyle = .coverVertical
        tabVC.modalPresentationStyle = .fullScreen
        present (tabVC, animated: isAnimated)
        
        let defaults = UserDefaults.standard
        defaults.set(true, forKey: "logueado")
    }
    
    @IBAction func login(_ sender: Any) {
        
        API.login(txtFldUsuario.text!, txtFldContraseña.text!) { logueado in
            if logueado {
                irAHome()
            } else {
                let alerta = UIAlertController(title: "Log in",
                                               message: "Error al identificar",
                                               preferredStyle: .alert)
                
                let botonOk = UIAlertAction(title: "Aceptar",
                                            style: .default)
                
                
                alerta.addAction(botonOk)
                present(alerta, animated: true)
            }
        }
    }
    
    
}

