//
//  MainTabViewController.swift
//  Uallet
//
//  Created by Sol Santillan on 30/03/2022.
//
/*
import UIKit

//TabBarController hereda de ViewController.
class MainTabViewController: UITabBarController {

    //Esto va antes que ViewDidLoad
    //Nosotros cargamos la vista, por eso es loadview
    override func loadView() {
        //Al implementar este metodo sobreescribimos el XIB
        
        let homeVC = HomeViewController()
        let homeIcono = UIImage(systemName: "house.fill")
        let homeNavigationVC = UINavigationController(rootViewController: homeVC)
        homeNavigationVC.tabBarItem = UITabBarItem(title: "Home", image: homeIcono, selectedImage: nil)
        
        let dashboardVC = DashboardsViewController()
        dashboardVC.title = "Dashboard"
        let dashboardNavigationVC = UINavigationController(rootViewController: dashboardVC)
        let dashboardIcon = UIImage(systemName: "chart.pie.fill")
        dashboardNavigationVC.tabBarItem = UITabBarItem(title: "Dashboard", image: dashboardIcon, selectedImage: nil)
        
        let walletVC = WalletsViewController()
        walletVC.title = "Wallet"
        let walletNavigationVC = UINavigationController(rootViewController: walletVC)
        walletNavigationVC.tabBarItem = UITabBarItem (title: "Wallet", image: nil, selectedImage: nil)

        let infoVC = InfoViewController()
        infoVC.title = "Informacion"
        let infoNavigationVC = UINavigationController(rootViewController: infoVC)
        infoNavigationVC.tabBarItem = UITabBarItem (title: "Informacion", image: nil, selectedImage: nil)
        
        //array de view controllers
        self.viewControllers = [homeNavigationVC, dashboardNavigationVC, walletVC, infoVC]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
*/
import UIKit

class MainTabViewController: UITabBarController {
    
    override func loadView() {
        // Al implementar este método, sobreescribimos el XIB
        super.loadView()
        
        self.tabBar.tintColor = UIColor(named: "TintaTabs")
//        self.tabBar.isTranslucent = false
//        self.tabBar.backgroundColor = UIColor.white
        
        // SF Symbols
        
        let homeVC = HomeViewController()
        let homeIcono = UIImage(systemName: "house.circle")
        let homeNavigationVC = UINavigationController(rootViewController: homeVC)
        homeNavigationVC.tabBarItem = UITabBarItem(title: "Home", image: homeIcono, selectedImage: nil) //acá tenemos "Home" pero también podemos poner self.title = "Home" desde el ViewDidLoad() del archivo swift de HomeViewController.
        
        let dashboardVC = DashboardViewController()
        dashboardVC.title = "Dashboard"
        let dashboardNavigationVC = UINavigationController(rootViewController: dashboardVC)
        let dashboardIcon = UIImage(systemName: "chart.line.uptrend.xyaxis.circle")
        dashboardNavigationVC.tabBarItem = UITabBarItem(title: "Dashboard", image: dashboardIcon, selectedImage: nil)
        
        let walletVC = WalletsViewController()
        walletVC.title = "Wallet"
        let walletNavigationVC = UINavigationController(rootViewController: walletVC)
        let walletIcon = UIImage (systemName: "dollarsign.circle")
        walletNavigationVC.tabBarItem = UITabBarItem (title: "Wallet", image: walletIcon, selectedImage: nil)

        let infoVC = InfoViewController()
        infoVC.title = "Informacion"
        let infoNavigationVC = UINavigationController(rootViewController: infoVC)
        let infoIcon = UIImage (systemName : "info.circle")
        infoNavigationVC.tabBarItem = UITabBarItem (title: "Informacion", image: infoIcon, selectedImage: nil)

        self.viewControllers = [homeNavigationVC, dashboardNavigationVC, walletNavigationVC, infoNavigationVC]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
