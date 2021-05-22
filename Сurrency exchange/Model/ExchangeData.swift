//
//  ExchangeData.swift
//  Сurrency exchange
//
//  Created by Сергей Мартынов on 12.05.2021.
//

import Foundation

struct ExchangeData: Codable {
    var Valute: [String: Rates]
}

struct Rates: Codable {
    var CharCode: String
    var Name:String
    var Value: Double
    var Nominal: Int
}
