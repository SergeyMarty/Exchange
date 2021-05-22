//
//  ExchangeDataModel.swift
//  Сurrency exchange
//
//  Created by Сергей Мартынов on 22.05.2021.
//

import Foundation

struct ExchangeDataModel {
    
    let url = "https://www.cbr-xml-daily.ru/daily_json.js"
    var exchangeData = [Rates]()
    
    mutating func loadData() {
        if let url = URL(string: url) {
                if let data = try? Data(contentsOf: url) {
                    parse(json: data)
            }
        }
    }
    
    mutating func parse(json: Data) {
        let decoder = JSONDecoder()
        if let abc = try? decoder.decode(ExchangeData.self, from: json) {
            for(_, rates) in abc.Valute {
                let model = Rates(CharCode: rates.CharCode, Name: rates.Name, Value: rates.Value, Nominal: rates.Nominal)
                    exchangeData.append(model)
            }
        }
    }
    
}
