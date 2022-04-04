//
//  HomeViewController.swift
//  Uallet
//
//  Created by Sol Santillan on 29/03/2022.
//
import UIKit

class HomeViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cerrar Sesión", style: .plain, target: self, action: #selector(logout))
        
        // Do any additional setup after loading the view.
    }
    
    @objc func logout() {
        //Lo siguiente deja cerrar sesión aunque haya anteriormente guardado mis datos de login.
        //UserDefaults: deja guardar pequeñas cantidades de dato en memoria. MINI database
        UserDefaults.standard.set(false, forKey: "logueado")
        dismiss(animated: true)
    }
    
    func cerrar() {
        dismiss(animated: true) {
            print("cerré la ventana")
        }
    }

}

