//
//  WalletsViewController.swift
//  Uallet
//
//  Created by Sol Santillan on 29/03/2022.
//

import UIKit

class WalletsViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem (barButtonSystemItem: .add, target: self, action: #selector(addWallet))
        //target: dónde está la función que quiero que se ejecute. cuál es el objeto, destino del elemento?
        // action: el #selector es para usar una función que pasamos por parámetros de objectiveC

        // Do any additional setup after loading the view.
    }

    @objc func addWallet(){
        let AddVC = WalletAddViewController()
        present(UINavigationController(rootViewController: AddVC), animated: true)
    }

}
