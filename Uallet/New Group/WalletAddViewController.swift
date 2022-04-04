//
//  WalletAddViewController.swift
//  Uallet
//
//  Created by Sol Santillan on 01/04/2022.
//

import UIKit

class WalletAddViewController: UIViewController {

    @IBOutlet weak var txtWalletName: UITextField!
    @IBOutlet weak var txtWalletMonto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Add Wallet"
        // Do any additional setup after loading the view.
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem (title: "Cancelar", style: .plain, target: self, action: #selector(cancelar))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem (title: "Agregar", style: .done, target: self, action: #selector(cargarWallet))
    }
    
    @objc func cancelar (){
        //función que vuelva a la home
        dismiss(animated: true)
    }
    
    @objc func cargarWallet(){
        //función que vuelva a la home
        dismiss(animated: true)
    }
}
