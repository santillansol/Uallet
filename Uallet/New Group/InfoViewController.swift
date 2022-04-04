//
//  InfoViewController.swift
//  Uallet
//
//  Created by Sol Santillan on 29/03/2022.
//
import UIKit
import Alamofire


class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dolarArgentina()
    }
    
    //el of dentro del responsedecodable es un parámetro
    func dolarArgentina(){
        AF.request("http://api-dolar-argentina.herokuapp.com/api/dolaroficial").responseDecodable(of: APIDolarRespuesta.self){response in
            
            if let value = response.value {
                print (value.compra, value.venta, value.fecha)
            }
        }
    }
    
    
    
    /*
    //https://api-dolar-argentina.herokuapp.com/api/dolaroficial
    func LeerCotizacion(){
        AF.request("https://api.coindesk.com/v1/bpi/currentprice.json").responseDecodable(of: APIDolarRespuesta.self){
            response in
            
            if let value = response.value {
                print (value.disclaimer) //esto hace que se decodifique punto por punto
            }
        }
        
    }
     */
    
}
