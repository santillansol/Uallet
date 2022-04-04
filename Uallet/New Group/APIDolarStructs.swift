//
//  APIDolarStructs.swift
//  Uallet
//
//  Created by Sol Santillan on 04/04/2022.
//

import Foundation
import Alamofire

struct APIDolarRespuesta: Codable {
    var compra : String
    var venta : String
    var fecha : String
}

struct Welcome: Codable {
    let oficial, blue, oficialEuro, blueEuro: OficialEuro
    let lastUpdate: String

    enum CodingKeys: String, CodingKey {
        case oficial, blue
        case oficialEuro = " oficial_euro"
        case blueEuro = "blue_euro"
        case lastUpdate = "last_update"
    }
}

// MARK: - OficialEuro
struct OficialEuro: Codable {
    let valueAvg, valueSell, valueBuy: Double

    enum CodingKeys: String, CodingKey {
        case valueAvg = "value_avg"
        case valueSell = "value_sell"
        case valueBuy = "value_buy"
    }
}
